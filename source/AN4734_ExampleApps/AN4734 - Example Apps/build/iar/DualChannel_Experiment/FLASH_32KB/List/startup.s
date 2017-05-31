///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:31 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\common\startup.c                           /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\common\startup.c" -D IAR -D FRDM -D EX2    /
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
//                    st\startup.s                                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME startup

        #define SHT_PROGBITS 0x1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION `.data`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION `.data_init`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocate:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocateRam:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        EXTERN __VECTOR_RAM
        EXTERN __VECTOR_TABLE
        EXTERN write_vtor

        PUBLIC common_startup

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\common\startup.c
//    1 /*
//    2  * File:    startup.c
//    3  * Purpose: Generic Kinetis startup code
//    4  *
//    5  * Notes:   
//    6  */
//    7 
//    8 #include "common.h"
//    9 
//   10 #pragma section = ".data"
//   11 #pragma section = ".data_init"
//   12 #pragma section = ".bss"
//   13 #pragma section = "CodeRelocate"
//   14 #pragma section = "CodeRelocateRam" 
//   15 
//   16 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   17 void
//   18 common_startup(void)
//   19 {
common_startup:
        PUSH     {R4,LR}
//   20 //    extern char __DATA_ROM[];
//   21 //    extern char __DATA_RAM[];
//   22 //    extern char __DATA_END[];
//   23   
//   24     /* Declare a counter we'll use in all of the copy loops */
//   25     uint32 n;
//   26  
//   27  
//   28     /* Addresses for VECTOR_TABLE and VECTOR_RAM come from the linker file */  
//   29     extern uint32 __VECTOR_TABLE[];
//   30     extern uint32 __VECTOR_RAM[];
//   31 
//   32     /* Copy the vector table to RAM */
//   33     if (__VECTOR_RAM != __VECTOR_TABLE)
        LDR      R0,??common_startup_0
        LDR      R1,??common_startup_0+0x4
        CMP      R0,R1
        BEQ      ??common_startup_1
//   34     {
//   35         for (n = 0; n < 0x410/4; n++)
        MOVS     R0,#+0
        B        ??common_startup_2
//   36             __VECTOR_RAM[n] = __VECTOR_TABLE[n];
??common_startup_3:
        MOVS     R1,#+4
        MULS     R1,R0,R1
        LDR      R2,??common_startup_0
        MOVS     R3,#+4
        MULS     R3,R0,R3
        LDR      R4,??common_startup_0+0x4
        LDR      R3,[R4, R3]
        STR      R3,[R2, R1]
        ADDS     R0,R0,#+1
??common_startup_2:
        MOVS     R1,#+130
        LSLS     R1,R1,#+1        ;; #+260
        CMP      R0,R1
        BCC      ??common_startup_3
//   37     }
//   38     /* Point the VTOR to the new copy of the vector table */
//   39     write_vtor((uint32)__VECTOR_RAM);    
??common_startup_1:
        LDR      R0,??common_startup_0
        BL       write_vtor
//   40 
//   41     /* Get the addresses for the .data section (initialized data section) */
//   42     uint8* data_ram = __section_begin(".data");
        LDR      R1,??common_startup_0+0x8
//   43     uint8* data_rom = __section_begin(".data_init");
        LDR      R2,??common_startup_0+0xC
//   44     uint8* data_rom_end = __section_end(".data_init");
        LDR      R0,??common_startup_0+0x10
//   45     
//   46     /* Copy initialized data from ROM to RAM */
//   47     n = data_rom_end - data_rom;
        SUBS     R0,R0,R2
        B        ??common_startup_4
//   48     while (n--)
//   49       *data_ram++ = *data_rom++;
??common_startup_5:
        LDRB     R3,[R2, #+0]
        STRB     R3,[R1, #+0]
        ADDS     R2,R2,#+1
        ADDS     R1,R1,#+1
??common_startup_4:
        MOVS     R3,R0
        SUBS     R0,R3,#+1
        CMP      R3,#+0
        BNE      ??common_startup_5
//   50  
//   51  
//   52     /* Get the addresses for the .bss section (zero-initialized data) */
//   53     uint8* bss_start = __section_begin(".bss");
        LDR      R1,??common_startup_0+0x14
//   54     uint8* bss_end = __section_end(".bss");
        LDR      R0,??common_startup_0+0x18
//   55     
//   56     /* Clear the zero-initialized data section */
//   57     n = bss_end - bss_start;
        SUBS     R0,R0,R1
        B        ??common_startup_6
//   58     while(n--)
//   59       *bss_start++ = 0;    
??common_startup_7:
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
        ADDS     R1,R1,#+1
??common_startup_6:
        MOVS     R2,R0
        SUBS     R0,R2,#+1
        CMP      R2,#+0
        BNE      ??common_startup_7
//   60     
//   61     /* Get addresses for any code sections that need to be copied from ROM to RAM.
//   62      * The IAR tools have a predefined keyword that can be used to mark individual
//   63      * functions for execution from RAM. Add "__ramfunc" before the return type in
//   64      * the function prototype for any routines you need to execute from RAM instead 
//   65      * of ROM. ex: __ramfunc void foo(void);
//   66      */
//   67     uint8* code_relocate_ram = __section_begin("CodeRelocateRam");
        LDR      R1,??common_startup_0+0x1C
//   68     uint8* code_relocate = __section_begin("CodeRelocate");
        LDR      R2,??common_startup_0+0x20
//   69     uint8* code_relocate_end = __section_end("CodeRelocate");
        LDR      R0,??common_startup_0+0x24
//   70     
//   71     /* Copy functions from ROM to RAM */
//   72     n = code_relocate_end - code_relocate;
        SUBS     R0,R0,R2
        B        ??common_startup_8
//   73     while (n--)
//   74       *code_relocate_ram++ = *code_relocate++;
??common_startup_9:
        LDRB     R3,[R2, #+0]
        STRB     R3,[R1, #+0]
        ADDS     R2,R2,#+1
        ADDS     R1,R1,#+1
??common_startup_8:
        MOVS     R3,R0
        SUBS     R0,R3,#+1
        CMP      R3,#+0
        BNE      ??common_startup_9
//   75 
//   76 }
        POP      {R4,PC}          ;; return
        Nop      
        DATA
??common_startup_0:
        DC32     __VECTOR_RAM
        DC32     __VECTOR_TABLE
        DC32     SFB(`.data`)
        DC32     SFB(`.data_init`)
        DC32     SFE(`.data_init`)
        DC32     SFB(`.bss`)
        DC32     SFE(`.bss`)
        DC32     SFB(CodeRelocateRam)
        DC32     SFB(CodeRelocate)
        DC32     SFE(CodeRelocate)

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.data_init`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocate:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocateRam:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   77 /********************************************************************/
// 
// 164 bytes in section .text
// 
// 164 bytes of CODE memory
//
//Errors: none
//Warnings: none
