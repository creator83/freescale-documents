/*
 * File:        adc.c
 * Purpose:     Provide common adc routines
 *
 * Notes:       
 *              
 */

#include "common.h"
#include "adc.h"

/****************************************************************
                  initial the ADC module
*****************************************************************/
void InitADC( void )
{
    SIM_SCGC6 |= SIM_SCGC6_ADC0_MASK;  // enable ADC0 clock

    ADC0_CFG1 = ADC_CFG1_ADIV(1)|
  		ADC_CFG1_MODE(1)|
  		ADC_CFG1_ADICLK(3);
  	
}

/**********************************************************************
*                  ADC Calibration routine
**********************************************************************/
unsigned int ADCAutoCalibration(ADC_MemMapPtr adcmap)
{
  unsigned short cal_var;
    
  ADC_SC2_REG(adcmap) &=  ~ADC_SC2_ADTRG_MASK ; // Enable Software Conversion Trigger for Calibration Process    - ADC0_SC2 = ADC0_SC2 | ADC_SC2_ADTRGW(0);   
  ADC_SC3_REG(adcmap) &= ( ~ADC_SC3_ADCO_MASK & ~ADC_SC3_AVGS_MASK ); // set single conversion, clear avgs bitfield for next writing
  ADC_SC3_REG(adcmap) |= ( ADC_SC3_AVGE_MASK | ADC_SC3_AVGS(AVGS_32) );  // Turn averaging ON and set at max value ( 32 )
  
  
  ADC_SC3_REG(adcmap) |= ADC_SC3_CAL_MASK ;      // Start CAL
  while ( (ADC_SC1_REG(adcmap,A) & ADC_SC1_COCO_MASK ) == COCO_NOT ); // Wait calibration end
  	
  if ((ADC_SC3_REG(adcmap)& ADC_SC3_CALF_MASK) == CALF_FAIL )
  {  
   return(0);    // Check for Calibration fail error and return 
  }
  // Calculate plus-side calibration
  cal_var = 0x00;
  
  cal_var =  ADC_CLP0_REG(adcmap); 
  cal_var += ADC_CLP1_REG(adcmap);
  cal_var += ADC_CLP2_REG(adcmap);
  cal_var += ADC_CLP3_REG(adcmap);
  cal_var += ADC_CLP4_REG(adcmap);
  cal_var += ADC_CLPS_REG(adcmap);

  cal_var = cal_var/2;
  cal_var |= 0x8000; // Set MSB

  ADC_PG_REG(adcmap) = ADC_PG_PG(cal_var);
 

  // Calculate minus-side calibration
  cal_var = 0x00;

  cal_var = cal_var/2;

  cal_var |= 0x8000; // Set MSB

  //ADC_MG_REG(adcmap) = ADC_MG_MG(cal_var); 
  
  ADC_SC3_REG(adcmap) &= ~ADC_SC3_CAL_MASK ; /* Clear CAL bit */
  
  return 1;
}

          
/****************************************************************
                      software trigger channel x
*****************************************************************/
unsigned char TriggerADC(unsigned char Channel)
{
  
  if(Channel == 0x1B)                                          // Bandgap is selected as input
      PMC_REGSC |= PMC_REGSC_BGBE_MASK;                        // Bandgap buffer enabled
   ADC0_SC1A = Channel;                   // update the channel value
   return 1;
}

/****************************************************************
                      ADC Read
*****************************************************************/
unsigned int ReadADCPoll(void)
{
    while((ADC0_SC1A & ADC_SC1_COCO_MASK) == 0);
    //ADC0_SC1A &= ~ ADC0_SC1A_COCO_MASK;
    return ADC0_RA;
}

void ADC_ISR(void)
{
  printf("\n ADC sample data: %x.\n", ADC0_RA);
}
