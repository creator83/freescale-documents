///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:32 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\uart\uart.c                        /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\uart\uart.c" -D IAR -D FRDM -D     /
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
//                    st\uart.s                                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME uart

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_idiv

        PUBLIC uart0_getchar
        PUBLIC uart0_getchar_present
        PUBLIC uart0_init
        PUBLIC uart0_putchar

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\drivers\uart\uart.c
//    1 /*
//    2  * File:        uart.c
//    3  * Purpose:     Provide common uart routines for serial IO
//    4  *
//    5  * Notes:       
//    6  *              
//    7  */
//    8 
//    9 #include "common.h"
//   10 #include "uart.h"
//   11 
//   12 /***************************************************************************
//   13  * Begin UART0 functions
//   14  **************************************************************************/
//   15 /********************************************************************/
//   16 /*
//   17  * Initialize the uart for 8N1 operation, interrupts disabled, and
//   18  * no hardware flow-control
//   19  *
//   20  * NOTE: Since the uarts are pinned out in multiple locations on most
//   21  *       Kinetis devices, this driver does not enable uart pin functions.
//   22  *       The desired pins should be enabled before calling this init function.
//   23  *
//   24  * Parameters:
//   25  *  uartch      uart channel to initialize
//   26  *  sysclk      uart module Clock in kHz(used to calculate baud)
//   27  *  baud        uart baud rate
//   28  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 void uart0_init (UART0_MemMapPtr uartch, int uart0clk, int baud)
//   30 {
uart0_init:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R1
        MOVS     R1,R2
//   31     register uint16 sbr;
//   32     uint8 temp;
//   33     
//   34     SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;
        LDR      R2,??DataTable0  ;; 0x40048034
        LDR      R2,[R2, #+0]
        MOVS     R3,#+128
        LSLS     R3,R3,#+3        ;; #+1024
        ORRS     R3,R3,R2
        LDR      R2,??DataTable0  ;; 0x40048034
        STR      R3,[R2, #+0]
//   35     
//   36     /* Make sure that the transmitter and receiver are disabled while we 
//   37      * change settings.
//   38      */
//   39     UART0_C2_REG(uartch) &= ~(UART0_C2_TE_MASK
//   40 				| UART0_C2_RE_MASK );
        LDRB     R2,[R4, #+3]
        MOVS     R3,#+243
        ANDS     R3,R3,R2
        STRB     R3,[R4, #+3]
//   41 
//   42       /* Configure the uart for 8-bit mode, no parity */
//   43     UART0_C1_REG(uartch) = 0;	/* We need all default settings, so entire register is cleared */
        MOVS     R2,#+0
        STRB     R2,[R4, #+2]
//   44     
//   45       /* Calculate baud settings */
//   46     temp = UART0_C4;
        LDR      R2,??DataTable0_1  ;; 0x4006a00a
        LDRB     R2,[R2, #+0]
//   47     temp = (temp & UART0_C4_OSR_MASK) + 1;
        LSLS     R2,R2,#+27       ;; ZeroExtS R2,R2,#+27,#+27
        LSRS     R2,R2,#+27
        ADDS     R2,R2,#+1
//   48     sbr = (uint16)((uart0clk)/(baud * (temp)));
        UXTB     R2,R2
        MULS     R1,R2,R1
        BL       __aeabi_idiv
//   49     
//   50         
//   51     /* Save off the current value of the uartx_BDH except for the SBR field */
//   52     temp = UART0_BDH_REG(uartch) & ~(UART0_BDH_SBR(0x1F));
        LDRB     R1,[R4, #+0]
        MOVS     R2,#+224
        ANDS     R2,R2,R1
//   53    
//   54     UART0_BDH_REG(uartch) = temp |  UART0_BDH_SBR(((sbr & 0x1F00) >> 8));
        MOVS     R1,R0
        UXTH     R1,R1
        LSRS     R1,R1,#+8
        LSLS     R1,R1,#+27       ;; ZeroExtS R1,R1,#+27,#+27
        LSRS     R1,R1,#+27
        ORRS     R1,R1,R2
        STRB     R1,[R4, #+0]
//   55     UART0_BDL_REG(uartch) = (uint8)(sbr & UART0_BDL_SBR_MASK);
        STRB     R0,[R4, #+1]
//   56 
//   57     /* Enable receiver and transmitter */
//   58     UART0_C2_REG(uartch) |= (UART0_C2_TE_MASK
//   59               		  | UART0_C2_RE_MASK );
        LDRB     R0,[R4, #+3]
        MOVS     R1,#+12
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+3]
//   60     
//   61 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0x4006a00a
//   62 /********************************************************************/
//   63 /*
//   64  * Wait for a character to be received on the specified uart
//   65  *
//   66  * Parameters:
//   67  *  channel      uart channel to read from
//   68  *
//   69  * Return Values:
//   70  *  the received character
//   71  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   72 char uart0_getchar (UART0_MemMapPtr channel)
//   73 {
uart0_getchar:
        PUSH     {LR}
//   74       /* Wait until character has been received */
//   75       while (!(UART0_S1_REG(channel) & UART0_S1_RDRF_MASK));
??uart0_getchar_0:
        LDRB     R1,[R0, #+4]
        LSLS     R1,R1,#+26
        BPL      ??uart0_getchar_0
//   76     
//   77       /* Return the 8-bit data from the receiver */
//   78       return UART0_D_REG(channel);
        LDRB     R0,[R0, #+7]
        POP      {PC}             ;; return
//   79 }
//   80 /********************************************************************/
//   81 /*
//   82  * Wait for space in the uart Tx FIFO and then send a character
//   83  *
//   84  * Parameters:
//   85  *  channel      uart channel to send to
//   86  *  ch			 character to send
//   87  */ 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   88 void uart0_putchar (UART0_MemMapPtr channel, char ch)
//   89 {
uart0_putchar:
        PUSH     {LR}
//   90       /* Wait until space is available in the FIFO */
//   91       while(!(UART0_S1_REG(channel) & UART0_S1_TDRE_MASK));
??uart0_putchar_0:
        LDRB     R2,[R0, #+4]
        LSLS     R2,R2,#+24
        BPL      ??uart0_putchar_0
//   92     
//   93       /* Send the character */
//   94       UART0_D_REG(channel) = (uint8)ch;
        STRB     R1,[R0, #+7]
//   95     
//   96  }
        POP      {PC}             ;; return
//   97 /********************************************************************/
//   98 /*
//   99  * Check to see if a character has been received
//  100  *
//  101  * Parameters:
//  102  *  channel      uart channel to check for a character
//  103  *
//  104  * Return values:
//  105  *  0       No character received
//  106  *  1       Character has been received
//  107  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  108 int uart0_getchar_present (UART0_MemMapPtr channel)
//  109 {
//  110     return (UART0_S1_REG(channel) & UART0_S1_RDRF_MASK);
uart0_getchar_present:
        LDRB     R0,[R0, #+4]
        MOVS     R1,#+32
        ANDS     R0,R0,R1
        BX       LR               ;; return
//  111 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  112 /********************************************************************/
// 
// 124 bytes in section .text
// 
// 124 bytes of CODE memory
//
//Errors: none
//Warnings: none