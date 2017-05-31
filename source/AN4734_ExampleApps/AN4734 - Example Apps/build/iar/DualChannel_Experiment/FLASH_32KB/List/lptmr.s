///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:30 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\lptmr\lptmr.c                      /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\lptmr\lptmr.c" -D IAR -D FRDM -D   /
//                    EX2 -lCN "D:\Profiles\B38350\My Documents\App           /
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
//                    st\lptmr.s                                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME lptmr

        #define SHT_PROGBITS 0x1

        EXTERN enable_irq

        PUBLIC lptmr_init
        PUBLIC lptmr_isr
        PUBLIC time_delay_ms

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\drivers\lptmr\lptmr.c
//    1 /*
//    2  * File:        lptmr.c
//    3  * Purpose:     Provide common low power timer functions
//    4  *
//    5  * Notes:       Right now only function provided is used
//    6  *              to generate a delay in ms. This driver
//    7  *              could be expanded to include more functions
//    8  *              in the future.
//    9  *
//   10  */
//   11 
//   12 
//   13 #include "common.h"
//   14 #include "lptmr.h"
//   15 
//   16 
//   17 extern int re_init_clk;
//   18 extern int clock_freq_hz;
//   19 
//   20 /********************************************************************/
//   21 /*
//   22  * Initialize the low power time to provide a delay measured in ms.
//   23  *
//   24  *
//   25  * Parameters:
//   26  *  count_val   number of ms to delay
//   27  *
//   28  * Returns:
//   29  * None
//   30  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   31 void time_delay_ms(uint32 count_val)
//   32 {
time_delay_ms:
        PUSH     {LR}
//   33   /* Make sure the clock to the LPTMR is enabled */
//   34   SIM_SCGC5|=SIM_SCGC5_LPTMR_MASK;
        LDR      R1,??DataTable2  ;; 0x40048038
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        ORRS     R2,R2,R1
        LDR      R1,??DataTable2  ;; 0x40048038
        STR      R2,[R1, #+0]
//   35 
//   36   /* Reset LPTMR settings */
//   37   LPTMR0_CSR=0;
        LDR      R1,??DataTable2_1  ;; 0x40040000
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//   38 
//   39   /* Set the compare value to the number of ms to delay */
//   40   LPTMR0_CMR = count_val;
        LDR      R1,??DataTable2_2  ;; 0x40040008
        STR      R0,[R1, #+0]
//   41 
//   42   /* Set up LPTMR to use 1kHz LPO with no prescaler as its clock source */
//   43   LPTMR0_PSR = LPTMR_PSR_PCS(1)|LPTMR_PSR_PBYP_MASK;
        LDR      R0,??DataTable2_3  ;; 0x40040004
        MOVS     R1,#+5
        STR      R1,[R0, #+0]
//   44 
//   45   /* Start the timer */
//   46   LPTMR0_CSR |= LPTMR_CSR_TEN_MASK;
        LDR      R0,??DataTable2_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_1  ;; 0x40040000
        STR      R1,[R0, #+0]
//   47 
//   48   /* Wait for counter to reach compare value */
//   49   while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK));
??time_delay_ms_0:
        LDR      R0,??DataTable2_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL      ??time_delay_ms_0
//   50 
//   51   /* Disable counter and Clear Timer Compare Flag */
//   52   LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;
        LDR      R0,??DataTable2_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        BICS     R0,R0,R1
        LDR      R1,??DataTable2_1  ;; 0x40040000
        STR      R0,[R1, #+0]
//   53 
//   54   return;
        POP      {PC}             ;; return
//   55 }
//   56 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void lptmr_isr(void)
//   58 {
//   59 
//   60   // printf("\n****LPT ISR entered*****\r\n");
//   61   // write 1 to TCF to clear the LPT timer compare flag
//   62   LPTMR0_CSR |=  LPTMR_CSR_TCF_MASK;   
lptmr_isr:
        LDR      R0,??DataTable2_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_1  ;; 0x40040000
        STR      R1,[R0, #+0]
//   63 }
        BX       LR               ;; return
//   64 /*******************************************************************************
//   65 *
//   66 *   PROCEDURE NAME:
//   67 *       lptmr_init -
//   68 *
//   69 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   70 void lptmr_init(int count, int clock_source)
//   71 {
lptmr_init:
        PUSH     {R7,LR}
//   72     SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;
        LDR      R2,??DataTable2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        MOVS     R3,#+1
        ORRS     R3,R3,R2
        LDR      R2,??DataTable2  ;; 0x40048038
        STR      R3,[R2, #+0]
//   73     // disable LPTMR
//   74     LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK; 
        LDR      R2,??DataTable2_1  ;; 0x40040000
        LDR      R2,[R2, #+0]
        MOVS     R3,#+1
        BICS     R2,R2,R3
        LDR      R3,??DataTable2_1  ;; 0x40040000
        STR      R2,[R3, #+0]
//   75     // select LPO for RTC and LPTMR
//   76     LPTMR0_PSR = ( LPTMR_PSR_PRESCALE(0) // 0000 is div 2
//   77                  | LPTMR_PSR_PBYP_MASK  // LPO feeds directly to LPT
//   78                  | LPTMR_PSR_PCS(clock_source)) ; // use the choice of clock
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        MOVS     R2,#+4
        ORRS     R2,R2,R1
        LDR      R1,??DataTable2_3  ;; 0x40040004
        STR      R2,[R1, #+0]
//   79               
//   80     LPTMR0_CMR = LPTMR_CMR_COMPARE(count);  //Set compare value
        UXTH     R0,R0
        LDR      R1,??DataTable2_2  ;; 0x40040008
        STR      R0,[R1, #+0]
//   81 	// clear flag
//   82 	LPTMR0_CSR |=  LPTMR_CSR_TCF_MASK; 
        LDR      R0,??DataTable2_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_1  ;; 0x40040000
        STR      R1,[R0, #+0]
//   83 	
//   84     LPTMR0_CSR =(  LPTMR_CSR_TCF_MASK   // Clear any pending interrupt
//   85                  | LPTMR_CSR_TIE_MASK   // LPT interrupt enabled
//   86                  );
        LDR      R0,??DataTable2_1  ;; 0x40040000
        MOVS     R1,#+192
        STR      R1,[R0, #+0]
//   87 	
//   88     LPTMR0_CSR |= LPTMR_CSR_TEN_MASK;   //Turn on LPT and start counting
        LDR      R0,??DataTable2_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_1  ;; 0x40040000
        STR      R1,[R0, #+0]
//   89     
//   90     enable_irq(28);
        MOVS     R0,#+28
        BL       enable_irq
//   91 
//   92 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x40040008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x40040004

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 176 bytes in section .text
// 
// 176 bytes of CODE memory
//
//Errors: none
//Warnings: none
