///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:31 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\smc\smc.c                          /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\smc\smc.c" -D IAR -D FRDM -D EX2   /
//                    -lCN "D:\Profiles\B38350\My Documents\App               /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\FLASH_32KB\Li /
//                    st\" -lB "D:\Profiles\B38350\My Documents\App           /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\FLASH_32KB\Li /
//                    st\" -o "D:\Profiles\B38350\My Documents\App            /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\FLASH_32KB\Ob /
//                    j\" --no_cse --no_unroll --no_inline --no_code_motion   /
//                    --no_tbaa --no_clustering --no_scheduling --debug       /
//                    --endian=little --cpu=Cortex-M0+ -e --fpu=None          /
//                    --dlib_config "C:\Program Files\IAR Systems\Embedded    /
//                    Workbench 6.4\arm\INC\c\DLib_Config_Normal.h" -I        /
//                    "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    projects\DualChannel_Experiment\" -I                    /
//                    "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    common\" -I "D:\Profiles\B38350\My Documents\App        /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    cpu\" -I "D:\Profiles\B38350\My Documents\App           /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    cpu\headers\" -I "D:\Profiles\B38350\My Documents\App   /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    drivers\llwu\" -I "D:\Profiles\B38350\My Documents\App  /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    drivers\adc\" -I "D:\Profiles\B38350\My Documents\App   /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    drivers\lptmr\" -I "D:\Profiles\B38350\My               /
//                    Documents\App Notes\Kinetis\L Series\CMP pin            /
//                    sampling\Example Projects\build\iar\DualChannel_Experim /
//                    ent\..\..\..\src\drivers\mcg\" -I                       /
//                    "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    drivers\pmc\" -I "D:\Profiles\B38350\My Documents\App   /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    drivers\rcm\" -I "D:\Profiles\B38350\My Documents\App   /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    drivers\rtc\" -I "D:\Profiles\B38350\My Documents\App   /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    drivers\smc\" -I "D:\Profiles\B38350\My Documents\App   /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    drivers\uart\" -I "D:\Profiles\B38350\My Documents\App  /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    drivers\wdog\" -I "D:\Profiles\B38350\My Documents\App  /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    drivers\uart\" -I "D:\Profiles\B38350\My Documents\App  /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\..\..\src\ /
//                    platforms\" -I "D:\Profiles\B38350\My Documents\App     /
//                    Notes\Kinetis\L Series\CMP pin sampling\Example         /
//                    Projects\build\iar\DualChannel_Experiment\..\" -Ol      /
//                    --use_c++_inline                                        /
//    List file    =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\build\iar\DualChannel_Experiment\FLASH_32KB\Li /
//                    st\smc.s                                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME `smc`

        #define SHT_PROGBITS 0x1

        EXTERN printf
        EXTERN stop
        EXTERN wait

        PUBLIC dummyread
        PUBLIC enter_lls
        PUBLIC enter_stop
        PUBLIC enter_vlls1
        PUBLIC enter_vlls2
        PUBLIC enter_vlls3
        PUBLIC enter_vlpr
        PUBLIC enter_vlps
        PUBLIC enter_wait
        PUBLIC exit_vlpr

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\drivers\smc\smc.c
//    1 /*
//    2  * File:        smc.c
//    3  * Purpose:     Provides routines for entering low power modes.
//    4  *
//    5  * Notes:	Since the wakeup mechanism for low power modes
//    6  *              will be application specific, these routines
//    7  *              do not include code to setup interrupts to exit
//    8  *              from the low power modes. The desired means of
//    9  *              low power mode exit should be configured before
//   10  *              calling any of these functions.
//   11  *
//   12  *              These routines do not include protection to
//   13  *              prevent illegal state transitions in the mode
//   14  *              controller, and all routines that write to the
//   15  *              PMPROT register write a value to allow all
//   16  *              possible low power modes (it is write once, so
//   17  *              if only the currently requested mode is enabled
//   18  *              a different mode couldn't be enabled later on).
//   19  *              
//   20  */
//   21 
//   22 #include "common.h"
//   23 #include "smc.h"
//   24 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25      uint32 dummyread;
dummyread:
        DS8 4
//   26 /********************************************************************/
//   27 /* WAIT mode entry routine. Puts the processor into wait mode.
//   28  * In this mode the core clock is disabled (no code executing), but 
//   29  * bus clocks are enabled (peripheral modules are operational). 
//   30  *
//   31  * Mode transitions:
//   32  * RUN -> WAIT
//   33  * VLPR -> VLPW
//   34  *
//   35  * This function can be used to enter normal wait mode or VLPW
//   36  * mode. If you are executing in normal run mode when calling this
//   37  * function, then you will enter normal wait mode. If you are in VLPR
//   38  * mode when calling this function, then you will enter VLPW mode instead.
//   39  *
//   40  * NOTE: Some modules include a programmable option to disable them in 
//   41  * wait mode. If those modules are programmed to disable in wait mode, 
//   42  * they will not be able to generate interrupts to wake up the core.
//   43  *
//   44  * WAIT mode is exited using any enabled interrupt or RESET, so no
//   45  * exit_wait routine is needed. 
//   46  *
//   47 * If in VLPW mode, the statue of the SMC_PMCTRL[LPWUI] bit determines if 
//   48  * the processor exits to VLPR (LPWUI cleared) or normal run mode (LPWUI 
//   49  * set). The enable_lpwui() and disable_lpwui()functions can be used to set
//   50  * this bit to the desired option prior to calling enter_wait().
//   51  * 
//   52  * 
//   53  * Parameters:
//   54  * none
//   55  */
//   56 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void enter_wait(void)
//   58 {
enter_wait:
        PUSH     {R7,LR}
//   59     wait();
        BL       wait
//   60 }
        POP      {R0,PC}          ;; return
//   61 /********************************************************************/
//   62 /* STOP mode entry routine. Puts the processor into normal stop mode.
//   63  * In this mode core, bus and peripheral clocks are disabled.
//   64  *
//   65  * Mode transitions:
//   66  * RUN -> STOP
//   67  * VLPR -> VLPS
//   68  *
//   69  * This function can be used to enter normal stop mode or VLPS
//   70  * mode. If you are executing in normal run mode when calling this
//   71  * function, then you will enter normal stop mode. If you are in VLPR
//   72  * mode when calling this function, then you will enter VLPS mode instead.
//   73  *
//   74  * STOP mode is exited using any enabled interrupt or RESET, so no
//   75  * exit_stop routine is needed.
//   76  *
//   77  * Parameters:
//   78  * none
//   79  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   80 void enter_stop(void)
//   81 {
enter_stop:
        PUSH     {R7,LR}
//   82     /* Set the STOPM field to 0b000 for normal STOP mode - Need to retain state of LPWUI bit 8 */
//   83     SMC_PMCTRL =  SMC_PMCTRL_STOPM(0);           // set STOPM = 0b000
        LDR      R0,??DataTable7  ;; 0x4007e001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   84     stop();
        BL       stop
//   85 }
        POP      {R0,PC}          ;; return
//   86 /********************************************************************/
//   87 /* VLPR mode entry routine. Puts the processor into very low power
//   88  * run mode. In this mode all clocks are enabled, but the core, bus,
//   89  * and peripheral clocks are limited to 2MHz or less. The flash 
//   90  * clock is limited to 1MHz or less. 
//   91  *
//   92  * Mode transitions:
//   93  * RUN -> VLPR
//   94  *
//   95  * exit_vlpr() function or an interrupt with LPWUI set can be used 
//   96  * to switch from VLPR back to RUN. 
//   97  * 
//   98  * while in VLPR, VLPW or VLPS the exit to VLPR is determined by 
//   99  * the value passed in from the calling program.  
//  100  *
//  101  * LPWUI is static during VLPR mode and 
//  102  * should not be written to during VLPR mode.
//  103  *
//  104  * Parameters:
//  105  * lpwui_value - The input determines what is written to the LPWUI
//  106  *               bit in the PMCTRL register
//  107  *               Clear lpwui and interrupts keep you in VLPR
//  108  *               Set LPWUI and interrupts return you to RUN mode
//  109  * Return value : PMSTAT value or error code
//  110  *                PMSTAT = 
//  111  *                         000_0001 Current power mode is RUN
//  112  *                         000_0100 Current power mode is VLPR
//  113  *                ERROR Code =  0x14 - already in VLPR mode
//  114  *                           =  0x24 - REGONS never clear indicating stop regulation
//  115  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  116 int enter_vlpr(char lpwui_value)
//  117 {
enter_vlpr:
        PUSH     {LR}
//  118   int i; 
//  119   if ((SMC_PMSTAT & SMC_PMSTAT_PMSTAT_MASK)== 4){
        LDR      R1,??DataTable7_1  ;; 0x4007e003
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSLS     R1,R1,#+25       ;; ZeroExtS R1,R1,#+25,#+25
        LSRS     R1,R1,#+25
        CMP      R1,#+4
        BNE      ??enter_vlpr_0
//  120          return 0x14;
        MOVS     R0,#+20
        B        ??enter_vlpr_1
//  121          }
//  122   /* The PMPROT register may have already been written by init code
//  123      If so then this next write is not done.  
//  124      PMPROT is write once after RESET  
//  125      this write-once bit allows the MCU to enter the
//  126      very low power modes: VLPR, VLPW, and VLPS   */
//  127   SMC_PMPROT = SMC_PMPROT_AVLP_MASK;  
??enter_vlpr_0:
        LDR      R1,??DataTable7_2  ;; 0x4007e000
        MOVS     R2,#+32
        STRB     R2,[R1, #+0]
//  128     
//  129   /* Set the [MC1]LPLLSM or [MC2]STOPM field to 0b010 for VLPS mode -
//  130      and RUNM bits to 0b010 for VLPR mode 
//  131      Need to set state of LPWUI bit */
//  132    if(lpwui_value){
        UXTB     R0,R0
        CMP      R0,#+0
        BEQ      ??enter_vlpr_2
//  133      SMC_PMCTRL = SMC_PMCTRL_RUNM(2) |
//  134                    SMC_PMCTRL_STOPM(0x2);
        LDR      R0,??DataTable7  ;; 0x4007e001
        MOVS     R1,#+66
        STRB     R1,[R0, #+0]
        B        ??enter_vlpr_3
//  135    } else {
//  136      SMC_PMCTRL = SMC_PMCTRL_RUNM(2) |
//  137                   SMC_PMCTRL_STOPM(0x2) ;
??enter_vlpr_2:
        LDR      R0,??DataTable7  ;; 0x4007e001
        MOVS     R1,#+66
        STRB     R1,[R0, #+0]
//  138    }          
//  139    /* Wait for VLPS regulator mode to be confirmed */
//  140    for (i = 0 ; i < 10000 ; i++)
??enter_vlpr_3:
        MOVS     R0,#+0
        B        ??enter_vlpr_4
??enter_vlpr_5:
        ADDS     R0,R0,#+1
??enter_vlpr_4:
        LDR      R1,??DataTable7_3  ;; 0x2710
        CMP      R0,R1
        BGE      ??enter_vlpr_6
//  141     {     /* check that the value of REGONS bit is not 0
//  142              once it is a zero we can stop checking */
//  143       if ((PMC_REGSC & PMC_REGSC_REGONS_MASK) ==0x04){
        LDR      R1,??DataTable7_4  ;; 0x4007d002
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSLS     R1,R1,#+29
        BMI      ??enter_vlpr_5
//  144        // 0 Regulator is in stop regulation or in transition to/from it
//  145        // 1 MCU is in Run regulation mode
//  146       }  
//  147       else  break;
//  148     }  
//  149     if ((PMC_REGSC & PMC_REGSC_REGONS_MASK) ==0x04)  return 0x24; 
??enter_vlpr_6:
        LDR      R0,??DataTable7_4  ;; 0x4007d002
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSLS     R0,R0,#+29
        BPL      ??enter_vlpr_7
        MOVS     R0,#+36
        B        ??enter_vlpr_1
//  150     /* [MC2] PMSTAT only exist in Mode Controller 2       */
//  151     if ((SMC_PMSTAT & SMC_PMSTAT_PMSTAT_MASK) == 4)
??enter_vlpr_7:
        LDR      R0,??DataTable7_1  ;; 0x4007e003
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSLS     R0,R0,#+25       ;; ZeroExtS R0,R0,#+25,#+25
        LSRS     R0,R0,#+25
        CMP      R0,#+4
        BNE      ??enter_vlpr_8
//  152          return 0x04;
        MOVS     R0,#+4
        B        ??enter_vlpr_1
//  153     return 0x05;
??enter_vlpr_8:
        MOVS     R0,#+5
??enter_vlpr_1:
        POP      {PC}             ;; return
//  154 }
//  155 /********************************************************************/
//  156 /* VLPR mode exit routine. Puts the processor into normal run mode
//  157  * from VLPR mode. You can transition from VLPR to normal run using
//  158  * this function or an interrupt with LPWUI set. The enable_lpwui() 
//  159  * and disable_lpwui() functions can be used to set LPWUI to the 
//  160  * desired option prior to calling enter_vlpr().
//  161  *
//  162  * Mode transitions:
//  163  * VLPR -> RUN
//  164  *
//  165  * Parameters:
//  166  * none
//  167  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  168 void exit_vlpr(void)
//  169 {
exit_vlpr:
        PUSH     {R7,LR}
//  170     /* check to make sure in VLPR before exiting    */
//  171     if  ((SMC_PMSTAT & SMC_PMSTAT_PMSTAT_MASK)== 4) {
        LDR      R0,??DataTable7_1  ;; 0x4007e003
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSLS     R0,R0,#+25       ;; ZeroExtS R0,R0,#+25,#+25
        LSRS     R0,R0,#+25
        CMP      R0,#+4
        BNE      ??exit_vlpr_0
//  172       
//  173        /* Clear RUNM */
//  174        SMC_PMCTRL &= ~(SMC_PMCTRL_RUNM(0x3));
        LDR      R0,??DataTable7  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+159
        ANDS     R1,R1,R0
        LDR      R0,??DataTable7  ;; 0x4007e001
        STRB     R1,[R0, #+0]
        B        ??exit_vlpr_1
//  175                       
//  176        /* Wait for normal RUN regulation mode to be confirmed */                   
//  177        // 0 MCU is not in run regulation mode
//  178        // 1 MCU is in run regulation mode
//  179        while(!(PMC_REGSC & PMC_REGSC_REGONS_MASK)){
//  180     	 printf(" \n[exit_vlpr] Waiting on REGONS bit to set to indicate Run regulation mode ! ");
??exit_vlpr_2:
        LDR      R0,??DataTable7_5
        BL       printf
//  181          } 
??exit_vlpr_1:
        LDR      R0,??DataTable7_4  ;; 0x4007d002
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL      ??exit_vlpr_2
//  182        
//  183     }  //if in VLPR mode
//  184      // else if not in VLPR ignore call
//  185 }
??exit_vlpr_0:
        POP      {R0,PC}          ;; return
//  186 /***************************************************************/
//  187 /* VLPS mode entry routine. Puts the processor into VLPS mode 
//  188  * directly from normal run mode. 
//  189  *
//  190  * Mode transitions:
//  191  * RUN -> VLPS
//  192  *
//  193  * Note, when VLPS is entered directly from RUN mode, 
//  194  * exit to VLPR is disabled by hardware and the system will
//  195  * always exit back to RUN.
//  196  *
//  197  * If however VLPS mode is entered from VLPR the state of 
//  198  * the LPWUI bit determines the state the MCU will return 
//  199  * to upon exit from VLPS.If LPWUI is set and an interrupt 
//  200  * occurs you will exit to normal run mode instead of VLPR. 
//  201  * If LPWUI is clear and an interrupt occurs you will exit to VLPR.
//  202  *
//  203  * Parameters:  
//  204  * none
//  205  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  206 void enter_vlps(void)
//  207 {
enter_vlps:
        PUSH     {R7,LR}
//  208     /* Write to PMPROT to allow VLPS power modes */
//  209     SMC_PMPROT = SMC_PMPROT_AVLP_MASK;   
        LDR      R0,??DataTable7_2  ;; 0x4007e000
        MOVS     R1,#+32
        STRB     R1,[R0, #+0]
//  210     // write oneif not all set make sure all enabled
//  211     //this write-once bit allows the MCU to enter the
//  212     //very low power modes: VLPR, VLPW, and VLPS.
//  213         
//  214     /* Set the LPLLSM field to 0b010 for VLPS mode - 
//  215        Need to maintain state of LPWUI bit 8 */
//  216      SMC_PMCTRL = (SMC_PMCTRL & (SMC_PMCTRL_RUNM_MASK |
//  217                    SMC_PMCTRL_STOPM(0x2)));
        LDR      R0,??DataTable7  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+98
        ANDS     R1,R1,R0
        LDR      R0,??DataTable7  ;; 0x4007e001
        STRB     R1,[R0, #+0]
//  218 
//  219     /* Now execute the stop instruction to go into VLPS */
//  220     stop();
        BL       stop
//  221 }
        POP      {R0,PC}          ;; return
//  222 /****************************************************************/
//  223 /* LLS mode entry routine. Puts the processor into LLS mode from
//  224  * normal run mode or VLPR. 
//  225  *
//  226  * Mode transitions:
//  227  * RUN -> LLS
//  228  * VLPR -> LLS
//  229  *
//  230  * NOTE: LLS mode will always exit to RUN mode even if you were 
//  231  * in VLPR mode before entering LLS.
//  232  *
//  233  * Wakeup from LLS mode is controlled by the LLWU module. Most
//  234  * modules cannot issue a wakeup interrupt in LLS mode, so make
//  235  * sure to setup the desired wakeup sources in the LLWU before 
//  236  * calling this function.
//  237  *
//  238  * Parameters:
//  239  * none
//  240  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  241 void enter_lls(void)
//  242 {
enter_lls:
        PUSH     {R7,LR}
//  243     /* Write to PMPROT to allow LLS power modes */
//  244     //SMC_PMPROT = SMC_PMPROT_ALLS_MASK;   
//  245     /*this write-once bit allows the MCU to enter the
//  246       LLS low power mode    */
//  247       
//  248     /* Set the [MC1] LPLLSM or [MC2]STOPM field to 0b011 for LLS mode  
//  249        retain LPWUI and RUNM */
//  250     SMC_PMCTRL = (SMC_PMCTRL | SMC_PMCTRL_STOPM(0x3)); 
        LDR      R0,??DataTable7  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+3
        ORRS     R1,R1,R0
        LDR      R0,??DataTable7  ;; 0x4007e001
        STRB     R1,[R0, #+0]
//  251     
//  252     dummyread = SMC_PMCTRL;
        LDR      R0,??DataTable7_6
        LDR      R1,??DataTable7  ;; 0x4007e001
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        STR      R1,[R0, #+0]
//  253  
//  254     /* Now execute the stop instruction to go into LLS */
//  255     stop();
        BL       stop
//  256 }
        POP      {R0,PC}          ;; return
//  257 /***************************************************************/
//  258 /* VLLS3 mode entry routine. Puts the processor into 
//  259  * VLLS3 mode from normal run mode or VLPR. 
//  260  *
//  261  * Mode transitions:
//  262  * RUN -> VLLS3
//  263  * VLPR -> VLLS3
//  264  *
//  265  * NOTE: VLLSx modes will always exit to RUN mode even if you were 
//  266  * in VLPR mode before entering VLLSx.
//  267  *
//  268  * Wakeup from VLLSx mode is controlled by the LLWU module. Most
//  269  * modules cannot issue a wakeup interrupt in VLLSx mode, so make
//  270  * sure to setup the desired wakeup sources in the LLWU before 
//  271  * calling this function.
//  272  *
//  273  * Parameters:
//  274  * none  
//  275  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  276 void enter_vlls3(void)
//  277 {
enter_vlls3:
        PUSH     {R7,LR}
//  278     /* Write to PMPROT to allow VLLS3 power modes */
//  279     SMC_PMPROT = SMC_PMPROT_AVLLS_MASK;
        LDR      R0,??DataTable7_2  ;; 0x4007e000
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  280         
//  281     /* Set the [MC1] VLLSM [MC2] STOPM field to 0b100 for VLLSx  
//  282     - Retain state of LPWUI and RUNM */
//  283     SMC_PMCTRL = (SMC_PMCTRL & (SMC_PMCTRL_RUNM_MASK |
//  284                                 SMC_PMCTRL_STOPM(0x4))); 
        LDR      R0,??DataTable7  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        ANDS     R1,R1,R0
        LDR      R0,??DataTable7  ;; 0x4007e001
        STRB     R1,[R0, #+0]
//  285     /*[MC2] Set the state of the VLLSM bits in the SMC_STOPCTRL
//  286     SMC_STOPCTRL =  SMC_STOPCTRL_VLLSM(3);   // set VLLSM = 0b11
//  287 */
//  288     /* Now execute the stop instruction to go into VLLS3 */
//  289     stop();
        BL       stop
//  290 }
        POP      {R0,PC}          ;; return
//  291 /***************************************************************/
//  292 /* VLLS2 mode entry routine. Puts the processor into 
//  293  * VLLS2 mode from normal run mode or VLPR. 
//  294  *
//  295  * Mode transitions:
//  296  * RUN -> VLLS2
//  297  * VLPR -> VLLS2
//  298  *
//  299  * NOTE: VLLSx modes will always exit to RUN mode even  
//  300  *       if you werein VLPR mode before entering VLLSx.
//  301  *
//  302  * Wakeup from VLLSx mode is controlled by the LLWU module. Most
//  303  * modules cannot issue a wakeup interrupt in VLLSx mode, so make
//  304  * sure to setup the desired wakeup sources in the LLWU before 
//  305  * calling this function.
//  306  *
//  307  * Parameters:
//  308  * none  
//  309  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  310 void enter_vlls2(void)
//  311 {
enter_vlls2:
        PUSH     {R7,LR}
//  312     /* Write to PMPROT to allow VLLS2 power modes */
//  313     SMC_PMPROT = SMC_PMPROT_AVLLS_MASK;
        LDR      R0,??DataTable7_2  ;; 0x4007e000
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  314         
//  315     /* Set the [MC1] VLLSM [MC2] STOPM field to 0b100 for VLLSx  
//  316     - Retain state of LPWUI and RUNM */
//  317     SMC_PMCTRL = (SMC_PMCTRL & (SMC_PMCTRL_RUNM_MASK |
//  318                                 SMC_PMCTRL_STOPM(0x4))); 
        LDR      R0,??DataTable7  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        ANDS     R1,R1,R0
        LDR      R0,??DataTable7  ;; 0x4007e001
        STRB     R1,[R0, #+0]
//  319     /*[MC2] Set the state of the VLLSM bits in the SMC_STOPCTRL
//  320     SMC_STOPCTRL =  SMC_STOPCTRL_VLLSM(2);   // set VLLSM = 0b10
//  321         */
//  322     /* Now execute the stop instruction to go into VLLS2 */
//  323     stop();
        BL       stop
//  324 }
        POP      {R0,PC}          ;; return
//  325 /***************************************************************/
//  326 /* VLLS1 mode entry routine. Puts the processor into 
//  327  * VLLS1 mode from normal run mode or VLPR. 
//  328  *
//  329  * Mode transitions:
//  330  * RUN -> VLLS1
//  331  * VLPR -> VLLS1
//  332  *
//  333  * NOTE: VLLSx modes will always exit to RUN mode even if you were 
//  334  * in VLPR mode before entering VLLSx.
//  335  *
//  336  * Wakeup from VLLSx mode is controlled by the LLWU module. Most
//  337  * modules cannot issue a wakeup interrupt in VLLSx mode, so make
//  338  * sure to setup the desired wakeup sources in the LLWU before 
//  339  * calling this function.
//  340  *
//  341  * Parameters:
//  342  * none  
//  343  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  344 void enter_vlls1(void)
//  345 {
enter_vlls1:
        PUSH     {R7,LR}
//  346     /* Write to PMPROT to allow all possible power modes */
//  347     SMC_PMPROT = SMC_PMPROT_AVLLS_MASK;
        LDR      R0,??DataTable7_2  ;; 0x4007e000
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  348     /* Set the [MC1] VLLSM [MC2] STOPM field to 0b100 for VLLSx  
//  349     - Retain state of LPWUI and RUNM */
//  350     SMC_PMCTRL = (SMC_PMCTRL & (SMC_PMCTRL_RUNM_MASK |
//  351                                 SMC_PMCTRL_STOPM(0x4))); 
        LDR      R0,??DataTable7  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        ANDS     R1,R1,R0
        LDR      R0,??DataTable7  ;; 0x4007e001
        STRB     R1,[R0, #+0]
//  352     /*[MC2] Set the state of the VLLSM bits in the SMC_STOPCTRL
//  353     SMC_STOPCTRL =  SMC_STOPCTRL_VLLSM(1);   // set VLLSM = 0b01
//  354        */
//  355     /* Now execute the stop instruction to go into VLLS1 */
//  356     stop();
        BL       stop
//  357 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x4007e001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x4007e003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x4007e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x2710

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x4007d002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     `?<Constant " \\n[exit_vlpr] Waiting...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     dummyread

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " \\n[exit_vlpr] Waiting...">`:
        DATA
        DC8 20H, 0AH, 5BH, 65H, 78H, 69H, 74H, 5FH
        DC8 76H, 6CH, 70H, 72H, 5DH, 20H, 57H, 61H
        DC8 69H, 74H, 69H, 6EH, 67H, 20H, 6FH, 6EH
        DC8 20H, 52H, 45H, 47H, 4FH, 4EH, 53H, 20H
        DC8 62H, 69H, 74H, 20H, 74H, 6FH, 20H, 73H
        DC8 65H, 74H, 20H, 74H, 6FH, 20H, 69H, 6EH
        DC8 64H, 69H, 63H, 61H, 74H, 65H, 20H, 52H
        DC8 75H, 6EH, 20H, 72H, 65H, 67H, 75H, 6CH
        DC8 61H, 74H, 69H, 6FH, 6EH, 20H, 6DH, 6FH
        DC8 64H, 65H, 20H, 21H, 20H, 0
        DC8 0, 0

        END
//  358 /***************************************************************/
//  359 /* Enable low power wake up on interrupt. This function can be used
//  360  * to set the LPWUI bit. When this bit is set VLPx modes will exit
//  361  * to normal run mode. When this bit is cleared VLPx modes will exit
//  362  * to VLPR mode.
//  363  *
//  364  * The disable_lpwui() function can be used to clear the LPWUI bit.
//  365  *
//  366  * Parameters:
//  367  * none
//  368  */
//  369 
//  370    
//  371 
//  372 /********************************************************************/
//  373 
//  374 
//  375 
// 
//   4 bytes in section .bss
//  80 bytes in section .rodata
// 334 bytes in section .text
// 
// 334 bytes of CODE  memory
//  80 bytes of CONST memory
//   4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
