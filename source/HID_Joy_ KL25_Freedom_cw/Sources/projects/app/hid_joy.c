/******************************************************************************
 *
 * Freescale Semiconductor Inc.
 * (c) Copyright 2004-2012 Freescale Semiconductor, Inc.
 * ALL RIGHTS RESERVED.
 *
 **************************************************************************//*!
 *
 * @file hid_joy.c
 *
 * @author
 *
 * @version
 *
 * @date 
 *
 * @brief The file contains the main code for the joystick demo
 *
 *****************************************************************************/


#include "derivative.h"     /* include peripheral declarations */
#include "types.h"          /* User Defined Data Types */
#include "common.h"
#include "freedom_gpio.h"
#include "hal_dev_mma8451.h"
#include "usb_hid.h"        /* USB HID Class Header File */
#include "usb_descriptor.h"
#if HIGH_SPEED_DEVICE
//#include "usbhs_common.h"
//#include "usbhs_host_device.h"
#endif
#if (defined _MCF51MM256_H) || (defined _MCF51JE256_H)
#include "exceptions.h"
#endif

/* skip the inclusion in dependency state */
#ifndef __NO_SETJMP
   #include <stdio.h>
#endif
#include <stdlib.h>
#include <string.h>

#include "hid_joy.h"
#include "adc.h"
#include "tsidrv.h"

#define USE_ACCEROMETER
#define USE_POTENTIOMETER

#define THROTTLE_THRESHOLD    1
#define XY_THRESHOLD          4

/****************************************************************************
 ************************** Macro definitions *******************************
 ***************************************************************************/
/* Class specific requests. */
#define HIDRQ_GET_REPORT    0x1
#define HIDRQ_GET_IDLE      0x2
#define HIDRQ_GET_PROTOCOL  0x3

#define HIDRQ_SET_REPORT    0x9
#define HIDRQ_SET_IDLE      0xa
#define HIDRQ_SET_PROTOCOL  0xb

/* Descriptor type values for HID descriptors. */
#define GHIDD_HID_DESCRIPTOR      0x21
#define GHIDD_REPORT_DESCRIPTOR   0x22
#define GHIDD_PHYSICAL_DESCRIPTOR 0x23

// Get the corresponding fields of the HID joystic report.
#define DIR_REP_THROTTLE(h) ((h)[0])
#define DIR_REP_BUTTONS(h)  ((h)[3])      /* upper 4 bits */
#define DIR_REP_HAT(h)      ((h)[3])
#define DIR_REP_X(h)	      ((h)[1])
#define DIR_REP_Y(h)        ((h)[2])
#define GET_RPT_IN_HAT(h)                 (DIR_REP_HAT(h) & 0x0f)

// Change the corresponding fields of the HID joystic report.
#define CHANGE_RPT_IN_X(h,x)              DIR_REP_X(h) = x
#define CHANGE_RPT_IN_Y(h,y)              DIR_REP_Y(h) = y
#define CHANGE_RPT_IN_THROTTLE(h,thrtl)   DIR_REP_THROTTLE(h) = thrtl
#define CHANGE_RPT_IN_HAT(h,hat)          DIR_REP_HAT(h) = (DIR_REP_HAT(h) & 0xf0) | (hat & 0x0f)

// Set the corresponding fields of the HID joystic report.
#define SET_RPT_IN_BUTTONS(h, btn)        DIR_REP_BUTTONS(h) |= (1<<(btn+3))
// Clear the corresponding fields of the HID joystic report.
#define CLEAR_RPT_IN_BUTTONS(h, btn)      DIR_REP_BUTTONS(h) &= ~(1<<(btn+3))

#define  REQ_DATA_SIZE     (1)


/****************************************************************************
 ************************** Function predefinitions. ************************
 ***************************************************************************/
#define busy_wait()

void Watchdog_Reset(void);

void joy_got_reset(void);
static uint_8 joy_scan_matrix(void);
void joy_start_mS_timer(uint_16 delay);
void hid_joy_task(void);

/* functions interfacing HID class driver */
void hid_joy_init(void);

static void Emulate_Joy_WithButton(void);
static void USB_App_Callback(
    uint_8 controller_ID,
    uint_8 event_type,
    void* val);
static uint_8 USB_App_Param_Callback(
    uint_8 request,
    uint_16 value,
    uint_8_ptr* data,
    USB_PACKET_SIZE* size);

/* ISRs */
void TPM1_ISR(void);
void TPMOvrFlow_ISR(void);
void TPMCHnEvent_ISR(void);

/****************************************************************************
 ************************** Global variables ********************************
 ***************************************************************************/
uint_8  last_state;
extern uint8 AbsolutePercentegePosition;	/* TSI position */

/****************************************************************************
 ************************** Module variables ********************************
 ***************************************************************************/
static signed char hid_joy_report_in[HID_JOY_REPORT_IN_SIZE] = 
{
  0
};
  
static volatile uint_8 xy_state_changed = FALSE;
static volatile uint_8 hat_state_changed = FALSE;

#ifdef USE_ACCEROMETER
static unsigned char x = 0,y=0,throttle = 127,hat = -1;
#else
static signed char x = -127,y=-127,throttle = -127, hat = -1,south=TRUE,east =TRUE,accer=TRUE;
#endif


static boolean joy_init=FALSE;            /* Application Init Flag */
static uint_8 g_app_request_params[2];      /* for get/set idle and protocol
                                               requests*/
/****************************************************************************
 ************************** Function definitions ****************************
 ***************************************************************************/

void Watchdog_Reset(void)
{
#ifdef MCU_MKL25Z4
	(void)(RCM_SRS0 |= RCM_SRS0_WDOG_MASK);
#else
	(void)(WDOG_REFRESH = 0xA602, WDOG_REFRESH = 0xB480);
#endif
}

/*****************************************************************************
 * USB callback function. Is called by the USB driver if an USB reset event
 * occuers.
 ****************************************************************************/
void joy_got_reset(void)
{
  /* do some initialisation. */
  DIR_REP_THROTTLE(hid_joy_report_in)=0;
  DIR_REP_BUTTONS(hid_joy_report_in)=0;
  DIR_REP_X(hid_joy_report_in)=0;
  DIR_REP_Y(hid_joy_report_in)=0;
}

/*****************************************************************************
 * This function will move the mouse pointer from left to right and back in
 * an endless loop.
 ****************************************************************************/
 
/****************************************************************************
 ************************** Function definitions ****************************
 ***************************************************************************/
/*****************************************************************************
 * Scan the key matrix, and add a scan code for each pressed key to the 
 * outpout report.
 ****************************************************************************/
static uint_8 joy_scan_matrix(void)
{
  uint_8 r=0;

  TSI_SliderRead();	/* scan TSI to see if any touch occurs */

  if (SW1_ACTIVE())
  {
    r = BIT0;
    SET_RPT_IN_BUTTONS(hid_joy_report_in,JOY_BUTTON_1);    /* button 1 pressed */
  } else {
    r &= ~BIT0;
    CLEAR_RPT_IN_BUTTONS(hid_joy_report_in,JOY_BUTTON_1);  /* button 1 released */
  }
  if (SW2_ACTIVE())
  {
    r |=BIT1;
    SET_RPT_IN_BUTTONS(hid_joy_report_in,JOY_BUTTON_2);
  } else {
    r &= ~BIT1; 
    CLEAR_RPT_IN_BUTTONS(hid_joy_report_in,JOY_BUTTON_2);  
  }
  if (SW3_ACTIVE())
  {
    r |=BIT2;
    SET_RPT_IN_BUTTONS(hid_joy_report_in,JOY_BUTTON_3);
  } else {
    r &= ~BIT2; 
    CLEAR_RPT_IN_BUTTONS(hid_joy_report_in,JOY_BUTTON_3);  
  }  
  if (SW4_ACTIVE())
  {
    r |=BIT3;
    SET_RPT_IN_BUTTONS(hid_joy_report_in,JOY_BUTTON_4);
  } else {
    r &= ~BIT3; 
    CLEAR_RPT_IN_BUTTONS(hid_joy_report_in,JOY_BUTTON_4);  
  }  

  return(r);
}


int hid_joy(void)
{
 
  /* Initialize the HID driver
   */
  hid_joy_init();
  
  while(TRUE)
  {
  	Watchdog_Reset();

 //   TSI_SliderRead();	/* scan TSI to see if any touch occurs */

  	/* Call the application task */
  	hid_joy_task();
  	
  } 
  return(0);
}


/*
 * FUNCTION NAME: start_mS_timer:
 * DESCRIPTION:   to start a timer in milliseconds based on 1ms timer using external 8MHz clock. 
 *                
 *                If MOD register value is M, then it will count M+1 prescaler clocks for free running counter.
 *                
 * INPUT PARAMETER:
 *    delay  -     the desired delay in millisconds
 * OUTPUT PARAMETER:
 * RETURN:
 */
void joy_start_mS_timer(uint_16 delay)
{  
	 OSC0_CR |= OSC_CR_ERCLKEN_MASK;	/* enable OSCERCLK output */
	 SIM_SOPT2 |= SIM_SOPT2_TPMSRC(2) ;	/* OSCERCLK clock source for TPM */
	 SIM_SCGC6 |= SIM_SCGC6_TPM1_MASK; /* enable clock to ADC*/
	 enable_irq(INT_TPM1-16); /* enable TPM1 interrupt */
	 
	 TPM1_MOD = (delay*125);
	 TPM1_C0V = (delay*125);
	 TPM1_CNT = 0;
	 TPM1_SC |= TPM_SC_TOIE_MASK;       /* enable the timer overflow interrupt */
	 TPM1_C0SC |= TPM_CnSC_CHIE_MASK;
	 TPM1_SC &= ~TPM_SC_CPWMS_MASK;
	 TPM1_C0SC |= TPM_CnSC_MSA_MASK;
	 TPM1_C0SC |= TPM_CnSC_ELSA_MASK;    /* toggle output */ 
	 TPM1_SC &= ~TPM_SC_PS_MASK;        /* prescalor 64 */
	 TPM1_SC |= TPM_SC_PS(6);
	 TPM1_SC |= TPM_SC_CMOD(1);		  /* LPTPM counter incremetns on every LPTPM counter clock */
}


void TPM1_ISR(void)
{
	if(TPM1_STATUS & TPM_STATUS_TOF_MASK)
	{
		TPMOvrFlow_ISR();
	}
	if(TPM1_STATUS & TPM_STATUS_CH0F_MASK)
	{
		TPMCHnEvent_ISR();
	}
}

void  TPMOvrFlow_ISR(void) 
{
#ifndef USE_POTENTIOMETER 
  uint_8 hat;
#endif
  
  /* Clear interrupt flag by writing 1 (W1C) */
  TPM1_STATUS = TPM_STATUS_TOF_MASK;
  
 #ifndef USE_POTENTIOMETER 
  hat = GET_RPT_IN_HAT(hid_joy_report_in);

  hat++;
  if(hat>3) {     /* hat should be within the range of [LOGICAL MINIMUM,MAXIMUM] */
    hat = 0;
  }
   /* Change the Hat switch */
  CHANGE_RPT_IN_HAT(hid_joy_report_in,hat);     
  hat_state_changed = TRUE;
 #endif
}

void TPMCHnEvent_ISR(void)
{ 
    signed short delta;
    
   /* Clear interrupt flag by writing 1 (W1C) */
   TPM1_STATUS = TPM_STATUS_CH0F_MASK;
 
 #ifdef  USE_ACCEROMETER  
   /* Get X value with scaled result. 
    * 
    */
   AdcResult = hal_dev_mma8451_read_reg(0x01) << 8; 
   AdcResult |= hal_dev_mma8451_read_reg(0x02);
   AdcResult >>= 6; 

   delta =  ((AdcResult)-x);
   if( ((delta) >= XY_THRESHOLD) ||
       ((delta) < -XY_THRESHOLD)
    ) 
    {
      delta += DIR_REP_X(hid_joy_report_in);
     if(delta < -127){
        delta = -127;
     } else if(delta > 127) {
        delta = 127;
     }
    CHANGE_RPT_IN_X(hid_joy_report_in,delta);
     xy_state_changed = TRUE;
    }   

   /* Get Y value with scaled result.
    */
   AdcResult = hal_dev_mma8451_read_reg(0x03) << 8; 
   AdcResult |= hal_dev_mma8451_read_reg(0x04);
   AdcResult >>= 6;

   delta =  (y -(AdcResult));
   if( ((delta) >= XY_THRESHOLD) ||
       ((delta) < -XY_THRESHOLD)
    ) 
   {
      delta += DIR_REP_Y(hid_joy_report_in);
     if(delta < -127){
        delta = -127;
     } else if(delta > 127) {
        delta = 127;
     }
    CHANGE_RPT_IN_Y(hid_joy_report_in,delta);
     xy_state_changed = TRUE;
   }

   
   /* Get throttle value with scaled result.
    * throttle is corresponding Z output of accerometer.
    */
   AdcResult = hal_dev_mma8451_read_reg(0x05) << 8; 
   AdcResult |= hal_dev_mma8451_read_reg(0x06); 
   AdcResult >>= 6;

   delta =  ((AdcResult) - throttle);
   if( ((delta) >= THROTTLE_THRESHOLD) ||
       ((delta) < -THROTTLE_THRESHOLD)
    ) 
   {
      delta += DIR_REP_THROTTLE(hid_joy_report_in);    
     if(delta < -127){
        delta = -127;
     } else if(delta > 127) {
        delta = 127;
     }
  
    CHANGE_RPT_IN_THROTTLE(hid_joy_report_in,delta);
    xy_state_changed = TRUE;
   }   

 #else 
   if (x >= 127 )
   {
       south = FALSE; 
   } 
 
   if(y >= 127) {
       east = FALSE;
   } 
   if(throttle >= 127) {
       accer = FALSE;
   }
    if( x < -127) {
      south = TRUE;
   } 
    
   if( y < -127) {
      east = TRUE;
   }
   if(throttle < -127) {
      accer = TRUE;
   }
   if( south ){
      x++;
   } else {
      x--;
   }
   if( east ){
      y++;
   } else {
      y--;
   }
   if( accer ){
      throttle++;
   } else {
      throttle--;
   }  
   CHANGE_RPT_IN_X(hid_joy_report_in,x);
   CHANGE_RPT_IN_Y(hid_joy_report_in,y);
   CHANGE_RPT_IN_THROTTLE(hid_joy_report_in,throttle);
   
   xy_state_changed = TRUE;
  #endif
  #ifdef USE_POTENTIOMETER
   /* Get hat value
    */
   ADC_Cvt(ADC_CH_POT);
   hat = (AdcResult>>10);	// keep 4 bits
   if( hat != (GET_RPT_IN_HAT(hid_joy_report_in))) {
    CHANGE_RPT_IN_HAT(hid_joy_report_in,hat);  
    hat_state_changed = TRUE;
  }  
  #endif   
}

void hid_joy_init(void)
{
	uint_8 error;
	
	  /* Per requirement of Windows HID-compliant game controller,
	   * Hat switch controls must report a Null value when not pressed. 
	   * When pressed, the logical minimum value represents north, 
	   * and increasing logical values represent directions equally spaced clockwise around the compass
	   */
	 
	  CHANGE_RPT_IN_HAT(hid_joy_report_in,-1);  
	  DIR_REP_X(hid_joy_report_in) = 0;
	  DIR_REP_Y(hid_joy_report_in) = 0;
	  DIR_REP_THROTTLE(hid_joy_report_in) = 127;
	  
	  
	   DisableInterrupts;
	   #if (defined _MCF51MM256_H) || (defined _MCF51JE256_H)
	    usb_int_dis();
	   #endif	

	   /* Initialize the USB drivers */
	   
	   error = USB_Class_HID_Init(CONTROLLER_ID, USB_App_Callback, NULL,
	                           USB_App_Param_Callback);
	   EnableInterrupts;
	   if(error != USB_OK)
	   {
		   /* Process error */
		   /* NOTE: just leave it as empty as Game Controller and HID
		    * will recognize the error.
		    */
	   }
	   #if (defined _MCF51MM256_H) || (defined _MCF51JE256_H)
	    usb_int_en();
	   #endif		

#ifdef USE_ACCEROMETER  
	   /* Initialize ADC. */
	   ADC_Init(); 
	   
	   /* Get initial X value with scaled result. 
		* AdcResult of 0xFFF --> X of 127, and 0 --> X of -127 */
	   AdcResult = hal_dev_mma8451_read_reg(0x01) << 8; 
	   AdcResult |= hal_dev_mma8451_read_reg(0x02);   
	   x = AdcResult;
	   
	   /* Get initial Y value with scaled result.
		*/
	   AdcResult = hal_dev_mma8451_read_reg(0x03) << 8; 
	   AdcResult |= hal_dev_mma8451_read_reg(0x04);
	   y = AdcResult; 
	   
	   /* Get initial throttle value with scaled result.
		* throttle is corresponding Z output of accerometer.
		*/
	   AdcResult = hal_dev_mma8451_read_reg(0x05) << 8; 
	   AdcResult |= hal_dev_mma8451_read_reg(0x06); 
	   throttle = AdcResult;  
	   /*
		* Get hat value.
		*/
	   ADC_Cvt(ADC_CH_POT);
	   hat = (AdcResult>>8);
	#endif 
	   
	  /* Initialize the timer.
	   */
	  joy_start_mS_timer(200);	    
}

/******************************************************************************
 *
 *   @name        TestApp_Task
 *
 *   @brief       Application task function. It is called from the main loop
 *
 *   @param       None
 *
 *   @return      None
 *
 *****************************************************************************
 * Application task function. It is called from the main loop
 *****************************************************************************/
void hid_joy_task(void)
{
	/* call the periodic task function */
	USB_Class_HID_Periodic_Task();

	if(joy_init) /*check whether enumeration is
                  complete or not */
	{
		/* run the button emulation code */
		Emulate_Joy_WithButton();
	}
}

/******************************************************************************
 *
 *    @name        USB_App_Callback
 *
 *    @brief       This function handles the callback
 *
 *    @param       controller_ID    : Controller ID
 *    @param       event_type       : value of the event
 *    @param       val              : gives the configuration value
 *
 *    @return      None
 *
 *****************************************************************************
 * This function is called from the class layer whenever reset occurs or enum
 * is complete. after the enum is complete this function sets a variable so
 * that the application can start
 *****************************************************************************/
void USB_App_Callback(
      uint_8 controller_ID,/* [IN] Controller ID */
      uint_8 event_type,   /* [IN] value of the event*/
      void* val            /* [IN] gives the configuration value*/
)
{
    UNUSED (controller_ID)
    UNUSED (val)
    if((event_type == USB_APP_BUS_RESET) || (event_type == USB_APP_CONFIG_CHANGED))
    {
        joy_init=FALSE;
    }
    else if(event_type == USB_APP_ENUM_COMPLETE)
    {   /* if enumeration is complete set joy_init
           so that application can start */
        joy_init=TRUE;
    }

    return;
}

/******************************************************************************
 *
 *    @name        USB_App_Param_Callback
 *
 *    @brief       This function handles callbacks for USB HID Class request
 *
 *    @param       request  : request type
 *    @param       value    : give report type and id
 *    @param       data     : pointer to the data
 *    @param       size     : size of the transfer
 *
 *    @return      status
 *                 USB_OK  :  if successful
 *                 else return error
 *
 *****************************************************************************
 * This function is called whenever a HID class request is received. This
 * function handles these class requests
 *****************************************************************************/
uint_8 USB_App_Param_Callback(
      uint_8 request,        /* [IN] request type */
      uint_16 value,         /* [IN] report type and ID */
      uint_8_ptr* data,      /* [OUT] pointer to the data */
      USB_PACKET_SIZE* size  /* [OUT] size of the transfer */
)
{
    uint_8 status = USB_OK;
    uint_8 direction =  (uint_8)((request & USB_HID_REQUEST_DIR_MASK) >>3);
    uint_8 index = (uint_8)((request - 2) & USB_HID_REQUEST_TYPE_MASK);
                                              /* index == 0 for get/set idle,
                                            index == 1 for get/set protocol */

    *size = 0;
    /* handle the class request */
    switch(request)
    {
        case USB_HID_GET_REPORT_REQUEST :
            *data = &hid_joy_report_in[0]; /* point to the report to send */
            *size = HID_JOY_REPORT_IN_SIZE; /* report size */
            break;

        case USB_HID_SET_REPORT_REQUEST :
            for(index = 0; index < HID_JOY_REPORT_IN_SIZE ; index++)
            {   /* copy the report sent by the host */
            	hid_joy_report_in[index] = *(*data + index);
            }
            break;

        case USB_HID_GET_IDLE_REQUEST :
            /* point to the current idle rate */
            *data = &g_app_request_params[index];
            *size = REQ_DATA_SIZE;
            break;

        case USB_HID_SET_IDLE_REQUEST :
            /* set the idle rate sent by the host */
            g_app_request_params[index] =(uint_8)((value & MSB_MASK) >>
                                                  HIGH_BYTE_SHIFT);
            break;

        case USB_HID_GET_PROTOCOL_REQUEST :
            /* point to the current protocol code
               0 = Boot Protocol
               1 = Report Protocol*/
            *data = &g_app_request_params[index];
            *size = REQ_DATA_SIZE;
            break;

        case USB_HID_SET_PROTOCOL_REQUEST :
              /* set the protocol sent by the host
                 0 = Boot Protocol
                 1 = Report Protocol*/
              g_app_request_params[index] = (uint_8)(value);
              break;
    }

    return status;
}


/*****************************************************************************
 * Local Functions
 *****************************************************************************/
/******************************************************************************
 *
 *    @name       Emulate_Joy_WithButton
 *
 *    @brief      This function gets the input from mouse movement, the mouse
 *                will move if the any button are pushed,otherwise USB gets NAK
 *
 *    @param      None
 *
 *    @return     None
 *
 *****************************************************************************
 * This function sends the joy data depending on which key was pressed on
 * the board
 *****************************************************************************/
static void Emulate_Joy_WithButton(void)
{
	uint_8 cur_state;
	
    if(xy_state_changed) {        
      xy_state_changed = FALSE;
    
      /* Write report data.
       */
      (void)USB_Class_HID_Send_Data(CONTROLLER_ID,HID_ENDPOINT,hid_joy_report_in,
    		  HID_JOY_REPORT_IN_SIZE);

    }
    if(hat_state_changed) {
      hat_state_changed = FALSE;
      /* Write report data.
       */
      (void)USB_Class_HID_Send_Data(CONTROLLER_ID,HID_ENDPOINT,hid_joy_report_in,
    		  HID_JOY_REPORT_IN_SIZE);
    }
    /* Look for buttons state. 
     */
    cur_state = joy_scan_matrix();
    
    /* If the status of some buttons has been changed, update input
     * report.  
     */
    if (cur_state != last_state)
    {
      last_state=cur_state;
      (void)USB_Class_HID_Send_Data(CONTROLLER_ID,HID_ENDPOINT,hid_joy_report_in,
    		  HID_JOY_REPORT_IN_SIZE);
    }

    return;
}

/****************************** END OF FILE **********************************/
