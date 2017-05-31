///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.1.52143/W32 for ARM    17/Feb/2011  21:31:20 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^ /
//                    [\kinetis-sc\src\drivers\mcg\mcg.c                      /
//    Command line =  "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^ /
//                    [\kinetis-sc\src\drivers\mcg\mcg.c" -D IAR -D          /
//                    TWR_K40X256 -lCN "D:\Profiles\B17685\My                 /
//                    Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^[\kinetis-sc\build\iar /
//                    \pit_dma\RAM_128KB\List\" -lB "D:\Profiles\B17685\My    /
//                    Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^[\kinetis-sc\build\iar /
//                    \pit_dma\RAM_128KB\List\" -o "D:\Profiles\B17685\My     /
//                    Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^[\kinetis-sc\build\iar /
//                    \pit_dma\RAM_128KB\Obj\" --no_cse --no_unroll           /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0_2\arm\INC\c\DLib_Config_Normal.h" -I                /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^ /
//                    [\kinetis-sc\build\iar\pit_dma\..\..\..\src\projects\p /
//                    it_dma\" -I "D:\Profiles\B17685\My                      /
//                    Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^[\kinetis-sc\build\iar /
//                    \pit_dma\..\..\..\src\common\" -I                       /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^ /
//                    [\kinetis-sc\build\iar\pit_dma\..\..\..\src\cpu\" -I   /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^ /
//                    [\kinetis-sc\build\iar\pit_dma\..\..\..\src\cpu\header /
//                    s\" -I "D:\Profiles\B17685\My                           /
//                    Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^[\kinetis-sc\build\iar /
//                    \pit_dma\..\..\..\src\drivers\uart\" -I                 /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^ /
//                    [\kinetis-sc\build\iar\pit_dma\..\..\..\src\drivers\mc /
//                    g\" -I "D:\Profiles\B17685\My                           /
//                    Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^[\kinetis-sc\build\iar /
//                    \pit_dma\..\..\..\src\drivers\wdog\" -I                 /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^ /
//                    [\kinetis-sc\build\iar\pit_dma\..\..\..\src\platforms\ /
//                    " -I "D:\Profiles\B17685\My                             /
//                    Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^[\kinetis-sc\build\iar /
//                    \pit_dma\..\" -Ol --use_c++_inline                      /
//    List file    =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^ /
//                    [\kinetis-sc\build\iar\pit_dma\RAM_128KB\List\mcg.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME mcg

        PUBLIC pll_init

// D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ƒ‚[ƒ^[\kinetis-sc\src\drivers\mcg\mcg.c
//    1 /*
//    2  * File:    mcg.c
//    3  * Purpose: Driver for enabling the PLL in 1 of 4 options
//    4  *
//    5  * Notes:
//    6  * Assumes the MCG mode is in the default FEI mode out of reset
//    7  * One of 4 clocking oprions can be selected.
//    8  * One of 16 crystal values can be used
//    9  */
//   10 
//   11 #include "common.h"
//   12 #include "mcg.h"
//   13 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   14 unsigned char pll_init(unsigned char clk_option, unsigned char crystal_val)
//   15 {
pll_init:
        PUSH     {R4}
//   16   unsigned char pll_freq;
//   17 
//   18   if (clk_option > 3) {return 0;} //return 0 if one of the available options is not selected
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BCC.N    ??pll_init_0
        MOVS     R0,#+0
        B.N      ??pll_init_1
//   19   if (crystal_val > 15) {return 1;} // return 1 if one of the available crystal options is not available
??pll_init_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+16
        BCC.N    ??pll_init_2
        MOVS     R0,#+1
        B.N      ??pll_init_1
//   20 //This assumes that the MCG is in default FEI mode out of reset.
//   21 
//   22 // First move to FBE mode
//   23 #if (defined(K60_CLK) || defined(ASB817))
//   24      MCG_C2 = 0;
//   25 #else
//   26 // Enable external oscillator, RANGE=2, HGO=1, EREFS=1, LP=0, IRCS=0
//   27     MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
??pll_init_2:
        LDR.N    R3,??pll_init_3  ;; 0x40064001
        MOVS     R4,#+44
        STRB     R4,[R3, #+0]
//   28 #endif
//   29 
//   30 // Select external oscilator and Reference Divider and clear IREFS to start ext osc
//   31 // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//   32   MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.N    R3,??pll_init_3+0x4  ;; 0x40064000
        MOVS     R4,#+152
        STRB     R4,[R3, #+0]
//   33 
//   34   /* if we aren't using an osc input we don't need to wait for the osc to init */
//   35 #if (!defined(K60_CLK) && !defined(ASB817))
//   36     while (!(MCG_S & MCG_S_OSCINIT_MASK)){};  // wait for oscillator to initialize
??pll_init_4:
        LDR.N    R3,??pll_init_3+0x8  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+30
        BPL.N    ??pll_init_4
//   37 #endif
//   38 
//   39   while (MCG_S & MCG_S_IREFST_MASK){}; // wait for Reference clock Status bit to clear
??pll_init_5:
        LDR.N    R3,??pll_init_3+0x8  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+27
        BMI.N    ??pll_init_5
//   40 
//   41   while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // Wait for clock status bits to show clock source is ext ref clk
??pll_init_6:
        LDR.N    R3,??pll_init_3+0x8  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        UBFX     R3,R3,#+2,#+2
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+2
        BNE.N    ??pll_init_6
//   42 
//   43 // Now in FBE
//   44 
//   45 #if (defined(K60_CLK))
//   46    MCG_C5 = MCG_C5_PRDIV(0x18);
//   47 #else
//   48 // Configure PLL Ref Divider, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//   49 // The crystal frequency is used to select the PRDIV value. Only even frequency crystals are supported
//   50 // that will produce a 2MHz reference clock to the PLL.
//   51   MCG_C5 = MCG_C5_PRDIV(crystal_val); // Set PLL ref divider to match the crystal used
        ANDS     R1,R1,#0x1F
        LDR.N    R3,??pll_init_3+0xC  ;; 0x40064004
        STRB     R1,[R3, #+0]
//   52 #endif
//   53 
//   54   // Ensure MCG_C6 is at the reset default of 0. LOLIE disabled, PLL disabled, clk monitor disabled, PLL VCO divider is clear
//   55   MCG_C6 = 0x0;
        LDR.N    R1,??pll_init_3+0x10  ;; 0x40064005
        MOVS     R3,#+0
        STRB     R3,[R1, #+0]
//   56 // Select the PLL VCO divider and system clock dividers depending on clocking option
//   57   switch (clk_option) {
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??pll_init_7
        CMP      R0,#+2
        BEQ.N    ??pll_init_8
        BCC.N    ??pll_init_9
        CMP      R0,#+3
        BEQ.N    ??pll_init_10
        B.N      ??pll_init_11
//   58     case 0:
//   59       // Set system options dividers
//   60       //MCG=PLL, core = MCG, bus = MCG, FlexBus = MCG, Flash clock= MCG/2
//   61       SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(0) | SIM_CLKDIV1_OUTDIV3(0) | SIM_CLKDIV1_OUTDIV4(1);
??pll_init_7:
        LDR.N    R0,??pll_init_3+0x14  ;; 0x40048044
        MOVS     R1,#+65536
        STR      R1,[R0, #+0]
//   62       // Set the VCO divider and enable the PLL for 50MHz, LOLIE=0, PLLS=1, CME=0, VDIV=1
//   63       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(1); //VDIV = 1 (x25)
        LDR.N    R0,??pll_init_3+0x10  ;; 0x40064005
        MOVS     R1,#+65
        STRB     R1,[R0, #+0]
//   64       pll_freq = 50;
        MOVS     R2,#+50
//   65       break;
        B.N      ??pll_init_11
//   66    case 1:
//   67       // Set system options dividers
//   68       //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/4
//   69       SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(1) | SIM_CLKDIV1_OUTDIV3(1) | SIM_CLKDIV1_OUTDIV4(3);
??pll_init_9:
        LDR.N    R0,??pll_init_3+0x14  ;; 0x40048044
        LDR.N    R1,??pll_init_3+0x18  ;; 0x1130000
        STR      R1,[R0, #+0]
//   70       // Set the VCO divider and enable the PLL for 100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//   71       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(26); //VDIV = 26 (x50)
        LDR.N    R0,??pll_init_3+0x10  ;; 0x40064005
        MOVS     R1,#+90
        STRB     R1,[R0, #+0]
//   72       pll_freq = 100;
        MOVS     R2,#+100
//   73       break;
        B.N      ??pll_init_11
//   74     case 2:
//   75       // Set system options dividers
//   76       //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/4
//   77       SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(1) | SIM_CLKDIV1_OUTDIV3(1) | SIM_CLKDIV1_OUTDIV4(3);
??pll_init_8:
        LDR.N    R0,??pll_init_3+0x14  ;; 0x40048044
        LDR.N    R1,??pll_init_3+0x18  ;; 0x1130000
        STR      R1,[R0, #+0]
//   78       // Set the VCO divider and enable the PLL for 96MHz, LOLIE=0, PLLS=1, CME=0, VDIV=24
//   79       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(24); //VDIV = 24 (x48)
        LDR.N    R0,??pll_init_3+0x10  ;; 0x40064005
        MOVS     R1,#+88
        STRB     R1,[R0, #+0]
//   80       pll_freq = 96;
        MOVS     R2,#+96
//   81       break;
        B.N      ??pll_init_11
//   82    case 3:
//   83       // Set system options dividers
//   84       //MCG=PLL, core = MCG, bus = MCG, FlexBus = MCG, Flash clock= MCG/2
//   85       SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(0) | SIM_CLKDIV1_OUTDIV3(0) | SIM_CLKDIV1_OUTDIV4(1);
??pll_init_10:
        LDR.N    R0,??pll_init_3+0x14  ;; 0x40048044
        MOVS     R1,#+65536
        STR      R1,[R0, #+0]
//   86       // Set the VCO divider and enable the PLL for 48MHz, LOLIE=0, PLLS=1, CME=0, VDIV=0
//   87       MCG_C6 = MCG_C6_PLLS_MASK; //VDIV = 0 (x24)
        LDR.N    R0,??pll_init_3+0x10  ;; 0x40064005
        MOVS     R1,#+64
        STRB     R1,[R0, #+0]
//   88       pll_freq = 48;
        MOVS     R2,#+48
//   89       break;
//   90   }
//   91   while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
??pll_init_11:
        LDR.N    R0,??pll_init_3+0x8  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pll_init_11
//   92 
//   93   while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set
??pll_init_12:
        LDR.N    R0,??pll_init_3+0x8  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pll_init_12
//   94 
//   95 // Now running PBE Mode
//   96 
//   97 // Transition into PEE by setting CLKS to 0
//   98 // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//   99   MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??pll_init_3+0x4  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??pll_init_3+0x4  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  100 
//  101 // Wait for clock status bits to update
//  102   while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pll_init_13:
        LDR.N    R0,??pll_init_3+0x8  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pll_init_13
//  103 
//  104 // Now running PEE Mode
//  105 
//  106 return pll_freq;
        MOVS     R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??pll_init_1:
        POP      {R4}
        BX       LR               ;; return
        DATA
??pll_init_3:
        DC32     0x40064001
        DC32     0x40064000
        DC32     0x40064006
        DC32     0x40064004
        DC32     0x40064005
        DC32     0x40048044
        DC32     0x1130000
//  107 } //pll_init

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 240 bytes in section .text
// 
// 240 bytes of CODE memory
//
//Errors: none
//Warnings: none
