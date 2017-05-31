/*
 * File:        smc.c
 * Purpose:     Provides routines for entering low power modes.
 *
 * Notes:	Since the wakeup mechanism for low power modes
 *              will be application specific, these routines
 *              do not include code to setup interrupts to exit
 *              from the low power modes. The desired means of
 *              low power mode exit should be configured before
 *              calling any of these functions.
 *
 *              These routines do not include protection to
 *              prevent illegal state transitions in the mode
 *              controller, and all routines that write to the
 *              PMPROT register write a value to allow all
 *              possible low power modes (it is write once, so
 *              if only the currently requested mode is enabled
 *              a different mode couldn't be enabled later on).
 *              
 */

#include "common.h"
#include "smc.h"

     uint32 dummyread;
/********************************************************************/
/* WAIT mode entry routine. Puts the processor into wait mode.
 * In this mode the core clock is disabled (no code executing), but 
 * bus clocks are enabled (peripheral modules are operational). 
 *
 * Mode transitions:
 * RUN -> WAIT
 * VLPR -> VLPW
 *
 * This function can be used to enter normal wait mode or VLPW
 * mode. If you are executing in normal run mode when calling this
 * function, then you will enter normal wait mode. If you are in VLPR
 * mode when calling this function, then you will enter VLPW mode instead.
 *
 * NOTE: Some modules include a programmable option to disable them in 
 * wait mode. If those modules are programmed to disable in wait mode, 
 * they will not be able to generate interrupts to wake up the core.
 *
 * WAIT mode is exited using any enabled interrupt or RESET, so no
 * exit_wait routine is needed. 
 *
* If in VLPW mode, the statue of the SMC_PMCTRL[LPWUI] bit determines if 
 * the processor exits to VLPR (LPWUI cleared) or normal run mode (LPWUI 
 * set). The enable_lpwui() and disable_lpwui()functions can be used to set
 * this bit to the desired option prior to calling enter_wait().
 * 
 * 
 * Parameters:
 * none
 */

void enter_wait(void)
{
    wait();
}
/********************************************************************/
/* STOP mode entry routine. Puts the processor into normal stop mode.
 * In this mode core, bus and peripheral clocks are disabled.
 *
 * Mode transitions:
 * RUN -> STOP
 * VLPR -> VLPS
 *
 * This function can be used to enter normal stop mode or VLPS
 * mode. If you are executing in normal run mode when calling this
 * function, then you will enter normal stop mode. If you are in VLPR
 * mode when calling this function, then you will enter VLPS mode instead.
 *
 * STOP mode is exited using any enabled interrupt or RESET, so no
 * exit_stop routine is needed.
 *
 * Parameters:
 * none
 */
void enter_stop(void)
{
    /* Set the STOPM field to 0b000 for normal STOP mode - Need to retain state of LPWUI bit 8 */
    SMC_PMCTRL =  SMC_PMCTRL_STOPM(0);           // set STOPM = 0b000
    stop();
}
/********************************************************************/
/* VLPR mode entry routine. Puts the processor into very low power
 * run mode. In this mode all clocks are enabled, but the core, bus,
 * and peripheral clocks are limited to 2MHz or less. The flash 
 * clock is limited to 1MHz or less. 
 *
 * Mode transitions:
 * RUN -> VLPR
 *
 * exit_vlpr() function or an interrupt with LPWUI set can be used 
 * to switch from VLPR back to RUN. 
 * 
 * while in VLPR, VLPW or VLPS the exit to VLPR is determined by 
 * the value passed in from the calling program.  
 *
 * LPWUI is static during VLPR mode and 
 * should not be written to during VLPR mode.
 *
 * Parameters:
 * lpwui_value - The input determines what is written to the LPWUI
 *               bit in the PMCTRL register
 *               Clear lpwui and interrupts keep you in VLPR
 *               Set LPWUI and interrupts return you to RUN mode
 * Return value : PMSTAT value or error code
 *                PMSTAT = 
 *                         000_0001 Current power mode is RUN
 *                         000_0100 Current power mode is VLPR
 *                ERROR Code =  0x14 - already in VLPR mode
 *                           =  0x24 - REGONS never clear indicating stop regulation
 */
int enter_vlpr(char lpwui_value)
{
  int i; 
  if ((SMC_PMSTAT & SMC_PMSTAT_PMSTAT_MASK)== 4){
         return 0x14;
         }
  /* The PMPROT register may have already been written by init code
     If so then this next write is not done.  
     PMPROT is write once after RESET  
     this write-once bit allows the MCU to enter the
     very low power modes: VLPR, VLPW, and VLPS   */
  SMC_PMPROT = SMC_PMPROT_AVLP_MASK;  
    
  /* Set the [MC1]LPLLSM or [MC2]STOPM field to 0b010 for VLPS mode -
     and RUNM bits to 0b010 for VLPR mode 
     Need to set state of LPWUI bit */
   if(lpwui_value){
     SMC_PMCTRL = SMC_PMCTRL_RUNM(2) |
                   SMC_PMCTRL_STOPM(0x2);
   } else {
     SMC_PMCTRL = SMC_PMCTRL_RUNM(2) |
                  SMC_PMCTRL_STOPM(0x2) ;
   }          
   /* Wait for VLPS regulator mode to be confirmed */
   for (i = 0 ; i < 10000 ; i++)
    {     /* check that the value of REGONS bit is not 0
             once it is a zero we can stop checking */
      if ((PMC_REGSC & PMC_REGSC_REGONS_MASK) ==0x04){
       // 0 Regulator is in stop regulation or in transition to/from it
       // 1 MCU is in Run regulation mode
      }  
      else  break;
    }  
    if ((PMC_REGSC & PMC_REGSC_REGONS_MASK) ==0x04)  return 0x24; 
    /* [MC2] PMSTAT only exist in Mode Controller 2       */
    if ((SMC_PMSTAT & SMC_PMSTAT_PMSTAT_MASK) == 4)
         return 0x04;
    return 0x05;
}
/********************************************************************/
/* VLPR mode exit routine. Puts the processor into normal run mode
 * from VLPR mode. You can transition from VLPR to normal run using
 * this function or an interrupt with LPWUI set. The enable_lpwui() 
 * and disable_lpwui() functions can be used to set LPWUI to the 
 * desired option prior to calling enter_vlpr().
 *
 * Mode transitions:
 * VLPR -> RUN
 *
 * Parameters:
 * none
 */
void exit_vlpr(void)
{
    /* check to make sure in VLPR before exiting    */
    if  ((SMC_PMSTAT & SMC_PMSTAT_PMSTAT_MASK)== 4) {
      
       /* Clear RUNM */
       SMC_PMCTRL &= ~(SMC_PMCTRL_RUNM(0x3));
                      
       /* Wait for normal RUN regulation mode to be confirmed */                   
       // 0 MCU is not in run regulation mode
       // 1 MCU is in run regulation mode
       while(!(PMC_REGSC & PMC_REGSC_REGONS_MASK)){
    	 printf(" \n[exit_vlpr] Waiting on REGONS bit to set to indicate Run regulation mode ! ");
         } 
       
    }  //if in VLPR mode
     // else if not in VLPR ignore call
}
/***************************************************************/
/* VLPS mode entry routine. Puts the processor into VLPS mode 
 * directly from normal run mode. 
 *
 * Mode transitions:
 * RUN -> VLPS
 *
 * Note, when VLPS is entered directly from RUN mode, 
 * exit to VLPR is disabled by hardware and the system will
 * always exit back to RUN.
 *
 * If however VLPS mode is entered from VLPR the state of 
 * the LPWUI bit determines the state the MCU will return 
 * to upon exit from VLPS.If LPWUI is set and an interrupt 
 * occurs you will exit to normal run mode instead of VLPR. 
 * If LPWUI is clear and an interrupt occurs you will exit to VLPR.
 *
 * Parameters:  
 * none
 */
void enter_vlps(void)
{
    /* Write to PMPROT to allow VLPS power modes */
    SMC_PMPROT = SMC_PMPROT_AVLP_MASK;   
    // write oneif not all set make sure all enabled
    //this write-once bit allows the MCU to enter the
    //very low power modes: VLPR, VLPW, and VLPS.
        
    /* Set the LPLLSM field to 0b010 for VLPS mode - 
       Need to maintain state of LPWUI bit 8 */
     SMC_PMCTRL = (SMC_PMCTRL & (SMC_PMCTRL_RUNM_MASK |
                   SMC_PMCTRL_STOPM(0x2)));

    /* Now execute the stop instruction to go into VLPS */
    stop();
}
/****************************************************************/
/* LLS mode entry routine. Puts the processor into LLS mode from
 * normal run mode or VLPR. 
 *
 * Mode transitions:
 * RUN -> LLS
 * VLPR -> LLS
 *
 * NOTE: LLS mode will always exit to RUN mode even if you were 
 * in VLPR mode before entering LLS.
 *
 * Wakeup from LLS mode is controlled by the LLWU module. Most
 * modules cannot issue a wakeup interrupt in LLS mode, so make
 * sure to setup the desired wakeup sources in the LLWU before 
 * calling this function.
 *
 * Parameters:
 * none
 */
void enter_lls(void)
{
    /* Write to PMPROT to allow LLS power modes */
    //SMC_PMPROT = SMC_PMPROT_ALLS_MASK;   
    /*this write-once bit allows the MCU to enter the
      LLS low power mode    */
      
    /* Set the [MC1] LPLLSM or [MC2]STOPM field to 0b011 for LLS mode  
       retain LPWUI and RUNM */
    SMC_PMCTRL = (SMC_PMCTRL | SMC_PMCTRL_STOPM(0x3)); 
    
    dummyread = SMC_PMCTRL;
 
    /* Now execute the stop instruction to go into LLS */
    stop();
}
/***************************************************************/
/* VLLS3 mode entry routine. Puts the processor into 
 * VLLS3 mode from normal run mode or VLPR. 
 *
 * Mode transitions:
 * RUN -> VLLS3
 * VLPR -> VLLS3
 *
 * NOTE: VLLSx modes will always exit to RUN mode even if you were 
 * in VLPR mode before entering VLLSx.
 *
 * Wakeup from VLLSx mode is controlled by the LLWU module. Most
 * modules cannot issue a wakeup interrupt in VLLSx mode, so make
 * sure to setup the desired wakeup sources in the LLWU before 
 * calling this function.
 *
 * Parameters:
 * none  
 */
void enter_vlls3(void)
{
    /* Write to PMPROT to allow VLLS3 power modes */
    SMC_PMPROT = SMC_PMPROT_AVLLS_MASK;
        
    /* Set the [MC1] VLLSM [MC2] STOPM field to 0b100 for VLLSx  
    - Retain state of LPWUI and RUNM */
    SMC_PMCTRL = (SMC_PMCTRL & (SMC_PMCTRL_RUNM_MASK |
                                SMC_PMCTRL_STOPM(0x4))); 
    /*[MC2] Set the state of the VLLSM bits in the SMC_STOPCTRL
    SMC_STOPCTRL =  SMC_STOPCTRL_VLLSM(3);   // set VLLSM = 0b11
*/
    /* Now execute the stop instruction to go into VLLS3 */
    stop();
}
/***************************************************************/
/* VLLS2 mode entry routine. Puts the processor into 
 * VLLS2 mode from normal run mode or VLPR. 
 *
 * Mode transitions:
 * RUN -> VLLS2
 * VLPR -> VLLS2
 *
 * NOTE: VLLSx modes will always exit to RUN mode even  
 *       if you werein VLPR mode before entering VLLSx.
 *
 * Wakeup from VLLSx mode is controlled by the LLWU module. Most
 * modules cannot issue a wakeup interrupt in VLLSx mode, so make
 * sure to setup the desired wakeup sources in the LLWU before 
 * calling this function.
 *
 * Parameters:
 * none  
 */
void enter_vlls2(void)
{
    /* Write to PMPROT to allow VLLS2 power modes */
    SMC_PMPROT = SMC_PMPROT_AVLLS_MASK;
        
    /* Set the [MC1] VLLSM [MC2] STOPM field to 0b100 for VLLSx  
    - Retain state of LPWUI and RUNM */
    SMC_PMCTRL = (SMC_PMCTRL & (SMC_PMCTRL_RUNM_MASK |
                                SMC_PMCTRL_STOPM(0x4))); 
    /*[MC2] Set the state of the VLLSM bits in the SMC_STOPCTRL
    SMC_STOPCTRL =  SMC_STOPCTRL_VLLSM(2);   // set VLLSM = 0b10
        */
    /* Now execute the stop instruction to go into VLLS2 */
    stop();
}
/***************************************************************/
/* VLLS1 mode entry routine. Puts the processor into 
 * VLLS1 mode from normal run mode or VLPR. 
 *
 * Mode transitions:
 * RUN -> VLLS1
 * VLPR -> VLLS1
 *
 * NOTE: VLLSx modes will always exit to RUN mode even if you were 
 * in VLPR mode before entering VLLSx.
 *
 * Wakeup from VLLSx mode is controlled by the LLWU module. Most
 * modules cannot issue a wakeup interrupt in VLLSx mode, so make
 * sure to setup the desired wakeup sources in the LLWU before 
 * calling this function.
 *
 * Parameters:
 * none  
 */
void enter_vlls1(void)
{
    /* Write to PMPROT to allow all possible power modes */
    SMC_PMPROT = SMC_PMPROT_AVLLS_MASK;
    /* Set the [MC1] VLLSM [MC2] STOPM field to 0b100 for VLLSx  
    - Retain state of LPWUI and RUNM */
    SMC_PMCTRL = (SMC_PMCTRL & (SMC_PMCTRL_RUNM_MASK |
                                SMC_PMCTRL_STOPM(0x4))); 
    /*[MC2] Set the state of the VLLSM bits in the SMC_STOPCTRL
    SMC_STOPCTRL =  SMC_STOPCTRL_VLLSM(1);   // set VLLSM = 0b01
       */
    /* Now execute the stop instruction to go into VLLS1 */
    stop();
}
/***************************************************************/
/* Enable low power wake up on interrupt. This function can be used
 * to set the LPWUI bit. When this bit is set VLPx modes will exit
 * to normal run mode. When this bit is cleared VLPx modes will exit
 * to VLPR mode.
 *
 * The disable_lpwui() function can be used to clear the LPWUI bit.
 *
 * Parameters:
 * none
 */

   

/********************************************************************/



