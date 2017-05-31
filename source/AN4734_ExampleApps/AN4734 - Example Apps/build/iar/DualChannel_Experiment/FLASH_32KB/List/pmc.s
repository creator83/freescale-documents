///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:30 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\pmc\pmc.c                          /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\pmc\pmc.c" -D IAR -D FRDM -D EX2   /
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
//                    st\pmc.s                                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME pmc

        #define SHT_PROGBITS 0x1

        EXTERN printf

        PUBLIC LVD_Init
        PUBLIC LVD_Initalize
        PUBLIC i
        PUBLIC pmc_lvd_isr

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\drivers\pmc\pmc.c
//    1 /*
//    2  * File:        pmc.c
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
//   23 #include "pmc.h"
//   24 #include "mcg.h"
//   25 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 int i;
i:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void LVD_Initalize(unsigned char lvd_select, 
//   28                    unsigned char lvd_reset_enable,
//   29                    unsigned char lvd_int_enable, 
//   30                    unsigned char lvw_select,
//   31                    unsigned char lvw_int_enable){
LVD_Initalize:
        PUSH     {R4}
        LDR      R4,[SP, #+4]
//   32     PMC_LVDSC1 =  PMC_LVDSC1_LVDACK_MASK | 
//   33                  (lvd_reset_enable) |   //enable LVD Reset ?
//   34 	          lvd_int_enable |      //LVD Interrupt ?
//   35 	          PMC_LVDSC1_LVDV(lvd_select)   ;        //select high or low LVD
        ORRS     R2,R2,R1
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        ORRS     R0,R0,R2
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2  ;; 0x4007d000
        STRB     R1,[R0, #+0]
//   36     PMC_LVDSC2  = PMC_LVDSC2_LVWACK_MASK | 
//   37                  (lvw_int_enable) |    //LVW interrupt?
//   38                   PMC_LVDSC2_LVWV(lvw_select);  // select LVW level 1,2,3 or 4
        LSLS     R0,R3,#+30       ;; ZeroExtS R0,R3,#+30,#+30
        LSRS     R0,R0,#+30
        ORRS     R0,R0,R4
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_1  ;; 0x4007d001
        STRB     R1,[R0, #+0]
//   39 }
        POP      {R4}
        BX       LR               ;; return
//   40 //******************************************************************************

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 void LVD_Init(void)
//   42 {
//   43 /* setup LVD
//   44 Low-Voltage Detect Voltage Select
//   45 Selects the LVD trip point voltage (VLVD).
//   46 00 Low trip point selected (VLVD = VLVDL)
//   47 01 High trip point selected (VLVD = VLVDH)
//   48 10 Reserved
//   49 11 Reserved
//   50   */
//   51 //	PMC_LVDSC1 &= ~PMC_LVDSC1_LVDRE_MASK ;   //Disable LVD Reset
//   52 	PMC_LVDSC1 =  PMC_LVDSC1_LVDRE_MASK |   //enable LVD Reset
//   53 	             //  PMC_LVDSC1_LVDIE_MASK |
//   54 	               PMC_LVDSC1_LVDV(1);   //Enable LVD Reset High level
LVD_Init:
        LDR      R0,??DataTable2  ;; 0x4007d000
        MOVS     R1,#+17
        STRB     R1,[R0, #+0]
//   55 
//   56 //PMC_LVDSC1 |= PMC_LVDSC1_LVDV_MASK & 0x01;  
//   57 // PMC_LVDSC1 &= PMC_LVDSC1_LVDV_MASK & 0b00;  //Low Trip point 1.54 V
//   58  
//   59 //PMC_LVDSC2  = PMC_LVDSC2_LVWACK_MASK | 
//   60 //              PMC_LVDSC2_LVWV(0)|
//   61 //              PMC_LVDSC2_LVWIE_MASK;    
//   62 //PMC_LVDSC2  = 0x40; //0b01000000 low trip point LVWV
//   63 //PMC_LVDSC2  = PMC_LVDSC2_LVWACK_MASK | 
//   64 //              PMC_LVDSC2_LVWV(1)|
//   65 //              PMC_LVDSC2_LVWIE_MASK;    
//   66 //PMC_LVDSC2  = 0x41; //0b01000001 mid1 trip point LVWV
//   67 //PMC_LVDSC2  = PMC_LVDSC2_LVWACK_MASK | 
//   68 //              PMC_LVDSC2_LVWV(2)|
//   69 //              PMC_LVDSC2_LVWIE_MASK;    
//   70 //PMC_LVDSC2  = 0x42; //0b01000010 mid2 trip point LVWV
//   71 PMC_LVDSC2  = PMC_LVDSC2_LVWACK_MASK | 
//   72               PMC_LVDSC2_LVWV(3) ;
        LDR      R0,??DataTable2_1  ;; 0x4007d001
        MOVS     R1,#+67
        STRB     R1,[R0, #+0]
//   73               //PMC_LVDSC2_LVWIE_MASK ;    //enable warning interrupt
//   74 //PMC_LVDSC2  = 0x43; //0b01000011 high trip point LVWV   
//   75 
//   76 // ack to clear initial flags
//   77 PMC_LVDSC1 |= PMC_LVDSC1_LVDACK_MASK; 
        LDR      R0,??DataTable2  ;; 0x4007d000
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2  ;; 0x4007d000
        STRB     R1,[R0, #+0]
//   78 PMC_LVDSC2 |= PMC_LVDSC2_LVWACK_MASK;
        LDR      R0,??DataTable2_1  ;; 0x4007d001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_1  ;; 0x4007d001
        STRB     R1,[R0, #+0]
//   79 
//   80 /* 
//   81 LVWV if LVD high range selected
//   82 2.621
//   83 2.72
//   84 2.82
//   85 2.92
//   86 LVDV if LVD low range selected
//   87 1.74
//   88 1.84
//   89 1.94
//   90 
//   91 
//   92 */
//   93 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   94 void pmc_lvd_isr(void)
//   95 {
pmc_lvd_isr:
        PUSH     {R7,LR}
//   96  
//   97   if (PMC_LVDSC1 &PMC_LVDSC1_LVDF_MASK){
        LDR      R0,??DataTable2  ;; 0x4007d000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL      ??pmc_lvd_isr_0
//   98    printf("[LVD_isr]LV DETECT interrupt occurred");
        LDR      R0,??DataTable2_2
        BL       printf
//   99   }
//  100   if (PMC_LVDSC2 &PMC_LVDSC2_LVWF_MASK){
??pmc_lvd_isr_0:
        LDR      R0,??DataTable2_1  ;; 0x4007d001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL      ??pmc_lvd_isr_1
//  101    printf("[LVD_isr]LV WARNING interrupt occurred");
        LDR      R0,??DataTable2_3
        BL       printf
//  102   }
//  103  
//  104  // ack to clear initial flags
//  105  PMC_LVDSC1 |= PMC_LVDSC1_LVDACK_MASK; 
??pmc_lvd_isr_1:
        LDR      R0,??DataTable2  ;; 0x4007d000
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2  ;; 0x4007d000
        STRB     R1,[R0, #+0]
//  106  PMC_LVDSC2 |= PMC_LVDSC2_LVWACK_MASK;
        LDR      R0,??DataTable2_1  ;; 0x4007d001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_1  ;; 0x4007d001
        STRB     R1,[R0, #+0]
//  107 
//  108 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x4007d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x4007d001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     `?<Constant "[LVD_isr]LV DETECT in...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     `?<Constant "[LVD_isr]LV WARNING i...">`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[LVD_isr]LV DETECT in...">`:
        DATA
        DC8 "[LVD_isr]LV DETECT interrupt occurred"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[LVD_isr]LV WARNING i...">`:
        DATA
        DC8 "[LVD_isr]LV WARNING interrupt occurred"
        DC8 0

        END
//  109 
//  110 
//  111 
//  112 
// 
//   4 bytes in section .bss
//  80 bytes in section .rodata
// 148 bytes in section .text
// 
// 148 bytes of CODE  memory
//  80 bytes of CONST memory
//   4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
