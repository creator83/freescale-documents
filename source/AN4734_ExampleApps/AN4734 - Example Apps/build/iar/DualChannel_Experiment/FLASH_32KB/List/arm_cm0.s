///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:29 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\cpu\arm_cm0.c                              /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\cpu\arm_cm0.c" -D IAR -D FRDM -D EX2 -lCN  /
//                    "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
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
//                    st\arm_cm0.s                                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME arm_cm0

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_idivmod
        EXTERN printf

        PUBLIC disable_irq
        PUBLIC enable_irq
        PUBLIC set_irq_priority
        PUBLIC stop
        PUBLIC wait
        PUBLIC write_vtor

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\cpu\arm_cm0.c
//    1 /*
//    2  * File:		arm_cm4.c
//    3  * Purpose:		Generic high-level routines for ARM Cortex M4 processors
//    4  *
//    5  * Notes:
//    6  */
//    7 
//    8 #include "common.h"
//    9 
//   10 /***********************************************************************/
//   11 /*
//   12  * Configures the ARM system control register for STOP (deep sleep) mode
//   13  * and then executes the WFI instruction to enter the mode.
//   14  *
//   15  * Parameters:
//   16  * none
//   17  *
//   18  * Note: Might want to change this later to allow for passing in a parameter
//   19  *       to optionally set the sleep on exit bit.
//   20  */
//   21 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   22 void stop (void)
//   23 {
//   24 	/* Set the SLEEPDEEP bit to enable deep sleep mode (STOP) */
//   25 	SCB_SCR |= SCB_SCR_SLEEPDEEP_MASK;	
stop:
        LDR      R0,??DataTable5  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5  ;; 0xe000ed10
        STR      R1,[R0, #+0]
//   26 
//   27 	/* WFI instruction will start entry into STOP mode */
//   28 #ifndef KEIL
//   29 	asm("WFI");
        WFI
//   30 #else
//   31 	__wfi();
//   32 #endif
//   33         /*if((SMC_PMCTRL & SMC_PMCTRL_STOPA_MASK) == SMC_PMCTRL_STOPA_MASK)
//   34         {
//   35             PORTA_PCR15 = PORT_PCR_MUX(0x1);
//   36             
//   37             FGPIOA_PDDR = 0xFFFF;
//   38             FGPIOA_PSOR = 0xFFFF;
//   39         }*/
//   40 }
        BX       LR               ;; return
//   41 /***********************************************************************/
//   42 /*
//   43  * Configures the ARM system control register for WAIT (sleep) mode
//   44  * and then executes the WFI instruction to enter the mode.
//   45  *
//   46  * Parameters:
//   47  * none
//   48  *
//   49  * Note: Might want to change this later to allow for passing in a parameter
//   50  *       to optionally set the sleep on exit bit.
//   51  */
//   52 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   53 void wait (void)
//   54 {
//   55 	/* Clear the SLEEPDEEP bit to make sure we go into WAIT (sleep) mode instead
//   56 	 * of deep sleep.
//   57 	 */
//   58 	SCB_SCR &= ~SCB_SCR_SLEEPDEEP_MASK;	
wait:
        LDR      R0,??DataTable5  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        BICS     R0,R0,R1
        LDR      R1,??DataTable5  ;; 0xe000ed10
        STR      R0,[R1, #+0]
//   59 
//   60 	/* WFI instruction will start entry into WAIT mode */
//   61 #ifndef KEIL
//   62 	asm("WFI");
        WFI
//   63 #else
//   64     __wfi();
//   65 #endif
//   66 }
        BX       LR               ;; return
//   67 /***********************************************************************/
//   68 /*
//   69  * Change the value of the vector table offset register to the specified value.
//   70  *
//   71  * Parameters:
//   72  * vtor     new value to write to the VTOR
//   73  */
//   74 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   75 void write_vtor (int vtor)
//   76 {
//   77         /* Write the VTOR with the new value */
//   78         SCB_VTOR = vtor;	
write_vtor:
        LDR      R1,??DataTable5_1  ;; 0xe000ed08
        STR      R0,[R1, #+0]
//   79 }
        BX       LR               ;; return
//   80 /***********************************************************************/
//   81 /*
//   82  * Initialize the NVIC to enable the specified IRQ.
//   83  * 
//   84  * NOTE: The function only initializes the NVIC to enable a single IRQ. 
//   85  * Interrupts will also need to be enabled in the ARM core. This can be 
//   86  * done using the EnableInterrupts macro.
//   87  *
//   88  * Parameters:
//   89  * irq    irq number to be enabled (the irq number NOT the vector number)
//   90  */
//   91 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 void enable_irq (int irq)
//   93 {   
enable_irq:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//   94     /* Make sure that the IRQ is an allowable number. Up to 48 is 
//   95      * used.
//   96      */
//   97     if (irq > 48)
        CMP      R4,#+49
        BLT      ??enable_irq_0
//   98         printf("\nERR! Invalid IRQ value passed to enable irq function!\n");
        LDR      R0,??DataTable5_2
        BL       printf
        B        ??enable_irq_1
//   99     else
//  100     {
//  101       /* Determine which of the NVICISERs corresponds to the irq */
//  102       NVIC_ICPR |= 1 << (irq%32);
??enable_irq_0:
        LDR      R0,??DataTable5_3  ;; 0xe000e280
        LDR      R5,[R0, #+0]
        MOVS     R6,#+1
        MOVS     R0,R4
        MOVS     R1,#+32
        BL       __aeabi_idivmod
        LSLS     R6,R6,R1
        ORRS     R6,R6,R5
        LDR      R0,??DataTable5_3  ;; 0xe000e280
        STR      R6,[R0, #+0]
//  103       NVIC_ISER |= 1 << (irq%32);
        LDR      R0,??DataTable5_4  ;; 0xe000e100
        LDR      R5,[R0, #+0]
        MOVS     R6,#+1
        MOVS     R0,R4
        MOVS     R1,#+32
        BL       __aeabi_idivmod
        LSLS     R6,R6,R1
        ORRS     R6,R6,R5
        LDR      R0,??DataTable5_4  ;; 0xe000e100
        STR      R6,[R0, #+0]
//  104     }
//  105 }
??enable_irq_1:
        POP      {R4-R6,PC}       ;; return
//  106 /***********************************************************************/
//  107 /*
//  108  * Initialize the NVIC to disable the specified IRQ.
//  109  * 
//  110  * NOTE: The function only initializes the NVIC to disable a single IRQ. 
//  111  * If you want to disable all interrupts, then use the DisableInterrupts
//  112  * macro instead. 
//  113  *
//  114  * Parameters:
//  115  * irq    irq number to be disabled (the irq number NOT the vector number)
//  116  */
//  117 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 void disable_irq (int irq)
//  119 {
disable_irq:
        PUSH     {R4,LR}
//  120     
//  121     /* Make sure that the IRQ is an allowable number. Right now up to 48 is 
//  122      * used.
//  123      */
//  124     if (irq > 48)
        CMP      R0,#+49
        BLT      ??disable_irq_0
//  125         printf("\nERR! Invalid IRQ value passed to disable irq function!\n");
        LDR      R0,??DataTable5_5
        BL       printf
        B        ??disable_irq_1
//  126     else
//  127       /* Determine which of the NVICICERs corresponds to the irq */
//  128       NVIC_ICER = 1 << (irq%32);
??disable_irq_0:
        MOVS     R4,#+1
        MOVS     R1,#+32
        BL       __aeabi_idivmod
        LSLS     R4,R4,R1
        LDR      R0,??DataTable5_6  ;; 0xe000e180
        STR      R4,[R0, #+0]
//  129 }
??disable_irq_1:
        POP      {R4,PC}          ;; return
//  130 /***********************************************************************/
//  131 /*
//  132  * Initialize the NVIC to set specified IRQ priority.
//  133  * 
//  134  * NOTE: The function only initializes the NVIC to set a single IRQ priority. 
//  135  * Interrupts will also need to be enabled in the ARM core. This can be 
//  136  * done using the EnableInterrupts macro.
//  137  *
//  138  * Parameters:
//  139  * irq    irq number to be enabled (the irq number NOT the vector number)
//  140  * prio   irq priority. 0-3 levels. 0 max priority
//  141  */
//  142 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  143 void set_irq_priority (int irq, int prio)
//  144 {   
set_irq_priority:
        PUSH     {R4-R6,LR}
        MOVS     R5,R0
        MOVS     R4,R1
//  145     uint32 temp1, temp2;
//  146     /* Make sure that the IRQ is an allowable number. Right now up to 48 is 
//  147      * used.
//  148      */
//  149     if (irq > 32)
        CMP      R5,#+33
        BLT      ??set_irq_priority_0
//  150         printf("\nERR! Invalid IRQ value passed to priority irq function!\n");
        LDR      R0,??DataTable5_7
        BL       printf
//  151 
//  152     if (prio > 3)
??set_irq_priority_0:
        CMP      R4,#+4
        BLT      ??set_irq_priority_1
//  153     {
//  154         printf("\nERR! Invalid priority value passed to priority irq function!\n");
        LDR      R0,??DataTable5_8
        BL       printf
        B        ??set_irq_priority_2
//  155     }
//  156     else if (irq >15)
??set_irq_priority_1:
        CMP      R5,#+16
        BLT      ??set_irq_priority_3
//  157     {
//  158         temp1 = NVIC_IPR1; 
        LDR      R0,??DataTable5_9  ;; 0xe000e404
        LDR      R6,[R0, #+0]
//  159         temp2 = 8 * (irq % 4) + 6;
        MOVS     R0,R5
        MOVS     R1,#+4
        BL       __aeabi_idivmod
        MOVS     R0,#+8
        MULS     R1,R0,R1
        ADDS     R1,R1,#+6
//  160         temp1 &= ~(3 << temp2);
        MOVS     R0,#+3
        LSLS     R0,R0,R1
        BICS     R6,R6,R0
//  161         temp1 |= (prio << temp2);
        LSLS     R4,R4,R1
        ORRS     R4,R4,R6
        MOVS     R6,R4
//  162         NVIC_IPR1 = temp1;
        LDR      R0,??DataTable5_9  ;; 0xe000e404
        STR      R6,[R0, #+0]
        B        ??set_irq_priority_2
//  163     }
//  164     else if (irq <= 15)
??set_irq_priority_3:
        CMP      R5,#+16
        BGE      ??set_irq_priority_2
//  165     {
//  166         temp1 = NVIC_IPR0; 
        LDR      R0,??DataTable5_10  ;; 0xe000e400
        LDR      R6,[R0, #+0]
//  167         temp2 = 8 * (irq % 4) + 6;
        MOVS     R0,R5
        MOVS     R1,#+4
        BL       __aeabi_idivmod
        MOVS     R0,#+8
        MULS     R1,R0,R1
        ADDS     R1,R1,#+6
//  168         temp1 &= ~(3 << temp2);
        MOVS     R0,#+3
        LSLS     R0,R0,R1
        BICS     R6,R6,R0
//  169         temp1 |= (prio << temp2);
        LSLS     R4,R4,R1
        ORRS     R4,R4,R6
        MOVS     R6,R4
//  170         NVIC_IPR0 = temp1;
        LDR      R0,??DataTable5_10  ;; 0xe000e400
        STR      R6,[R0, #+0]
//  171     }
//  172     else
//  173     {}
//  174     /* Determine which of the NVICIPx corresponds to the irq */
//  175     //prio_reg = (uint8 *)(((uint32)&NVIC_IP) + irq);
//  176     /* Assign priority to IRQ */
//  177     //*prio_reg = ( (prio&0x3) << (8 - ARM_INTERRUPT_LEVEL_BITS) );             
//  178 }
??set_irq_priority_2:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     `?<Constant "\\nERR! Invalid IRQ val...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0xe000e280

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     `?<Constant "\\nERR! Invalid IRQ val...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     `?<Constant "\\nERR! Invalid IRQ val...">_2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     `?<Constant "\\nERR! Invalid priorit...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0xe000e404

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0xe000e400

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nERR! Invalid IRQ val...">`:
        DATA
        DC8 0AH, 45H, 52H, 52H, 21H, 20H, 49H, 6EH
        DC8 76H, 61H, 6CH, 69H, 64H, 20H, 49H, 52H
        DC8 51H, 20H, 76H, 61H, 6CH, 75H, 65H, 20H
        DC8 70H, 61H, 73H, 73H, 65H, 64H, 20H, 74H
        DC8 6FH, 20H, 65H, 6EH, 61H, 62H, 6CH, 65H
        DC8 20H, 69H, 72H, 71H, 20H, 66H, 75H, 6EH
        DC8 63H, 74H, 69H, 6FH, 6EH, 21H, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nERR! Invalid IRQ val...">_1`:
        DATA
        DC8 0AH, 45H, 52H, 52H, 21H, 20H, 49H, 6EH
        DC8 76H, 61H, 6CH, 69H, 64H, 20H, 49H, 52H
        DC8 51H, 20H, 76H, 61H, 6CH, 75H, 65H, 20H
        DC8 70H, 61H, 73H, 73H, 65H, 64H, 20H, 74H
        DC8 6FH, 20H, 64H, 69H, 73H, 61H, 62H, 6CH
        DC8 65H, 20H, 69H, 72H, 71H, 20H, 66H, 75H
        DC8 6EH, 63H, 74H, 69H, 6FH, 6EH, 21H, 0AH
        DC8 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nERR! Invalid IRQ val...">_2`:
        DATA
        DC8 0AH, 45H, 52H, 52H, 21H, 20H, 49H, 6EH
        DC8 76H, 61H, 6CH, 69H, 64H, 20H, 49H, 52H
        DC8 51H, 20H, 76H, 61H, 6CH, 75H, 65H, 20H
        DC8 70H, 61H, 73H, 73H, 65H, 64H, 20H, 74H
        DC8 6FH, 20H, 70H, 72H, 69H, 6FH, 72H, 69H
        DC8 74H, 79H, 20H, 69H, 72H, 71H, 20H, 66H
        DC8 75H, 6EH, 63H, 74H, 69H, 6FH, 6EH, 21H
        DC8 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nERR! Invalid priorit...">`:
        DATA
        DC8 0AH, 45H, 52H, 52H, 21H, 20H, 49H, 6EH
        DC8 76H, 61H, 6CH, 69H, 64H, 20H, 70H, 72H
        DC8 69H, 6FH, 72H, 69H, 74H, 79H, 20H, 76H
        DC8 61H, 6CH, 75H, 65H, 20H, 70H, 61H, 73H
        DC8 73H, 65H, 64H, 20H, 74H, 6FH, 20H, 70H
        DC8 72H, 69H, 6FH, 72H, 69H, 74H, 79H, 20H
        DC8 69H, 72H, 71H, 20H, 66H, 75H, 6EH, 63H
        DC8 74H, 69H, 6FH, 6EH, 21H, 0AH, 0
        DC8 0

        END
//  179 /***********************************************************************/
//  180 
// 
// 240 bytes in section .rodata
// 282 bytes in section .text
// 
// 282 bytes of CODE  memory
// 240 bytes of CONST memory
//
//Errors: none
//Warnings: none
