/*!
 * \file    llwu.c
 * \brief   common LLWU routines
 *
 * This file defines the functions/interrupt handlers/macros used for LLWU to be used as wakeup source.
 * And some common initializations.
 *
 * \version $Revision: 1.0 $
 * \author  Philip Drake(rxaa60)
 ***/

#include "common.h"
#include "llwu.h"
#include "mcg.h"

// Must include the correct file depending on which example is being run. 
#if (defined(EX1))
#include "Ex1_ADC_Example.h"
#include "adc.h"

#elif (defined(EX2))
#include "Ex2_SingleChannel_CMP.h"

#elif (defined(EX3))
#include "Ex3_DualChannel_CMP.h"

#elif (defined(EX4))
#include "Ex4_12BitDAC_CMP.h"

#else
#endif


extern int re_init_clk;
extern int clock_freq_hz;
extern uint16 RTC_Alarm; 

/* function: llwu_configure

   description: Set up the LLWU for wakeup the MCU from LLS and VLLSx modes 
   from the selected pin or module.
   
   inputs:
   pin_en - unsigned integer, bit position indicates the pin is enabled.  
            More than one bit can be set to enable more than one pin at a time.  
   
   rise_fall - 0x00 = External input disabled as wakeup
               0x01 - External input enabled as rising edge detection
               0x02 - External input enabled as falling edge detection
               0x03 - External input enablge as any edge detection
   module_en - unsigned char, bit position indicates the module is enabled.  
               More than one bit can be set to enabled more than one module                   
   
   for example:  if bit 0 and 1 need to be enabled as rising edge detect call this  routine with
   pin_en = 0x0003 and rise_fall = 0x02
   
   Note: to set up one set of pins for rising and another for falling, 2 calls to this 
         function are required, 1st for rising then the second for falling.
   
*/

void llwu_configure(unsigned int pin_en, unsigned char rise_fall, unsigned char module_en ) {
    uint8 temp;
    SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
//   used on rev 1.4 of P2
    temp = LLWU_PE1;
    if( pin_en & 0x0001)
    {
        temp |= LLWU_PE1_WUPE0(rise_fall);
#ifdef DEBUG_PRINT
       printf(" LLWU configured pins PTA4 is LLWU wakeup source \n");
#endif
       LLWU_F1 |= LLWU_F1_WUF0_MASK;   // write one to clear the flag
    }
    if( pin_en & 0x0002)
    {
        temp |= LLWU_PE1_WUPE1(rise_fall);
#ifdef DEBUG_PRINT
        printf(" LLWU configured pins PTA5 is wakeup source \n");
#endif
        LLWU_F1 |= LLWU_F1_WUF1_MASK;   // write one to clear the flag
    }
    if( pin_en & 0x0004)
    {
        temp |= LLWU_PE1_WUPE2(rise_fall);
#ifdef DEBUG_PRINT
        printf(" LLWU configured pins PTA6 is LLWU wakeup source \n");
#endif
        LLWU_F1 |= LLWU_F1_WUF2_MASK;   // write one to clear the flag
    }
    if( pin_en & 0x0008)
    {
        temp |= LLWU_PE1_WUPE3(rise_fall);
#ifdef DEBUG_PRINT
        printf(" LLWU configured pins PTA7 is LLWU wakeup source \n");
#endif
        LLWU_F1 |= LLWU_F1_WUF3_MASK;   // write one to clear the flag
    }
    LLWU_PE1 = temp;

    temp = LLWU_PE2;
    if( pin_en & 0x0010)
    {
        temp |= LLWU_PE2_WUPE4(rise_fall);
#ifdef DEBUG_PRINT
        printf(" LLWU configured pins PTB0 is LLWU wakeup source \n");
#endif
        LLWU_F1 |= LLWU_F1_WUF4_MASK;   // write one to clear the flag
    }
    if( pin_en & 0x0020)
    {
        temp |= LLWU_PE2_WUPE5(rise_fall);
#ifdef DEBUG_PRINT
        printf(" LLWU configured pins PTB2 is LLWU wakeup source \n");
#endif
        LLWU_F1 |= LLWU_F1_WUF5_MASK;   // write one to clear the flag
    }
    if( pin_en & 0x0040)
    {
        temp |= LLWU_PE2_WUPE6(rise_fall);
#ifdef DEBUG_PRINT
        printf(" LLWU configured pins PTB4 is LLWU wakeup source \n");
#endif
        LLWU_F1 |= LLWU_F1_WUF6_MASK;   // write one to clear the flag
    }
    if( pin_en & 0x0080)
    {
        temp |= LLWU_PE2_WUPE7(rise_fall);
#ifdef DEBUG_PRINT
        printf(" LLWU configured pins PTA0 is LLWU wakeup source \n");
#endif
        LLWU_F1 |= LLWU_F1_WUF7_MASK;   // write one to clear the flag
    }
    LLWU_PE2 = temp;

    if (module_en == 0){
      LLWU_ME = 0;
    }else  {
    LLWU_ME |= module_en;  //Set up more modules to wakeup up
     }
        
      //function ends
}


void llwu_configure_filter(unsigned int wu_pin_num, unsigned char filter_en, unsigned char rise_fall ) 
{
   //wu_pin_num is the pin number to be written to FILTSEL.  wu_pin_num is not the same as pin_en. 
    uint8 temp;
    SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;

#ifdef DEBUG_PRINT
    printf("\nEnabling Filter %x on WU Pin %x for WU sense %x \n",filter_en, wu_pin_num, rise_fall);
#endif   
     temp = 0;
     //first clear filter values and clear flag by writing a 1
     LLWU_FILT1 = LLWU_FILT1_FILTF_MASK;
     LLWU_FILT2 = LLWU_FILT2_FILTF_MASK;
     
     if(filter_en == 1)
     {
    	 //clear the flag bit and set the others
         temp |= (LLWU_FILT1_FILTF_MASK) | (LLWU_FILT1_FILTE(rise_fall) | LLWU_FILT1_FILTSEL(wu_pin_num));         
         LLWU_FILT1 = temp;
         
     }else if (filter_en == 2)
     {
    	 //clear the flag bit and set the others
    	 temp |= (LLWU_FILT2_FILTF_MASK) | (LLWU_FILT2_FILTE(rise_fall) | LLWU_FILT2_FILTSEL(wu_pin_num));         
         LLWU_FILT2 = temp;
     }else
     {
#ifdef DEBUG_PRINT
    	 printf("\nError - invalid filter number\n"); 
#endif
     }
}    
    
//Interrupt handler for LLWU 
void llwu_isr(void){
#if (defined(EX1))
    uint16 V0_result;
    uint32 temp32;
    
    // The ADC compare function and hardware averaging functions should be 
    //  enabled.  The ADC should also not be running in the low power mode 
    //  as we are attempting to use a mode lower than VLPS.  
    
    // Sample V0
    TriggerADC(CHANNELV0);
    V0_result = ReadADCPoll();    
        
    if (V0_result > V0_THRESH)
        FGPIOA_PSOR = 0x1000;
    else
        FGPIOA_PCOR = 0x1000;
    
    
    LPTMR0_CSR =  (LPTMR_CSR_TCF_MASK 
                   | LPTMR_CSR_TEN_MASK
                   | LPTMR_CSR_TIE_MASK);   // write 1 to TCF to clear the LPT timer compare flag
    
    //wait for write to complete to  before returning 
    temp32 = LPTMR0_CSR;
    
    NVIC_ICPR = 0x10010000;  // Clear LPTMR interrupt in NVIC
        
    
#elif (defined(EX2))
        
    if ((CMP0_SCR & CMP_SCR_CFR_MASK) == CMP_SCR_CFR_MASK)
    {
        CMP0_SCR = (CMP_SCR_CFR_MASK | CMP_SCR_IEF_MASK);   
        FGPIOA_PSOR = 0x1000;
    }
    else
    {
        CMP0_SCR = (CMP_SCR_CFF_MASK | CMP_SCR_IER_MASK);
        FGPIOA_PCOR = 0x1000;
    }
    
#elif (defined(EX3))

    uint32 temp32, i;
    
    LPTMR0_CSR =  (LPTMR_CSR_TCF_MASK 
                   | LPTMR_CSR_TEN_MASK
                   | LPTMR_CSR_TIE_MASK);   // write 1 to TCF to clear the LPT timer compare flagint
    
    NVIC_ICPR = 0x10010000;  // Clear LPTMR interrupt in NVIC
    
    // Move to VLPR mode
    SMC_PMCTRL = ((SMC_PMCTRL & ~SMC_PMCTRL_RUNM_MASK) | SMC_PMCTRL_RUNM(2));
    
    // Turn on the comparator
    CMP0_CR1 = CMP_CR1_EN_MASK;
  
    // Turn on the DAC and set the voltage reference voltage appropriately.  
    CMP0_DACCR = (CMP_DACCR_DACEN_MASK
                  | CMP_DACCR_VOSEL(31));
    
    // Read the CMP control registers to ensure that the writes occurred.  
    temp32 = (CMP0_CR1 | CMP0_DACCR);
    
    // Select V0 as the plus input and the reference voltage as the minu input.   
    CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V0) | CMP_MUXCR_MSEL(7));
    
    // Reset semaphore i
    i = 0;
    
    // WAIT!!  Must meet the settling time of 40 us here (decimal 17)!!
    while(i<12)
        i++;
    
    // Read the output and make decision
    if (CMP0_SCR & CMP_SCR_COUT_MASK)
    {
        FGPIOA_PSOR = 0x1000;
    }
    else
    {
        FGPIOA_PCOR = 0x1000;
    }
    
    // Now select V1
    CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V1) | CMP_MUXCR_MSEL(CMP_DACIN));
    
    // Read the output and make decision
    if (CMP0_SCR & CMP_SCR_COUT_MASK)
    {
        FGPIOB_PSOR = 0x40;
    }
    else
    {
        FGPIOB_PCOR = 0x40;
    }
    
    // Ensure DAC is off before leaving ISR
    CMP0_DACCR = 0x00;
    
    // Ensure CMP is off before leaving ISR
    CMP0_CR1 = 0x00;
    
#elif (defined(EX4))
    
    // Move to VLPR mode
    //SMC_PMCTRL = SMC_PMCTRL_RUNM(2);
        
    if ((CMP0_SCR & CMP_SCR_CFR_MASK) == CMP_SCR_CFR_MASK)
    {
        CMP0_SCR = (CMP_SCR_CFR_MASK | CMP_SCR_IEF_MASK);   
        FGPIOA_PSOR = 0x1000;
    }
    else if ((CMP0_SCR & CMP_SCR_CFF_MASK) == CMP_SCR_CFF_MASK)
    {
        CMP0_SCR = (CMP_SCR_CFF_MASK | CMP_SCR_IER_MASK);
        FGPIOA_PCOR = 0x1000;
    }
#else
    
#endif
}
