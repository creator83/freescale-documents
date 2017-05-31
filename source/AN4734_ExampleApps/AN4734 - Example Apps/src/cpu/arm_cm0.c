/*
 * File:		arm_cm4.c
 * Purpose:		Generic high-level routines for ARM Cortex M4 processors
 *
 * Notes:
 */

#include "common.h"

/***********************************************************************/
/*
 * Configures the ARM system control register for STOP (deep sleep) mode
 * and then executes the WFI instruction to enter the mode.
 *
 * Parameters:
 * none
 *
 * Note: Might want to change this later to allow for passing in a parameter
 *       to optionally set the sleep on exit bit.
 */

void stop (void)
{
	/* Set the SLEEPDEEP bit to enable deep sleep mode (STOP) */
	SCB_SCR |= SCB_SCR_SLEEPDEEP_MASK;	

	/* WFI instruction will start entry into STOP mode */
#ifndef KEIL
	asm("WFI");
#else
	__wfi();
#endif
        /*if((SMC_PMCTRL & SMC_PMCTRL_STOPA_MASK) == SMC_PMCTRL_STOPA_MASK)
        {
            PORTA_PCR15 = PORT_PCR_MUX(0x1);
            
            FGPIOA_PDDR = 0xFFFF;
            FGPIOA_PSOR = 0xFFFF;
        }*/
}
/***********************************************************************/
/*
 * Configures the ARM system control register for WAIT (sleep) mode
 * and then executes the WFI instruction to enter the mode.
 *
 * Parameters:
 * none
 *
 * Note: Might want to change this later to allow for passing in a parameter
 *       to optionally set the sleep on exit bit.
 */

void wait (void)
{
	/* Clear the SLEEPDEEP bit to make sure we go into WAIT (sleep) mode instead
	 * of deep sleep.
	 */
	SCB_SCR &= ~SCB_SCR_SLEEPDEEP_MASK;	

	/* WFI instruction will start entry into WAIT mode */
#ifndef KEIL
	asm("WFI");
#else
    __wfi();
#endif
}
/***********************************************************************/
/*
 * Change the value of the vector table offset register to the specified value.
 *
 * Parameters:
 * vtor     new value to write to the VTOR
 */

void write_vtor (int vtor)
{
        /* Write the VTOR with the new value */
        SCB_VTOR = vtor;	
}
/***********************************************************************/
/*
 * Initialize the NVIC to enable the specified IRQ.
 * 
 * NOTE: The function only initializes the NVIC to enable a single IRQ. 
 * Interrupts will also need to be enabled in the ARM core. This can be 
 * done using the EnableInterrupts macro.
 *
 * Parameters:
 * irq    irq number to be enabled (the irq number NOT the vector number)
 */

void enable_irq (int irq)
{   
    /* Make sure that the IRQ is an allowable number. Up to 48 is 
     * used.
     */
    if (irq > 48)
        printf("\nERR! Invalid IRQ value passed to enable irq function!\n");
    else
    {
      /* Determine which of the NVICISERs corresponds to the irq */
      NVIC_ICPR |= 1 << (irq%32);
      NVIC_ISER |= 1 << (irq%32);
    }
}
/***********************************************************************/
/*
 * Initialize the NVIC to disable the specified IRQ.
 * 
 * NOTE: The function only initializes the NVIC to disable a single IRQ. 
 * If you want to disable all interrupts, then use the DisableInterrupts
 * macro instead. 
 *
 * Parameters:
 * irq    irq number to be disabled (the irq number NOT the vector number)
 */

void disable_irq (int irq)
{
    
    /* Make sure that the IRQ is an allowable number. Right now up to 48 is 
     * used.
     */
    if (irq > 48)
        printf("\nERR! Invalid IRQ value passed to disable irq function!\n");
    else
      /* Determine which of the NVICICERs corresponds to the irq */
      NVIC_ICER = 1 << (irq%32);
}
/***********************************************************************/
/*
 * Initialize the NVIC to set specified IRQ priority.
 * 
 * NOTE: The function only initializes the NVIC to set a single IRQ priority. 
 * Interrupts will also need to be enabled in the ARM core. This can be 
 * done using the EnableInterrupts macro.
 *
 * Parameters:
 * irq    irq number to be enabled (the irq number NOT the vector number)
 * prio   irq priority. 0-3 levels. 0 max priority
 */

void set_irq_priority (int irq, int prio)
{   
    uint32 temp1, temp2;
    /* Make sure that the IRQ is an allowable number. Right now up to 48 is 
     * used.
     */
    if (irq > 32)
        printf("\nERR! Invalid IRQ value passed to priority irq function!\n");

    if (prio > 3)
    {
        printf("\nERR! Invalid priority value passed to priority irq function!\n");
    }
    else if (irq >15)
    {
        temp1 = NVIC_IPR1; 
        temp2 = 8 * (irq % 4) + 6;
        temp1 &= ~(3 << temp2);
        temp1 |= (prio << temp2);
        NVIC_IPR1 = temp1;
    }
    else if (irq <= 15)
    {
        temp1 = NVIC_IPR0; 
        temp2 = 8 * (irq % 4) + 6;
        temp1 &= ~(3 << temp2);
        temp1 |= (prio << temp2);
        NVIC_IPR0 = temp1;
    }
    else
    {}
    /* Determine which of the NVICIPx corresponds to the irq */
    //prio_reg = (uint8 *)(((uint32)&NVIC_IP) + irq);
    /* Assign priority to IRQ */
    //*prio_reg = ( (prio&0x3) << (8 - ARM_INTERRUPT_LEVEL_BITS) );             
}
/***********************************************************************/

