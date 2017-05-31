/******************************************************************************
 *
 * Freescale Semiconductor Inc.
 * (c) Copyright 2004-2012 Freescale Semiconductor, Inc.
 * ALL RIGHTS RESERVED.
 *
 **************************************************************************//*!
 *
 * @file adc.c
 *
 * @author
 *
 * @version
 *
 * @date 
 *
 * @brief The file contains the ADC code for the joystick demo
 *
 *****************************************************************************/
#include "derivative.h" /* include peripheral declarations */
#include "common.h"
#include "adc.h"

volatile int_16  AdcResult;
//volatile uint_16  AdcResult;
volatile unsigned char CovEndFlag;

void ADC_Init(void);
void ADC_Cvt(unsigned char Channel);

void ADC_Poll(void);

void ADC_Calib(void);

/**********************************************************************************************
 * ADC_Init: This function initilizes the ADC module
 *
 * Parameters:      none
 *
 * Subfunctions:    none.
 *
 * Return:          void
 *********************************************************************************************/ 
void ADC_Init(void)
{
	 /* enable clock to ADC */
	 SIM_SCGC6 |= SIM_SCGC6_ADC0_MASK;
	 /* select ADxxb channel for the input channel */
	 ADC0_CFG2 |= ADC_CFG2_MUXSEL_MASK;
	 
     ADC0_CFG1 = 0x61;  // ADC clock = busclk/2, then div by 8,
                        /*  0b0000000 0
                         *    ||||||| |__ bit0,1: ADICLK : input clock select   
                         *    |||||||_|
                         *    ||||||_____ bit2,3: MODE :  Conversion Mode selection
                         *    |||||_|  
                         *    ||||______ bit4:    ADLSMP: long sample time configuration
                         *    |||_______ bit5,6 : ADIV:   Clock Divide Select 
                         *    ||______| 
                         *    |_________ bit7:    ADLPC:  Low power configuration 
                         */
     
     ADC0_SC2 = 0x00;  //
                        /*  0b00000000
                         *    ||||||||__ bit0:   
                         *    |||||||___ bit1: 
                         *    ||||||____ bit2: 
                         *    |||||_____ bit3: 
                         *    ||||______ bit4: ACFGT: Compare function greater than enable
                         *    |||_______ bit5: ACFE : Compare enable
                         *    ||________ bit6: ADTRG: Conversion trigger select
                         *    |_________ bit7: ADACT: Convert active
                         */

  	 #ifdef TENBIT_MODE
      ADC0_CFG1 |= 0x08;
     #endif
     
     #ifdef TWELVEBIT_MODE
       ADC0_CFG1 |= 0x04;
     #endif
  
#if 0
     ADC0_SC3 = ADC_SC3_AVGE_MASK 
    		 |  ADC_SC3_AVGS(ADC_HW_SAMPLES_32)
    		 ;
#endif     
     ADC_Calib(); /* do ADC calibration */
}

/****************************************************************************************
 * ADC_Cvt :  start to ADC calibration
 * input:     None
 * 
 * Return : None
 ***************************************************************************************/ 

void ADC_Calib(void)
{
	int_32	i32CalibData = 0;
	uint_32 ui32SC2Saved = ADC0_SC2;
	uint_32 ui32SC3Saved = ADC0_SC3;
	/*
	1. Initialize or clear a 16-bit variable in RAM.
	2. Add the plus-side calibration results CLP0, CLP1, CLP2, CLP3, CLP4, and CLPS to
	the variable.
	3. Divide the variable by two.
	4. Set the MSB of the variable.
	5. The previous two steps can be achieved by setting the carry bit, rotating to the right
	through the carry bit on the high byte and again on the low byte.
	6. Store the value in the plus-side gain calibration register PG.
	7. Repeat the procedure for the minus-side gain calibration value.
	*/	

    ADC0_SC3 = ADC_SC3_AVGE_MASK 
    		 |  ADC_SC3_AVGS(ADC_HW_SAMPLES_32)
    		 ;	
	ADC0_SC2 = ADC_SC2_REFSEL(1);
	
	/* start calib */
	ADC0_SC3 |= ADC_SC3_CAL_MASK;
	while(!(ADC0_SC1A & ADC_SC1_COCO_MASK))
	{
		if(ADC0_SC3 & ADC_SC3_CALF_MASK)
		{
				// FAILED to calib
				// just leave it
		}
	}	
	i32CalibData += ADC0_CLP0 + ADC0_CLP1 + ADC0_CLP2 + ADC0_CLP3 + ADC0_CLP4 + ADC0_CLPS;
	i32CalibData >>= 1;
	i32CalibData |= 0x8000;
	
	ADC0_PG = i32CalibData;

	i32CalibData = 0;
	i32CalibData += ADC0_CLM0 + ADC0_CLM1 + ADC0_CLM2 + ADC0_CLM3 + ADC0_CLM4 + ADC0_CLMS;
	i32CalibData >>= 1;
	i32CalibData |= 0x8000;
	
	ADC0_MG = i32CalibData;
	
	// restore old value of SC2, SC3
	ADC0_SC2 = ui32SC2Saved;
	ADC0_SC3 = ui32SC3Saved;	
}

/****************************************************************************************
 * ADC_Cvt :  start to conversion of one channel
 * input:     channel is the channel number which will do conversion
 *
 * Return : None
 ***************************************************************************************/ 

void ADC_Cvt(unsigned char Channel) 
{
      #ifdef  ADC_INT_EN
          ADC0_SC1A = (Channel & ADC_SC1_ADCH_MASK) | ADC_SC1_AIEN_MASK;   //start the single conversion by software
      #else
          ADC0_SC1A = (Channel & ADC_SC1_ADCH_MASK) ;   //start the single conversion by software
      #endif
       
      #ifdef ADC_POLLING
          ADC_Poll();
      #endif

}

/****************************************************************************************
 * ADCISR: The ADC interrupt service routine that reads the ADC data register and places
 *         the value into global variables resulth and resultl
 *
 * Parameters: None
 *
 * Return : None
 ***************************************************************************************/ 
void ADC_Poll(void) 
{
  while(!(ADC0_SC1A & ADC_SC1_COCO_MASK));
   AdcResult = ADC0_RA;
   CovEndFlag = 1;
}

/****************************************************************************************
 * ADCISR: The ADC interrupt service routine which reads the ADC data register and places
 *         the value into global variables resulth and resultl
 *
 * Parameters: None
 *
 * Return : None
 ***************************************************************************************/ 
void ADCISR (void)
 {
    AdcResult = ADC0_RA;
    
    CovEndFlag = 1;   
 }
