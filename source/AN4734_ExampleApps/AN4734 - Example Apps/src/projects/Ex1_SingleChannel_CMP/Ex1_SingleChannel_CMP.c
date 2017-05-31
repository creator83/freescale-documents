/*
 * File:		KL04_ref_design_demo.c
 * Purpose:		Main process
 *
 */

#include "common.h"
#include "Ex1_SingleChannel_CMP.h"
#include "smc.h"

/********************************************************************/
int main (void)
{
  int tempint;
        
  // Configure the part to allow VLLS3 and VLPR modes.  
  SMC_PMPROT = (SMC_PMPROT_AVLP_MASK
                | SMC_PMPROT_ALLS_MASK
                | SMC_PMPROT_AVLLS_MASK);
  
  // Move to FBI mode using the 4MHz internal clock (FIRC)
  tempint = fei_fbi(4000000, 1);

  // If the clock frequency is not 2MHz, stop the program as there was an error. 
  if(tempint != 2000000)
      while(1);
            
  // Turn off the clock monitors
  MCG_C6 &= ~MCG_C6_CME0_MASK;
  // Move to BLPx mode
  MCG_C2 |= MCG_C2_LP_MASK;
            
  // Enable clock gates
  // Enable the CMP clock gating
  SIM_SCGC4 |= SIM_SCGC4_CMP_MASK;
    
  // Enable the clock gate to the LPTMR
  SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;
  
  // initialize the I/O
  IO_config();
  
  // Initialize the CMP first
  initialize_CMP();
  
  // Initialize the LPTMR
  initialize_LPTMR();
  
  // Jump to RAM Loop
  Run_RAM_Loop();
  
}
/********************************************************************/


void initialize_LPTMR(void)
{
    // Disable the LPTMR first.  For this app, the default control values are acceptable. 
    LPTMR0_CSR = 0x00;
    
    // Set the PSR to a known state
    LPTMR0_PSR = 0x00;
    
    // Setup the PSR to use the prescaler, and select the appropriate clock. 
    LPTMR0_PSR |= (LPTMR_PSR_PCS(1) | LPTMR_PSR_PBYP_MASK);  // If using the LPO.  
    
    // Set the Compare register for a 9 ms interval. 
    LPTMR0_CMR = LPTMR_CMR_COMPARE(9);
    
    // Write to the TCF bit to clear the TCF just in case.  
    LPTMR0_CSR = LPTMR_CSR_TCF_MASK;
}

void initialize_CMP(void)
{
    // Set CMP0_CR1 to a known state
    CMP0_CR1 = 0x00;
    
    // Set CMP Filter Count and Hysteresis control to 0.  
    //  Filter should be disabled to allow for low lag time.   
    CMP0_CR0 = 0x00;
    
    // Now configure CMP0_CR1 (but do not enable it!)
    CMP0_CR1 |= (CMP_CR1_TRIGM_MASK);   // Enable the CMP Trigger mode
    
    // Configure the rising-edge interrupt enable bit. 
    CMP0_SCR |= CMP_SCR_IER_MASK;  // Look for a rising edge first!
    
    // Configure the 6-bit DAC
    //  We want to use the Vin1in supply and to set the output voltage to 1/2 Vin
    //  DACout = (Vin/64) * (VOSEL[5:0] + 1), therefore 31 will produce DACout = 1/2 * Vin
    CMP0_DACCR = (CMP_DACCR_DACEN_MASK
                  | CMP_DACCR_VOSEL(31));
    
    // Select the appropriate Mux control
    //  
    //  We want to know when V0 > 50% Vcc, therefore, set the inverted input to
    //  be the DAC output.  Select the non-inverted input to be V0. 
    
    CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V0) | CMP_MUXCR_MSEL(CMP_DACIN_6B));
    
    // Configure the LLWU to wakeup from the CMP 
    LLWU_ME = LLWU_ME_WUME1_MASK ;     // Enable the CMP as an LLWU Wakeup source
    
    // Enable LLWU IRQ
    enable_irq(7);
    
    // Enable the CMP
    CMP0_CR1 |= CMP_CR1_EN_MASK;
}

void IO_config(void)
{       
    // setup outputs PTA12 - PTB6
    
    // Configure PTA12 as an output and initialize this output high.  
    GPIOA_PDDR |= 0x1000;
    GPIOA_PSOR |= 0x1000;
    
    
    // Configure PTB6 as an output and initialize this output low.  
    FGPIOB_PDDR |= 0x40;
    FGPIOB_PCOR |= 0x40;
    
    
     // Setup inputs (PTB5 & PTB1)
    PORTB_PCR5 = PORT_PCR_MUX(0);
    PORTB_PCR1 = PORT_PCR_MUX(0);
    
    
  // Disable all unused pins and configure GPIO outputs (leave Debug pins alone)
    
  //PORTA_PCR0  = (PORT_PCR_MUX(0x0)); // SWD CLK signal
  //PORTA_PCR1  = (PORT_PCR_MUX(0x0)); // Reset pin
  //PORTA_PCR2  = (PORT_PCR_MUX(0x0)); // SWD DIO signal
  //PORTA_PCR3  = (PORT_PCR_MUX(0x0)); // EXTAL pin
  //PORTA_PCR4  = (PORT_PCR_MUX(0x0)); // XTAL pin
  PORTA_PCR5  = (PORT_PCR_MUX(0x0));
  PORTA_PCR6  = (PORT_PCR_MUX(0x0));
  PORTA_PCR7  = (PORT_PCR_MUX(0x0));
  PORTA_PCR8  = (PORT_PCR_MUX(0x0));
  PORTA_PCR9  = (PORT_PCR_MUX(0x0));
  PORTA_PCR10 = (PORT_PCR_MUX(0x0));
  PORTA_PCR11 = (PORT_PCR_MUX(0x0));
  PORTA_PCR12 = (PORT_PCR_MUX(0x1));  // PTA12 is OUT0
  PORTA_PCR13 = (PORT_PCR_MUX(0x0));
  PORTA_PCR14 = (PORT_PCR_MUX(0x0));
  PORTA_PCR15 = (PORT_PCR_MUX(0x1));
  PORTA_PCR16 = (PORT_PCR_MUX(0x0));
  PORTA_PCR17 = (PORT_PCR_MUX(0x0));
  PORTA_PCR18 = (PORT_PCR_MUX(0x0));
  PORTA_PCR19 = (PORT_PCR_MUX(0x0));
  PORTA_PCR20 = (PORT_PCR_MUX(0x0));
  PORTA_PCR21 = (PORT_PCR_MUX(0x0));
  PORTA_PCR22 = (PORT_PCR_MUX(0x0));
  PORTA_PCR23 = (PORT_PCR_MUX(0x0));
  PORTA_PCR24 = (PORT_PCR_MUX(0x0));
  PORTA_PCR25 = (PORT_PCR_MUX(0x0));
  PORTA_PCR26 = (PORT_PCR_MUX(0x0));
  PORTA_PCR27 = (PORT_PCR_MUX(0x0));
  PORTA_PCR28 = (PORT_PCR_MUX(0x0));
  PORTA_PCR29 = (PORT_PCR_MUX(0x0));
  PORTA_PCR30 = (PORT_PCR_MUX(0x0));
  PORTA_PCR31 = (PORT_PCR_MUX(0x0));
  
  PORTB_PCR0  = (PORT_PCR_MUX(0x0));
  PORTB_PCR1  = (PORT_PCR_MUX(0x0));
  PORTB_PCR2  = (PORT_PCR_MUX(0x0)); 
  PORTB_PCR3  = (PORT_PCR_MUX(0x0));
  PORTB_PCR4  = (PORT_PCR_MUX(0x0));
  PORTB_PCR5  = (PORT_PCR_MUX(0x0));
  PORTB_PCR6  = (PORT_PCR_MUX(0x1));  // PTB6 is OUT1
  PORTB_PCR7  = (PORT_PCR_MUX(0x0));
  PORTB_PCR8  = (PORT_PCR_MUX(0x0));
  PORTB_PCR9  = (PORT_PCR_MUX(0x0));
  PORTB_PCR10 = (PORT_PCR_MUX(0x0));
  PORTB_PCR11 = (PORT_PCR_MUX(0x0));
  PORTB_PCR12 = (PORT_PCR_MUX(0x0));
  PORTB_PCR13 = (PORT_PCR_MUX(0x0));
  PORTB_PCR14 = (PORT_PCR_MUX(0x0));
  PORTB_PCR15 = (PORT_PCR_MUX(0x0));
  PORTB_PCR16 = (PORT_PCR_MUX(0x0));
  PORTB_PCR17 = (PORT_PCR_MUX(0x0));
  PORTB_PCR18 = (PORT_PCR_MUX(0x0));
  PORTB_PCR19 = (PORT_PCR_MUX(0x0));
  PORTB_PCR20 = (PORT_PCR_MUX(0x0));
  PORTB_PCR21 = (PORT_PCR_MUX(0x0));
  PORTB_PCR22 = (PORT_PCR_MUX(0x0));
  PORTB_PCR23 = (PORT_PCR_MUX(0x0));
  PORTB_PCR24 = (PORT_PCR_MUX(0x0));
  PORTB_PCR25 = (PORT_PCR_MUX(0x0));
  PORTB_PCR26 = (PORT_PCR_MUX(0x0));
  PORTB_PCR27 = (PORT_PCR_MUX(0x0));
  PORTB_PCR28 = (PORT_PCR_MUX(0x0));
  PORTB_PCR29 = (PORT_PCR_MUX(0x0));
  PORTB_PCR30 = (PORT_PCR_MUX(0x0));
  PORTB_PCR31 = (PORT_PCR_MUX(0x0));
}

void Run_RAM_Loop(void)
{
    
    // Turn off the Flash!!
    SIM_FCFG1 |= SIM_FCFG1_FLASHDIS_MASK;
            
    // Write the PMC control register to enter LLS
    SMC_PMCTRL |= (SMC_PMCTRL_STOPM(0x3));
    
    // Set the SLEEPDEEP bit and the SLEEPONEXIT bit.  The SLEEP-ON-EXIT feature
    //  will ensure that the part is always in LLS except for when a comparison
    //  is being made and will save cycles by eliminating the need to stack
    //  and unstack registers between comparisons.  
    SCB_SCR = (SCB_SCR_SLEEPDEEP_MASK | SCB_SCR_SLEEPONEXIT_MASK);
        
    // Finally, enable the LPTMR
    LPTMR0_CSR |= LPTMR_CSR_TEN_MASK;  // Use this setting if using the LPTMR interrupt method
    
    CMP0_SCR |= (CMP_SCR_CFR_MASK | CMP_SCR_CFF_MASK);
    // Clear pending interrupts in the NVIC by writing a 1!
    NVIC_ICPR = 0xFFFFFFFF;
        
    // Execute the WFI instruction to enter LLS mode
    
#ifndef KEIL
	asm("WFI");
#else
	__wfi();
#endif
        
     // Inifinite while loop just in case the part returns to Main from the
     //  ISR.  However, this loop should never be entered.     
     while(1)
     {}
}
