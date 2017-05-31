/******************************************************************************
 *
 * Freescale Semiconductor Inc.
 * (c) Copyright 2004-2012 Freescale Semiconductor, Inc.
 * ALL RIGHTS RESERVED.
 *
 **************************************************************************//*!
 *
 * @file main.c
 *
 * @author
 *
 * @version
 *
 * @date 
 *
 * @brief The file contains the main code/entry code for the joystick demo
 *
 *****************************************************************************/
#include "derivative.h" /* include peripheral declarations */
#include <stdio.h>
#include "common.h"
#include "freedom_gpio.h"
#include "pit.h"
#include "hal_dev_mma8451.h"
#include "angle_cal.h"
#include "task_mgr.h"
#include "global.h"
#include "TSIDrv.h"
#include "mcg.h"
#include "sysinit.h"
#include "freedom.h"
#include "rcm.h"
#include "usb_dci_kinetis.h"
#include "usb_dciapi.h"
#include "hid_joy.h"

/* Testing Suite */

   
#define LED8_PORT   A   // REd LED
#define LED8_BIT    5

#define LED9_PORT   A   // GREEN LED
#define LED9_BIT    16

#define LED8_ON         GPIOA_PCOR |= (1<<LED8_BIT)
#define LED8_OFF        GPIOA_PSOR |= (1<<LED8_BIT)
#define LED8_TOGGLE     GPIOA_PTOR |= (1<<LED8_BIT)

#define LED9_ON         GPIOA_PCOR |= (1<<LED9_BIT)
#define LED9_OFF        GPIOA_PSOR |= (1<<LED9_BIT)
#define LED9_TOGGLE     GPIOA_PTOR |= (1<<LED9_BIT)

#define LED8_PCR        PORTA_PCR16
#define LED8_OUTPUT_EN  GPIOA_PDDR |= (1<<LED8_BIT)
#define LED9_PCR        PORTA_PCR17
#define LED9_OUTPUT_EN  GPIOA_PDDR |= (1<<LED9_BIT)

uint8 gu8USB_Buffer[64];

extern uint8 gu8USB_Flags; 
extern uint8 gu8EP3_OUT_ODD_Buffer[];
extern uint8 gu8USB_Flags; 
extern uint8 gu8EP3_OUT_ODD_Buffer[];




uint8 str1[] = "hola";
/*
*/


#define TPM_Cn_MODE  (TPM_CnSC_MSB_MASK | TPM_CnSC_ELSA_MASK)
#define TPM_MODULE    1000
#define TPM_INIT_VAL    25
#define SET_LED_GREEN(x)   TPM2_C1V = (x)
#define SET_LED_RED(x)     TPM2_C0V = (x)
#define SET_LED_BLUE(x)    TPM0_C1V = (x)


void accel_demo(void);
void accel_read(void);
void TPM_init(void);
void cpu_identify (void);
void flash_identify (void);

static void USB_Init(uint_8 controller_ID);

/*****************************************************************************************************
* Definition of module wide VARIABLEs - NOT for use in other modules
*****************************************************************************************************/
signed short accel_x, accel_y, accel_z;
signed short resultx, resulty, resultz;


#define RED_MASK   0x01
#define GREEN_MASK 0x02
#define BLUE_MASK  0x04





void accel_init(void)
{
    unsigned char tmp;

    //Configure MMA8451 sensor //MMA8451Q
    hal_dev_mma8451_init();      //Initialize I2C modules
    tmp = hal_dev_mma8451_read_reg(0x2a);
    hal_dev_mma8451_write_reg(0x2a,tmp|0x01);
}


void accel_read(void)
{
  
        if((hal_dev_mma8451_read_reg(0x00)&0xf) != 0)
        {

            accel_x   = hal_dev_mma8451_read_reg(0x01)<<8;
            accel_x  |= hal_dev_mma8451_read_reg(0x02);
            accel_x >>= 2;

            accel_y   = hal_dev_mma8451_read_reg(0x03)<<8;
            accel_y  |= hal_dev_mma8451_read_reg(0x04);
            accel_y >>= 2;

            accel_z   = hal_dev_mma8451_read_reg(0x05)<<8;
            accel_z  |= hal_dev_mma8451_read_reg(0x06);
            accel_z >>= 2;

            resultx   = hal_dev_mma8451_read_reg(0x01)<<8;
            resultx  |= hal_dev_mma8451_read_reg(0x02);
            resultx >>= 8;

            resulty   = hal_dev_mma8451_read_reg(0x03)<<8;
            resulty  |= hal_dev_mma8451_read_reg(0x04);
            resulty >>= 8;

            resultz   = hal_dev_mma8451_read_reg(0x05)<<8;
            resultz  |= hal_dev_mma8451_read_reg(0x06);
            resultz >>= 8;
            
            
            angle_calculation(); //-900  to  900            
            detect_fall_detection();
            
            accel_demo();
            
            
        }
        
    
}

#define T_DELAY_LED  10


void accel_demo(void)
{
        static int note,notez;
        static int note1,notez1;
        static int note2,notez2;
        
        if (ti_accel_sampling==0)
       {
         accel_read();              
         ti_accel_sampling = 10;            
       } 
 
         
        //static int cont=0x1;
        note  = yz_angle/100;  //9-9
        note1 = xy_angle/100;  //9-9
        note2 = xz_angle/100;  //9-9
        
        
        if (note != notez && xz_mag > 20 && !ti_delay)   //yz
        {
         if (note <-9) note=-9;
         if (note >9)  note =9;
         if (notez < note) notez++;
         if (notez > note) notez--;
        SET_LED_GREEN(notez*55+500);
        ti_delay = T_DELAY_LED;
        } 
         
        if (note1 != notez1 && xz_mag > 20 && !ti_delay)
        {
         if (note1 <-9) note1=-9;
         if (note1 >9)  note1 =9;
         if (notez1 < note1) notez1++;
         if (notez1 > note1) notez1--;
         SET_LED_RED(notez1*55+500);
         ti_delay = T_DELAY_LED;
        } 


       if (note2 != notez2 && xy_mag > 20 && !ti_delay)
        {
         if (note2 <-9) note2=-9;
         if (note2 >9)  note2 =9;
         if (notez2 < note2) notez2++;
         if (notez2 > note2) notez2--;
         SET_LED_BLUE(notez2*55+500);
         ti_delay = T_DELAY_LED;
        } 

  if (xy_mag < 20 &&  AbsolutePercentegePosition>0 ) 
      { 
  
         SET_LED_BLUE(AbsolutePercentegePosition*10);
         SET_LED_RED(AbsolutePercentegePosition*10);
         SET_LED_GREEN(AbsolutePercentegePosition*10);
      }
         
         
        }
        



/**   buzzer_TPM_init
 * \brief    Initialize LPTPM for RGB led control   
 * \brief    FTM2 and FTM  in PWM edge aligned mode 
 * \author   b01252
 * \param    none
 * \return   none
 */  


void TPM_init(void)
  { 
 
   SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK | SIM_SCGC5_PORTD_MASK;
   
   SIM_SCGC6|=( SIM_SCGC6_TPM0_MASK | SIM_SCGC6_TPM2_MASK);   
   
   SIM_SOPT2 |= SIM_SOPT2_TPMSRC(1); //
   
      
   PORTB_PCR18 = (0|PORT_PCR_MUX(3)); /* TPM2_CH0 enable on PTB18 */
   PORTB_PCR19 = (0|PORT_PCR_MUX(3)); /* TPM2_CH1 enable on PTB19 */
   PORTD_PCR1  = (0|PORT_PCR_MUX(4)); /* TPM0_CH1 enable on PTD1 */
   

   TPM0_MOD  = TPM_MODULE;  /* 0x0063 / 25MHz = 4uS PWM period */
   TPM0_C1SC = TPM_Cn_MODE;   /* No Interrupts; High True pulses on Edge Aligned PWM */
   TPM0_C1V  = TPM_INIT_VAL;  /* 90% pulse width */
   
   TPM2_MOD  = TPM_MODULE;  /* 0x0063 / 25MHz = 4uS PWM period */
   TPM2_C0SC = TPM_Cn_MODE;   /* No Interrupts; Low True pulses on Edge Aligned PWM */
   TPM2_C0V  = TPM_INIT_VAL;  /* 90% pulse width */
   TPM2_C1SC = TPM_Cn_MODE;   /* No Interrupts; Low True pulses on Edge Aligned PWM */
   TPM2_C1V  = TPM_INIT_VAL;  /* 90% pulse width */

   TPM2_SC   = TPM_SC_CMOD(1) | TPM_SC_PS(0);     /* Edge Aligned PWM running from BUSCLK / 1 */
   TPM0_SC   = TPM_SC_CMOD(1) | TPM_SC_PS(0);     /* Edge Aligned PWM running from BUSCLK / 1 */
  
  }





void vfn_test_accel(void)
{
     if (ti_accel_sampling==0)
       {
         accel_read();              
         ti_accel_sampling = 10;            
       } 
 
  
}


/*

*/

void vfn_rgb_test(void)
 { 
  static char seq_count=0;
   
  if (!ti_task)
  {  
   seq_count++;
   ti_task = 500;
   switch (seq_count)  
   {
    case 1: 
       SET_LED_GREEN(200);
       SET_LED_RED(0);
       SET_LED_BLUE(0);
         
     break;
    case 2: 
       SET_LED_GREEN(0);
       SET_LED_RED(200);
       SET_LED_BLUE(0);
     break;
   case 3: 
       SET_LED_GREEN(0);
       SET_LED_RED(0);
       SET_LED_BLUE(200);
     break;
    case 4: 
       SET_LED_GREEN(100);
       SET_LED_RED(100);
       SET_LED_BLUE(100);
      
     break;

   default:
     seq_count=0;
     next_task(accel_demo);
   };
 
  
  }
    
    
 }


const int Led_sequence[] =
   {
     0x0,
     RED_MASK,
     GREEN_MASK,
     BLUE_MASK,
     RED_MASK  | GREEN_MASK,
     RED_MASK  | BLUE_MASK,
     BLUE_MASK | GREEN_MASK,
     GREEN_MASK,
     BLUE_MASK,
     RED_MASK,
     0x0,
   };
  

/********************************************************************/
        char aux1;
int main (void)
{    
		sysinit ();
		outSRS();
		cpu_identify();
	  
        gpio_init();
#if !defined(L2K_TOWER)
        LED1_ON;
        LED2_ON;
        LED3_ON;
           
        LED1_OFF;
        LED2_OFF;
        LED3_OFF;
#else
        LED8_PCR = PCR_OUTPUT_CONFIG;
        LED8_OFF;
        LED8_OUTPUT_EN;        
        LED9_PCR = PCR_OUTPUT_CONFIG;
        LED9_OFF;
        LED9_OUTPUT_EN;   
        
#endif
        /* initilize Accelerometer */
        accel_init();
        
        /* Initialize systems for USB module */
    #if HIGH_SPEED_DEVICE
        USB_Init(ULPI);
    #else
        USB_Init(MAX3353);
    #endif
       
        /* NOTE: 
         * must initialize TSIDrv last otherwise
         * its ISER (interrupt enable bit) will be cleared somehow.
         * maybe due to SIM_SOPT1 |= SIM_SOPT1_USBREGEN_MASK;
         */
        TSI_Init();
        
        /* call hid_joy module */
        hid_joy();
        return (0);
}
/********************************************************************/

/********************************************************************/
/*!
 * \brief   Kinetis L Family Identify
 * \return  None
 *
 * This is primarly a reporting function that displays information
 * about the specific CPU to the default terminal including:
 * - Kinetis family
 * - package
 * - die revision
 * - P-flash size
 * - Ram size
 */
void cpu_identify (void)
{
  uint16 temp;
    /* Determine the Kinetis family */
    switch((SIM_SDID & SIM_SDID_FAMID(0x7))>>SIM_SDID_FAMID_SHIFT) 
    {  
    	case 0x0:
    		printf("\nKL0");
    		break;
    	case 0x1:
    		printf("\nKL1");
    		break;
    	case 0x2:
    		printf("\nKL2");
    		break;
    	case 0x3:
    		printf("\nKL3");
    		break;
    	case 0x4:
    		printf("\nKL4");
    		break;
	default:
		printf("\nUnrecognized Kinetis family device.\n");  
		break;  	
    }
    
    /* Determine Sub-Family ID */
    switch((SIM_SDID & SIM_SDID_SUBFAMID(0x7))>>SIM_SDID_SUBFAMID_SHIFT) 
    {  
    	case 0x4:
    		printf("4");
    		break;
    	case 0x5:
    		printf("5");
    		break;
	default:
		printf("\nUnrecognized Kinetis sub-family device.\n");  
		break;  	
    }
    
    /* Determine the package size */
    switch((SIM_SDID & SIM_SDID_PINID(0xF))>>SIM_SDID_PINID_SHIFT) 
    {  
    	case 0x0:
    		printf("16pin       ");
    		break;
    	case 0x1:
    		printf("24pin       ");
    		break;
    	case 0x2:
    		printf("32pin      ");
    		break;
    	case 0x4:
    		printf("48pin      ");
    		break;
    	case 0x5:
    		printf("64pin      ");
        case 0x6:
    		printf("80pin      ");
        case 0x8:
    		printf("100pin      ");        
    		break;
	default:
		printf("\nUnrecognized Kinetis package code.      ");  
		break;  	
    }
    
    /* Determine Attribute ID */
    switch((SIM_SDID & SIM_SDID_SERIESID(0x7))>>SIM_SDID_SERIESID_SHIFT) 
    {  
    	case 0x1:
    		printf("\nLow Power Line with Cortex M0+\n\n");
    		break;
	default:
		printf("\nUnrecognized Kinetis family attribute.\n");  
		break;  	
    }
    
    /* Determine the System SRAM Size */
    switch((SIM_SDID & SIM_SDID_SRAMSIZE(0x7))>>SIM_SDID_SRAMSIZE_SHIFT) 
    {  
    	case 0x0:
          printf("SRAM Size: 0.5 KB\n");
    		break;
        case 0x1:
          printf("SRAM Size:  1 KB\n");
          break;
        case 0x2:
          printf("SRAM Size:  2 KB\n");
          break;
        case 0x3:
          printf("SRAM Size:  4 KB\n");
          break;
        case 0x4:
          printf("SRAM Size:  8 KB\n");
          break;
        case 0x5:
          printf("SRAM Size:  16 KB\n");
          break;
        case 0x6:
          printf("SRAM Size:  32 KB\n");
          break;
        case 0x7:
          printf("SRAM Size:  64 KB\n");
          break;
	default:
		printf("\nUnrecognized SRAM Size.\n");  
		break;  	
    }                

    /* Determine the revision ID */
    temp = ((SIM_SDID_REVID(0xF))>>SIM_SDID_REVID_SHIFT);
    printf("Silicon rev %d\n ", temp);
    
    /* Determine the flash revision */
    flash_identify();    
    
    /* Determine the P-flash size */
  switch((SIM_FCFG1 & SIM_FCFG1_PFSIZE(0xF))>>SIM_FCFG1_PFSIZE_SHIFT)
    {
  	case 0x0:
    		printf("Flash size:  8 KB program flash, 0.25 KB protection region");
    		break;
    	case 0x1:
    		printf("Flash size:  16 KB program flash, 0.5 KB protection region	");
    		break;
        case 0x3:
    		printf("Flash size:  32 KB program flash, 1 KB protection region	");
    		break;
    	case 0x5:
    		printf("Flash size:  64 KB program flash, 2 KB protection region	");
    		break;
        case 0x7:
    		printf("Flash size:  128 KB program flash, 4 KB protection region	");
    		break;
        case 0x9:
    		printf("Flash size:  256 KB program flash, 4 KB protection region	");
    		break;
        case 0xF:
    		printf("Flash size:  128 KB program flash, 4 KB protection region	");
    		break;
	default:
		printf("ERR!! Undefined flash size\n");  
		break;  	  		
    }
}
/********************************************************************/
/*!
 * \brief   flash Identify
 * \return  None
 *
 * This is primarly a reporting function that displays information
 * about the specific flash parameters and flash version ID for 
 * the current device. These parameters are obtained using a special
 * flash command call "read resource." The first four bytes returned
 * are the flash parameter revision, and the second four bytes are
 * the flash version ID.
 */
void flash_identify (void)
{
    /* Get the flash parameter version */

    /* Write the flash FCCOB registers with the values for a read resource command */
    FTFA_FCCOB0 = 0x03;
    FTFA_FCCOB1 = 0x00;
    FTFA_FCCOB2 = 0x00;
    FTFA_FCCOB3 = 0x00;
    FTFA_FCCOB8 = 0x01;

    /* All required FCCOBx registers are written, so launch the command */
    FTFA_FSTAT = FTFA_FSTAT_CCIF_MASK;

    /* Wait for the command to complete */
    while(!(FTFA_FSTAT & FTFA_FSTAT_CCIF_MASK));
    
    printf("Flash parameter version %d.%d.%d.%d\n",FTFA_FCCOB4,FTFA_FCCOB5,FTFA_FCCOB6,FTFA_FCCOB7);

    /* Get the flash version ID */   

    /* Write the flash FCCOB registers with the values for a read resource command */
    FTFA_FCCOB0 = 0x03;
    FTFA_FCCOB1 = 0x00;
    FTFA_FCCOB2 = 0x00;
    FTFA_FCCOB3 = 0x04;
    FTFA_FCCOB8 = 0x01;

    /* All required FCCOBx registers are written, so launch the command */
    FTFA_FSTAT = FTFA_FSTAT_CCIF_MASK;

    /* Wait for the command to complete */
    while(!(FTFA_FSTAT & FTFA_FSTAT_CCIF_MASK));

    printf("Flash version ID %d.%d.%d.%d\n",FTFA_FCCOB4,FTFA_FCCOB5,FTFA_FCCOB6,FTFA_FCCOB7);  
}


static void USB_Init(uint_8 controller_ID)
{
	if(controller_ID == MAX3353)
	{
#ifdef MCU_MK70F12
		/* MPU is disabled. All accesses from all bus masters are allowed */
		MPU_CESR=0;

		SIM_SOPT2 |= SIM_SOPT2_PLLFLLSEL(1) 	/** PLL0 reference */
						| SIM_SOPT2_USBFSRC(0)			/** MCGPLLCLK as CLKC source */
						|  SIM_SOPT2_USBF_CLKSEL_MASK;	/** USB fractional divider like USB reference clock */
		SIM_CLKDIV2 = USB_FRAC | USB_DIV;		/** Divide reference clock to obtain 48MHz */

		/* Enable USB-OTG IP clocking */
		SIM_SCGC4 |= SIM_SCGC4_USBFS_MASK;
#else
#ifndef MCU_MKL25Z4
		SIM_CLKDIV2 &= (uint32_t)(~(SIM_CLKDIV2_USBFRAC_MASK | SIM_CLKDIV2_USBDIV_MASK));
#endif
#ifdef MCGOUTCLK_72_MHZ
		/* Configure USBFRAC = 0, USBDIV = 0 => frq(USBout) = 2 / 3 * frq(PLLin) */
		SIM_CLKDIV2 = SIM_CLKDIV2_USBDIV(2) | SIM_CLKDIV2_USBFRAC_MASK;
#else
#ifndef MCU_MKL25Z4
		/* Configure USBFRAC = 0, USBDIV = 0 => frq(USBout) = 1 / 1 * frq(PLLin) */
		SIM_CLKDIV2 = SIM_CLKDIV2_USBDIV(0);
#endif
#endif

		/* Enable USB-OTG IP clocking */
		SIM_SCGC4 |= (SIM_SCGC4_USBOTG_MASK);          

		/* Configure USB to be clocked from PLL */
		SIM_SOPT2  |= (SIM_SOPT2_USBSRC_MASK | SIM_SOPT2_PLLFLLSEL_MASK);

		/* Configure enable USB regulator for device */
		SIM_SOPT1 |= SIM_SOPT1_USBREGEN_MASK;
#endif

#if defined(MCU_MK20D5)
		NVICICPR1 |= (1 << 3);	/* Clear any pending interrupts on USB */
		NVICISER1 |= (1 << 3);	/* Enable interrupts from USB module */
#elif (defined MCU_MK21D5)
        NVICICER1 |= (1<<21);    /* Clear any pending interrupts on USB */
        NVICISER1 |= (1<<21);    /* Enable interrupts from USB module */   
#elif (defined MCU_MKL25Z4)
        NVIC_ICER |= (1<<24);	 /* Clear any pending interrupts on USB */
        NVIC_ISER |= (1<<24);	 /* Enable interrupts from USB module */	
#else
		NVICICER2 |= (1 << 9);	/* Clear any pending interrupts on USB */
		NVICISER2 |= (1 << 9);	/* Enable interrupts from USB module */             
#endif               

	} // MAX3353
	else if(controller_ID == ULPI)
	{
#ifdef MCU_MK70F12
		/* disable cache */
		LMEM_PCCCR &= ~LMEM_PCCCR_ENCACHE_MASK;	
		/* increase priority for usb module
		 * AXBS_PRS1: 
		 * ??=0,M7=7,??=0,M6=0,??=0,M5=5,??=0,M4=4,??=0,M3=3,??=0,M2=2,??=0,M1=1,??=0,M0=6 */
		AXBS_PRS1 = (uint32_t)0x70543216UL;
		  
		/* Disable the MPU so that USB can access RAM */
		MPU_CESR &= ~MPU_CESR_VLD_MASK;
		
		/* clock init */
		SIM_CLKDIV2 |= USBHS_FRAC | 
				USBHS_DIV;			/* Divide reference clock to obtain 60MHz */
		
		/* MCGPLLCLK for the USB 60MHz CLKC source */ 
		SIM_SOPT2 |= SIM_SOPT2_USBHSRC(1);
		
		/* External 60MHz UPLI Clock */
		SIM_SOPT2 |= SIM_SOPT2_USBH_CLKSEL_MASK;
	
		/* enable USBHS clock */
		SIM_SCGC6 |= SIM_SCGC6_USB2OTG_MASK;
		
		/* use external 60MHz ULPI clock */
		SIM_SOPT2 |= (SIM_SOPT2_USBH_CLKSEL_MASK);
		
		/* select alternate function 2 for ULPI pins */
		SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
		PORTA_PCR10 = PORT_PCR_MUX(2);  // Data0
		PORTA_PCR6 = PORT_PCR_MUX(2);	// CLK
		PORTA_PCR11 = PORT_PCR_MUX(2);  // Data1
		PORTA_PCR24 = PORT_PCR_MUX(2);	// Data2
		PORTA_PCR29 = PORT_PCR_MUX(2);	// Data7
		PORTA_PCR25 = PORT_PCR_MUX(2);	// Data3
		PORTA_PCR26 = PORT_PCR_MUX(2);	// Data4
		PORTA_PCR27 = PORT_PCR_MUX(2);	// Data5
		PORTA_PCR28 = PORT_PCR_MUX(2);	// Data6
		PORTA_PCR8 = PORT_PCR_MUX(2);	// NXT
		PORTA_PCR7 = PORT_PCR_MUX(2);	// DIR
		PORTA_PCR9 = PORT_PCR_MUX(2);	// STP
	
		/* reset ULPI module */
		USBHS_USBCMD |= USBHS_USBCMD_RST_MASK;
	
		/* check if USBHS module is ok */
		printf("Initializing ULPI..\t");
		USBHS_ULPI_VIEWPORT = 0x40000000;
		
		/* wait for ULPI to initialize */
		while(USBHS_ULPI_VIEWPORT & (0x40000000));
#ifdef SERIAL_DEBUG
		printf("OK\n");
#endif
		
		NVICICER3 |= 1;	//Clear any pending interrupts on USBHS 
		NVICISER3 |= 1;	//Enable interrupts on USBHS
#endif // MCU_MK70F12
	} // ULPI
}
/********************************************************************/
