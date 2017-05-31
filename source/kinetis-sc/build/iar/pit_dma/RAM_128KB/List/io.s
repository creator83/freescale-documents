///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.1.52143/W32 for ARM    17/Feb/2011  21:31:20 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å /
//                    [\kinetis-sc\src\common\io.c                            /
//    Command line =  "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\src\common\io.c" -D IAR -D TWR_K40X256    /
//                    -lCN "D:\Profiles\B17685\My                             /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\RAM_128KB\List\" -lB "D:\Profiles\B17685\My    /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\RAM_128KB\List\" -o "D:\Profiles\B17685\My     /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\RAM_128KB\Obj\" --no_cse --no_unroll           /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0_2\arm\INC\c\DLib_Config_Normal.h" -I                /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\..\..\src\projects\p /
//                    it_dma\" -I "D:\Profiles\B17685\My                      /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\..\..\..\src\common\" -I                       /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\..\..\src\cpu\" -I   /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\..\..\src\cpu\header /
//                    s\" -I "D:\Profiles\B17685\My                           /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\..\..\..\src\drivers\uart\" -I                 /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\..\..\src\drivers\mc /
//                    g\" -I "D:\Profiles\B17685\My                           /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\..\..\..\src\drivers\wdog\" -I                 /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\..\..\src\platforms\ /
//                    " -I "D:\Profiles\B17685\My                             /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\..\" -Ol --use_c++_inline                      /
//    List file    =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å /
//                    [\kinetis-sc\build\iar\pit_dma\RAM_128KB\List\io.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME io

        EXTERN uart_getchar
        EXTERN uart_getchar_present
        EXTERN uart_putchar

        PUBLIC char_present
        PUBLIC in_char
        PUBLIC out_char

// D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\src\common\io.c
//    1 /*
//    2  * File:		io.c
//    3  * Purpose:		Serial Input/Output routines
//    4  *
//    5  * Notes:       TERMINAL_PORT defined in <board>.h
//    6  */
//    7 
//    8 #include "common.h"
//    9 #include "uart.h"
//   10 
//   11 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   12 char
//   13 in_char (void)
//   14 {
in_char:
        PUSH     {R7,LR}
//   15 	return uart_getchar(TERM_PORT);
        LDR.N    R0,??DataTable2  ;; 0x4006d000
        BL       uart_getchar
        POP      {R1,PC}          ;; return
//   16 }
//   17 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 void
//   19 out_char (char ch)
//   20 {
out_char:
        PUSH     {R7,LR}
//   21 	uart_putchar(TERM_PORT, ch);
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x4006d000
        BL       uart_putchar
//   22 }
        POP      {R0,PC}          ;; return
//   23 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 int
//   25 char_present (void)
//   26 {
char_present:
        PUSH     {R7,LR}
//   27 	return uart_getchar_present(TERM_PORT);
        LDR.N    R0,??DataTable2  ;; 0x4006d000
        BL       uart_getchar_present
        POP      {R1,PC}          ;; return
//   28 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2:
        DC32     0x4006d000

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
//   29 /********************************************************************/
// 
// 38 bytes in section .text
// 
// 38 bytes of CODE memory
//
//Errors: none
//Warnings: none
