///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:30 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\mcg\mcg.c                          /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\mcg\mcg.c" -D IAR -D FRDM -D EX2   /
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
//                    st\mcg.s                                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME mcg

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2f
        EXTERN __aeabi_idiv
        EXTERN __aeabi_uidiv

        PUBLIC atc
        PUBLIC blpe_fbe
        PUBLIC blpi_fbi
        PUBLIC clk_monitor_0
        PUBLIC dmx32_val
        PUBLIC drs_val
        PUBLIC fbe_blpe
        PUBLIC fbe_fbi
        PUBLIC fbe_fee
        PUBLIC fbe_fei
        PUBLIC fbi_blpi
        PUBLIC fbi_fbe
        PUBLIC fbi_fee
        PUBLIC fbi_fei
        PUBLIC fee_fbe
        PUBLIC fee_fbi
        PUBLIC fee_fei
        PUBLIC fei_fbe
        PUBLIC fei_fbi
        PUBLIC fei_fee
        PUBLIC fll_freq
        PUBLIC what_mcg_mode

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\drivers\mcg\mcg.c
//    1 /*
//    2  * File:    mcg.c
//    3  *
//    4  * Notes:
//    5  * Assumes the MCG mode is in the default FEI mode out of reset
//    6  */
//    7 
//    8 #include "common.h"
//    9 #include "mcg.h"
//   10 //#include "lptmr.h"
//   11 
//   12 // global variables
//   13 extern int core_clk_khz;
//   14 //extern int slow_irc_freq = 32768; // default slow irc frequency is 32768Hz
//   15 //extern int fast_irc_freq = 4000000; // default fast irc frequency is 4MHz
//   16 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   17 char drs_val, dmx32_val;
drs_val:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
dmx32_val:
        DS8 1
//   18 
//   19 
//   20 
//   21 
//   22 
//   23 /*********************************************************************************************/
//   24 /* Functon name : pll_init
//   25  *
//   26  * Mode transition: Option to move from FEI to PEE mode or to just initialize the PLL
//   27  *
//   28  * This function initializess either PLL0 or PLL1. Either OSC0 or OSC1 can be selected for the
//   29  * reference clock source. The oscillators can be configured to use a crystal or take in an
//   30  * external square wave clock.
//   31  * NOTE : This driver does not presently (as of Sept 9 2011) support the use of OSC1 as the
//   32  * reference clock for the MCGOUT clock used for the system clocks.
//   33  * The PLL outputs a PLLCLK and PLLCLK2X. PLLCLK2X is the actual PLL frequency and PLLCLK is
//   34  * half this frequency. PLLCLK is used for MCGOUT and is also typically used by the
//   35  * peripherals that can select the PLL as a clock source. So the PLL frequency generated will
//   36  * be twice the desired frequency.
//   37  * Using the function parameter names the PLL frequency is calculated as follows:
//   38  * PLL freq = ((crystal_val / prdiv_val) * vdiv_val)
//   39  * Refer to the readme file in the mcg driver directory for examples of pll_init configurations.
//   40  * All parameters must be provided, for example crystal_val must be provided even if the
//   41  * oscillator associated with that parameter is already initialized.
//   42  * The various passed parameters are checked to ensure they are within the allowed range. If any
//   43  * of these checks fail the driver will exit and return a fail/error code. An error code will
//   44  * also be returned if any error occurs during the PLL initialization sequence. Refer to the
//   45  * readme file in the mcg driver directory for a list of all these codes.
//   46  *
//   47  * Parameters: crystal_val - external clock frequency in Hz either from a crystal or square
//   48  *                           wave clock source
//   49  *             hgo_val     - selects whether low power or high gain mode is selected
//   50  *                           for the crystal oscillator. This has no meaning if an
//   51  *                           external clock is used.
//   52  *             erefs_val   - selects external clock (=0) or crystal osc (=1)
//   53  *             prdiv_val   - value to divide the external clock source by to create the desired
//   54  *                           PLL reference clock frequency
//   55  *             vdiv_val    - value to multiply the PLL reference clock frequency by
//   56  *             mcgout_select  - 0 if the PLL is just to be enabled, non-zero if the PLL is used
//   57  *                              to provide the MCGOUT clock for the system.
//   58  *
//   59  * Return value : PLL frequency (Hz) divided by 2 or error code
//   60  */
//   61 
//   62 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 int blpe_fbe(int crystal_val)
//   64 {
blpe_fbe:
        PUSH     {LR}
//   65   
//   66 // Check MCG is in BLPE mode
//   67   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x2) && // check CLKS mux has selcted external reference
//   68       (!(MCG_S & MCG_S_IREFST_MASK)) &&                               // check FLL ref is external ref clk
//   69       (MCG_C2 & MCG_C2_LP_MASK)))                                     // check MCG_C2[LP] bit is set   
        LDR      R1,??DataTable4  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+2
        BNE      ??blpe_fbe_0
        LDR      R1,??DataTable4  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BMI      ??blpe_fbe_0
        LDR      R1,??DataTable4_1  ;; 0x40064001
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+30
        BMI      ??blpe_fbe_1
//   70   {
//   71     return 0x6;                                                       // return error code
??blpe_fbe_0:
        MOVS     R0,#+6
        B        ??blpe_fbe_2
//   72   }
//   73  
//   74 // To move from BLPE to FBE the PLLS mux be set to select the FLL output and the LP bit must be cleared
//   75 //  MCG_C6 &= ~MCG_C6_PLLS_MASK; // clear PLLS to select the FLL
//   76   MCG_C2 &= ~MCG_C2_LP_MASK; // clear LP bit  
??blpe_fbe_1:
        LDR      R1,??DataTable4_1  ;; 0x40064001
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+253
        ANDS     R2,R2,R1
        LDR      R1,??DataTable4_1  ;; 0x40064001
        STRB     R2,[R1, #+0]
//   77 
//   78 // wait for PLLST status bit to set
//   79   /*
//   80   for (i = 0 ; i < 2000 ; i++)
//   81   {
//   82     if (!(MCG_S & MCG_S_PLLST_MASK)) break; // jump out early if PLLST clears before loop finishes
//   83   }
//   84   if (MCG_S & MCG_S_PLLST_MASK) return 0x15; // check bit is really clear and return with error if not clear  
//   85   */
//   86   
//   87 // now in FBE mode
//   88   return crystal_val; // MCGOUT frequency equals external clock frequency     
??blpe_fbe_2:
        POP      {PC}             ;; return
//   89 } // blpe_fbe
//   90 
//   91 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 int fbe_blpe(int crystal_val)
//   93 {
fbe_blpe:
        PUSH     {LR}
//   94 // Check MCG is in FBE mode
//   95   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x2) && // check CLKS mux has selcted external reference
//   96       (!(MCG_S & MCG_S_IREFST_MASK)) &&                               // check FLL ref is external ref clk
//   97    //   (!(MCG_S & MCG_S_PLLST_MASK)) &&                                // check PLLS mux has selected FLL
//   98       (!(MCG_C2 & MCG_C2_LP_MASK))))                                  // check MCG_C2[LP] bit is not set   
        LDR      R1,??DataTable4  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+2
        BNE      ??fbe_blpe_0
        LDR      R1,??DataTable4  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BMI      ??fbe_blpe_0
        LDR      R1,??DataTable4_1  ;; 0x40064001
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+30
        BPL      ??fbe_blpe_1
//   99   {
//  100     return 0x4;                                                       // return error code
??fbe_blpe_0:
        MOVS     R0,#+4
        B        ??fbe_blpe_2
//  101   }
//  102  
//  103 // To move from FBE to BLPE the LP bit must be set
//  104   MCG_C2 |= MCG_C2_LP_MASK; // set LP bit  
??fbe_blpe_1:
        LDR      R1,??DataTable4_1  ;; 0x40064001
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+2
        ORRS     R2,R2,R1
        LDR      R1,??DataTable4_1  ;; 0x40064001
        STRB     R2,[R1, #+0]
//  105  
//  106 // now in FBE mode
//  107   return crystal_val; // MCGOUT frequency equals external clock frequency     
??fbe_blpe_2:
        POP      {PC}             ;; return
//  108 } // fbe_blpe
//  109 
//  110 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  111 int fbe_fei(int slow_irc_freq)
//  112 {
fbe_fei:
        PUSH     {R7,LR}
//  113   unsigned char temp_reg;
//  114   short i;
//  115   int mcg_out;
//  116   
//  117 // Check MCG is in FBE mode
//  118   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x2) && // check CLKS mux has selcted external reference
//  119       (!(MCG_S & MCG_S_IREFST_MASK)) &&                               // check FLL ref is external ref clk
//  120    //   (!(MCG_S & MCG_S_PLLST_MASK)) &&                                // check PLLS mux has selected FLL
//  121       (!(MCG_C2 & MCG_C2_LP_MASK))))                                  // check MCG_C2[LP] bit is not set   
        LDR      R1,??DataTable4  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+2
        BNE      ??fbe_fei_0
        LDR      R1,??DataTable4  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BMI      ??fbe_fei_0
        LDR      R1,??DataTable4_1  ;; 0x40064001
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+30
        BPL      ??fbe_fei_1
//  122   {
//  123     return 0x4;                                                       // return error code
??fbe_fei_0:
        MOVS     R0,#+4
        B        ??fbe_fei_2
//  124   }
//  125 
//  126 // Check IRC frequency is within spec.
//  127   if ((slow_irc_freq < 31250) || (slow_irc_freq > 39063))
??fbe_fei_1:
        LDR      R1,??DataTable4_2  ;; 0x7a12
        SUBS     R1,R0,R1
        LDR      R2,??DataTable4_3  ;; 0x1e86
        CMP      R1,R2
        BCC      ??fbe_fei_3
//  128   {
//  129     return 0x31;
        MOVS     R0,#+49
        B        ??fbe_fei_2
//  130   }
//  131   
//  132 // Check resulting FLL frequency 
//  133   mcg_out = fll_freq(slow_irc_freq); 
??fbe_fei_3:
        BL       fll_freq
//  134   if (mcg_out < 0x5B) {return mcg_out;} // If error code returned, return the code to calling function
        CMP      R0,#+91
        BLT      ??fbe_fei_2
//  135 
//  136 // Need to make sure the clockmonitor is disabled before moving to an "internal" clock mode
//  137 //  MCG_C6 &= ~MCG_C6_CME0_MASK; //This assumes OSC0 is used as the external clock source
//  138    MCG_C6 &= ~MCG_C6_CME0_MASK; 
??fbe_fei_4:
        LDR      R1,??DataTable4_4  ;; 0x40064005
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+223
        ANDS     R2,R2,R1
        LDR      R1,??DataTable4_4  ;; 0x40064005
        STRB     R2,[R1, #+0]
//  139    
//  140 // Move to FEI by setting CLKS to 0 and enabling the slow IRC as the FLL reference clock
//  141   temp_reg = MCG_C1;
        LDR      R1,??DataTable4_5  ;; 0x40064000
        LDRB     R1,[R1, #+0]
//  142   temp_reg &= ~MCG_C1_CLKS_MASK; // clear CLKS to select FLL output
        LSLS     R1,R1,#+26       ;; ZeroExtS R1,R1,#+26,#+26
        LSRS     R1,R1,#+26
//  143   temp_reg |= MCG_C1_IREFS_MASK; // select internal reference clock
        MOVS     R2,R1
        MOVS     R1,#+4
        ORRS     R1,R1,R2
//  144   MCG_C1 = temp_reg; // update MCG_C1 
        LDR      R2,??DataTable4_5  ;; 0x40064000
        STRB     R1,[R2, #+0]
//  145   
//  146 // wait for Reference clock Status bit to set
//  147   for (i = 0 ; i < 2000 ; i++)
        MOVS     R1,#+0
        B        ??fbe_fei_5
??fbe_fei_6:
        ADDS     R1,R1,#+1
??fbe_fei_5:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fbe_fei_7
//  148   {
//  149     if (MCG_S & MCG_S_IREFST_MASK) break; // jump out early if IREFST sets before loop finishes
        LDR      R2,??DataTable4  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BPL      ??fbe_fei_6
//  150   }
//  151   if (!(MCG_S & MCG_S_IREFST_MASK)) return 0x12; // check bit is really set and return with error if not set
??fbe_fei_7:
        LDR      R1,??DataTable4  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BMI      ??fbe_fei_8
        MOVS     R0,#+18
        B        ??fbe_fei_2
//  152   
//  153 // Wait for clock status bits to show clock source is ext ref clk
//  154   for (i = 0 ; i < 2000 ; i++)
??fbe_fei_8:
        MOVS     R1,#+0
        B        ??fbe_fei_9
??fbe_fei_10:
        ADDS     R1,R1,#+1
??fbe_fei_9:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fbe_fei_11
//  155   {
//  156     if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) break; // jump out early if CLKST shows EXT CLK slected before loop finishes
        LDR      R2,??DataTable4  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+0
        BNE      ??fbe_fei_10
//  157   }
//  158   if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x0) return 0x18; // check EXT CLK is really selected and return with error if not
??fbe_fei_11:
        LDR      R1,??DataTable4  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+0
        BEQ      ??fbe_fei_12
        MOVS     R0,#+24
        B        ??fbe_fei_2
//  159 
//  160 // Now in FEI mode
//  161   return mcg_out;
??fbe_fei_12:
??fbe_fei_2:
        POP      {R1,PC}          ;; return
//  162 } // fbe_fei
//  163 
//  164 
//  165 
//  166 
//  167 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  168 int fbe_fee(int crystal_val)
//  169 {
fbe_fee:
        PUSH     {R7,LR}
//  170   short i, fll_ref_freq;
//  171   int mcg_out;
//  172 
//  173 // Check MCG is in FBE mode
//  174   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x2) && // check CLKS mux has selcted external reference
//  175       (!(MCG_S & MCG_S_IREFST_MASK)) &&                               // check FLL ref is external ref clk
//  176     //  (!(MCG_S & MCG_S_PLLST_MASK)) &&                                // check PLLS mux has selected FLL
//  177       (!(MCG_C2 & MCG_C2_LP_MASK))))                                  // check MCG_C2[LP] bit is not set   
        LDR      R1,??DataTable5  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+2
        BNE      ??fbe_fee_0
        LDR      R1,??DataTable5  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BMI      ??fbe_fee_0
        LDR      R1,??DataTable4_1  ;; 0x40064001
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+30
        BPL      ??fbe_fee_1
//  178   {
//  179     return 0x4;                                                       // return error code
??fbe_fee_0:
        MOVS     R0,#+4
        B        ??fbe_fee_2
//  180   }
//  181   
//  182   // The FLL ref clk divide value depends on FRDIV and the RANGE value
//  183   if (((MCG_C2 & MCG_C2_RANGE0_MASK) >> MCG_C2_RANGE0_SHIFT) > 0)
??fbe_fee_1:
        LDR      R1,??DataTable4_1  ;; 0x40064001
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+4
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+0
        BEQ      ??fbe_fee_3
//  184   {
//  185     fll_ref_freq = (crystal_val / (32 << ((MCG_C1 & MCG_C1_FRDIV_MASK) >> MCG_C1_FRDIV_SHIFT)));
        MOVS     R1,#+32
        LDR      R2,??DataTable4_5  ;; 0x40064000
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+3
        LSLS     R2,R2,#+29       ;; ZeroExtS R2,R2,#+29,#+29
        LSRS     R2,R2,#+29
        LSLS     R1,R1,R2
        BL       __aeabi_idiv
        B        ??fbe_fee_4
//  186   }
//  187   else
//  188   {
//  189     fll_ref_freq = ((crystal_val) / (1 << (((MCG_C2 & MCG_C2_RANGE0_MASK) >> MCG_C2_RANGE0_SHIFT))));
??fbe_fee_3:
        MOVS     R1,#+1
        LDR      R2,??DataTable4_1  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+4
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        LSLS     R1,R1,R2
        BL       __aeabi_idiv
//  190   }
//  191   
//  192 // Check resulting FLL frequency 
//  193   mcg_out = fll_freq(fll_ref_freq); // FLL reference frequency calculated from ext ref freq and FRDIV
??fbe_fee_4:
        SXTH     R0,R0
        BL       fll_freq
//  194   if (mcg_out < 0x5B) {return mcg_out;} // If error code returned, return the code to calling function
        CMP      R0,#+91
        BLT      ??fbe_fee_2
//  195   
//  196 // Clear CLKS field to switch CLKS mux to select FLL output
//  197   MCG_C1 &= ~MCG_C1_CLKS_MASK; // clear CLKS to select FLL output
??fbe_fee_5:
        LDR      R1,??DataTable4_5  ;; 0x40064000
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+26       ;; ZeroExtS R1,R1,#+26,#+26
        LSRS     R1,R1,#+26
        LDR      R2,??DataTable4_5  ;; 0x40064000
        STRB     R1,[R2, #+0]
//  198 
//  199 // Wait for clock status bits to show clock source is FLL
//  200   for (i = 0 ; i < 2000 ; i++)
        MOVS     R1,#+0
        B        ??fbe_fee_6
??fbe_fee_7:
        ADDS     R1,R1,#+1
??fbe_fee_6:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fbe_fee_8
//  201   {
//  202     if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) break; // jump out early if CLKST shows FLL selected before loop finishes
        LDR      R2,??DataTable5  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+0
        BNE      ??fbe_fee_7
//  203   }
//  204   if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x0) return 0x18; // check FLL is really selected and return with error if not
??fbe_fee_8:
        LDR      R1,??DataTable5  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+0
        BEQ      ??fbe_fee_9
        MOVS     R0,#+24
        B        ??fbe_fee_2
//  205   
//  206 // Now in FEE mode
//  207   return mcg_out;
??fbe_fee_9:
??fbe_fee_2:
        POP      {R1,PC}          ;; return
//  208 } // fbe_fee
//  209 
//  210 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  211 int fee_fbe(int crystal_val)
//  212 { 
fee_fbe:
        PUSH     {LR}
//  213   short i;
//  214   
//  215 // Check MCG is in FEE mode
//  216  /*
//  217   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL
//  218       (!(MCG_S & MCG_S_IREFST_MASK)) &&                               // check FLL ref is external ref clk
//  219       (!(MCG_S & MCG_S_PLLST_MASK))))                                 // check PLLS mux has selected FLL
//  220  */ 
//  221  
//  222   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL
//  223       (!(MCG_S & MCG_S_IREFST_MASK))))                                 // check PLLS mux has selected FLL
        LDR      R1,??DataTable5  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+0
        BNE      ??fee_fbe_0
        LDR      R1,??DataTable5  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL      ??fee_fbe_1
//  224   {
//  225     return 0x2;                                                       // return error code
??fee_fbe_0:
        MOVS     R0,#+2
        B        ??fee_fbe_2
//  226   }
//  227   
//  228 // Set CLKS field to 2 to switch CLKS mux to select ext ref clock
//  229 // MCG is current in FEE mode so CLKS field = 0 so can just OR in new value
//  230   MCG_C1 |= MCG_C1_CLKS(2); // set CLKS to select ext ref clock
??fee_fbe_1:
        LDR      R1,??DataTable4_5  ;; 0x40064000
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+128
        ORRS     R2,R2,R1
        LDR      R1,??DataTable4_5  ;; 0x40064000
        STRB     R2,[R1, #+0]
//  231 
//  232 /// Wait for clock status bits to show clock source is ext ref clk
//  233   for (i = 0 ; i < 2000 ; i++)
        MOVS     R1,#+0
        B        ??fee_fbe_3
??fee_fbe_4:
        ADDS     R1,R1,#+1
??fee_fbe_3:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fee_fbe_5
//  234   {
//  235     if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x2) break; // jump out early if CLKST shows EXT CLK slected before loop finishes
        LDR      R2,??DataTable5  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+2
        BNE      ??fee_fbe_4
//  236   }
//  237   if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2) return 0x1A; // check EXT CLK is really selected and return with error if not
??fee_fbe_5:
        LDR      R1,??DataTable5  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+2
        BEQ      ??fee_fbe_6
        MOVS     R0,#+26
        B        ??fee_fbe_2
//  238   
//  239 // Now in FBE mode
//  240   return crystal_val;
??fee_fbe_6:
??fee_fbe_2:
        POP      {PC}             ;; return
//  241 } // fee_fbe

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x7a12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x1e86

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x40064000
//  242 
//  243 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  244 int fbe_fbi(int irc_freq, unsigned char irc_select)
//  245 {
fbe_fbi:
        PUSH     {LR}
//  246   unsigned char temp_reg;
//  247   unsigned char fcrdiv_val;
//  248   short i;
//  249   
//  250 // Check MCG is in FBE mode
//  251   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x2) && // check CLKS mux has selcted external reference
//  252       (!(MCG_S & MCG_S_IREFST_MASK)) &&                               // check FLL ref is external ref clk
//  253   //    (!(MCG_S & MCG_S_PLLST_MASK)) &&                                // check PLLS mux has selected FLL
//  254       (!(MCG_C2 & MCG_C2_LP_MASK))))                                  // check MCG_C2[LP] bit is not set   
        LDR      R2,??DataTable5  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+2
        BNE      ??fbe_fbi_0
        LDR      R2,??DataTable5  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BMI      ??fbe_fbi_0
        LDR      R2,??DataTable5_1  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+30
        BPL      ??fbe_fbi_1
//  255   {
//  256     return 0x4;                                                       // return error code
??fbe_fbi_0:
        MOVS     R0,#+4
        B        ??fbe_fbi_2
//  257   }
//  258 
//  259 // Check that the irc frequency matches the selected IRC 
//  260   if (!(irc_select))
??fbe_fbi_1:
        UXTB     R1,R1
        CMP      R1,#+0
        BNE      ??fbe_fbi_3
//  261   {    
//  262     if ((irc_freq < 31250) || (irc_freq > 39063)) {return 0x31;}
        LDR      R2,??DataTable5_2  ;; 0x7a12
        SUBS     R2,R0,R2
        LDR      R3,??DataTable5_3  ;; 0x1e86
        CMP      R2,R3
        BCC      ??fbe_fbi_4
        MOVS     R0,#+49
        B        ??fbe_fbi_2
//  263   }
//  264   else
//  265   {
//  266     if ((irc_freq < 3000000) || (irc_freq > 5000000)) {return 0x32;} // Fast IRC freq
??fbe_fbi_3:
        LDR      R2,??DataTable5_4  ;; 0x2dc6c0
        SUBS     R2,R0,R2
        LDR      R3,??DataTable5_5  ;; 0x1e8481
        CMP      R2,R3
        BCC      ??fbe_fbi_4
        MOVS     R0,#+50
        B        ??fbe_fbi_2
//  267   }
//  268   
//  269 // Select the required IRC
//  270   if (irc_select)
??fbe_fbi_4:
        UXTB     R1,R1
        CMP      R1,#+0
        BEQ      ??fbe_fbi_5
//  271   {
//  272     MCG_C2 |= MCG_C2_IRCS_MASK; // select fast IRC by setting IRCS
        LDR      R2,??DataTable5_1  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+1
        ORRS     R3,R3,R2
        LDR      R2,??DataTable5_1  ;; 0x40064001
        STRB     R3,[R2, #+0]
        B        ??fbe_fbi_6
//  273   }
//  274   else
//  275   {
//  276     MCG_C2 &= ~MCG_C2_IRCS_MASK; // select slow IRC by clearing IRCS
??fbe_fbi_5:
        LDR      R2,??DataTable5_1  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+254
        ANDS     R3,R3,R2
        LDR      R2,??DataTable5_1  ;; 0x40064001
        STRB     R3,[R2, #+0]
//  277   }
//  278   
//  279 // Make sure the clock monitor is disabled before switching modes otherwise it will trigger
//  280  // MCG_C6 &= ~MCG_C6_CME0_MASK;
//  281    MCG_C6 &= ~MCG_C6_CME0_MASK;
??fbe_fbi_6:
        LDR      R2,??DataTable5_6  ;; 0x40064005
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+223
        ANDS     R3,R3,R2
        LDR      R2,??DataTable5_6  ;; 0x40064005
        STRB     R3,[R2, #+0]
//  282   
//  283 // Select the IRC as the CLKS mux selection
//  284   temp_reg = MCG_C1;
        LDR      R2,??DataTable6  ;; 0x40064000
        LDRB     R2,[R2, #+0]
//  285   temp_reg &= ~MCG_C1_CLKS_MASK;                    // clear CLKS bits 
        LSLS     R2,R2,#+26       ;; ZeroExtS R2,R2,#+26,#+26
        LSRS     R2,R2,#+26
//  286   temp_reg |= (MCG_C1_CLKS(1) | MCG_C1_IREFS_MASK); // select IRC as MCGOUT and enable IREFS
        MOVS     R3,R2
        MOVS     R2,#+68
        ORRS     R2,R2,R3
//  287   MCG_C1 = temp_reg; // update MCG_C1
        LDR      R3,??DataTable6  ;; 0x40064000
        STRB     R2,[R3, #+0]
//  288   
//  289 // wait until internal reference switches to requested irc.
//  290   if (!(irc_select))
        UXTB     R1,R1
        CMP      R1,#+0
        BNE      ??fbe_fbi_7
//  291   {
//  292     for (i = 0 ; i < 2000 ; i++)
        MOVS     R2,#+0
        B        ??fbe_fbi_8
??fbe_fbi_9:
        ADDS     R2,R2,#+1
??fbe_fbi_8:
        MOVS     R3,#+250
        LSLS     R3,R3,#+3        ;; #+2000
        SXTH     R2,R2
        CMP      R2,R3
        BGE      ??fbe_fbi_10
//  293     {
//  294       if (!(MCG_S & MCG_S_IRCST_MASK)) break; // jump out early if IRCST clears before loop finishes
        LDR      R3,??DataTable5  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+31
        BMI      ??fbe_fbi_9
//  295     }
//  296     if (MCG_S & MCG_S_IRCST_MASK) return 0x13; // check bit is really clear and return with error if set
??fbe_fbi_10:
        LDR      R2,??DataTable5  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+31
        BPL      ??fbe_fbi_11
        MOVS     R0,#+19
        B        ??fbe_fbi_2
//  297   }
//  298   else
//  299   {
//  300     for (i = 0 ; i < 2000 ; i++)
??fbe_fbi_7:
        MOVS     R2,#+0
        B        ??fbe_fbi_12
??fbe_fbi_13:
        ADDS     R2,R2,#+1
??fbe_fbi_12:
        MOVS     R3,#+250
        LSLS     R3,R3,#+3        ;; #+2000
        SXTH     R2,R2
        CMP      R2,R3
        BGE      ??fbe_fbi_14
//  301     {
//  302       if (MCG_S & MCG_S_IRCST_MASK) break; // jump out early if IRCST sets before loop finishes
        LDR      R3,??DataTable5  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+31
        BPL      ??fbe_fbi_13
//  303     }
//  304     if (!(MCG_S & MCG_S_IRCST_MASK)) return 0x14; // check bit is really set and return with error if not set
??fbe_fbi_14:
        LDR      R2,??DataTable5  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+31
        BMI      ??fbe_fbi_11
        MOVS     R0,#+20
        B        ??fbe_fbi_2
//  305   }
//  306  
//  307 // Wait for clock status bits to update
//  308   for (i = 0 ; i < 2000 ; i++)
??fbe_fbi_11:
        MOVS     R2,#+0
        B        ??fbe_fbi_15
??fbe_fbi_16:
        ADDS     R2,R2,#+1
??fbe_fbi_15:
        MOVS     R3,#+250
        LSLS     R3,R3,#+3        ;; #+2000
        SXTH     R2,R2
        CMP      R2,R3
        BGE      ??fbe_fbi_17
//  309   {
//  310     if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x1) break; // jump out early if CLKST shows IRC slected before loop finishes
        LDR      R3,??DataTable5  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        UXTB     R3,R3
        LSRS     R3,R3,#+2
        LSLS     R3,R3,#+30       ;; ZeroExtS R3,R3,#+30,#+30
        LSRS     R3,R3,#+30
        CMP      R3,#+1
        BNE      ??fbe_fbi_16
//  311   }
//  312   if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x1) return 0x19; // check IRC is really selected and return with error if not
??fbe_fbi_17:
        LDR      R2,??DataTable5  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+1
        BEQ      ??fbe_fbi_18
        MOVS     R0,#+25
        B        ??fbe_fbi_2
//  313  
//  314 //GPIOC_PSOR = 0x00020000; //set bit 17 of port C  
//  315   // wait for Reference clock Status bit to set
//  316   for (i = 0 ; i < 2000 ; i++)
??fbe_fbi_18:
        MOVS     R2,#+0
        B        ??fbe_fbi_19
??fbe_fbi_20:
        ADDS     R2,R2,#+1
??fbe_fbi_19:
        MOVS     R3,#+250
        LSLS     R3,R3,#+3        ;; #+2000
        SXTH     R2,R2
        CMP      R2,R3
        BGE      ??fbe_fbi_21
//  317   {
//  318     if (MCG_S & MCG_S_IREFST_MASK) break; // jump out early if IREFST sets before loop finishes
        LDR      R3,??DataTable5  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+27
        BPL      ??fbe_fbi_20
//  319   }
//  320   if (!(MCG_S & MCG_S_IREFST_MASK)) return 0x12; // check bit is really set and return with error if not set
??fbe_fbi_21:
        LDR      R2,??DataTable5  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BMI      ??fbe_fbi_22
        MOVS     R0,#+18
        B        ??fbe_fbi_2
//  321 //GPIOC_PCOR = 0x00020000; // clear bit 17 of port C   
//  322 // Now in FBI mode
//  323   
//  324   if (irc_select)
??fbe_fbi_22:
        UXTB     R1,R1
        CMP      R1,#+0
        BEQ      ??fbe_fbi_23
//  325   {
//  326     fcrdiv_val = (1 << ((MCG_SC & MCG_SC_FCRDIV_MASK) >> MCG_SC_FCRDIV_SHIFT)); // calculate the fast IRC divder factor
        MOVS     R1,#+1
        LDR      R2,??DataTable8  ;; 0x40064008
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+29       ;; ZeroExtS R2,R2,#+29,#+29
        LSRS     R2,R2,#+29
        LSLS     R1,R1,R2
//  327     return (irc_freq / fcrdiv_val); // MCGOUT frequency equals fast IRC frequency divided by FCRDIV factor
        UXTB     R1,R1
        BL       __aeabi_idiv
        B        ??fbe_fbi_2
//  328   }
//  329   else
//  330   {
//  331     return irc_freq; // MCGOUT frequency equals slow IRC frequency
??fbe_fbi_23:
??fbe_fbi_2:
        POP      {PC}             ;; return
//  332   }
//  333 } //fbe_fbi

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x7a12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x1e86

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x2dc6c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x1e8481

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x40064005
//  334 
//  335 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  336 int fbi_fbe(int crystal_val, unsigned char hgo_val, unsigned char erefs_val)
//  337 {
fbi_fbe:
        PUSH     {R4,R5,LR}
//  338   unsigned char temp_reg;
//  339   unsigned char frdiv_val;
//  340   short i;
//  341   
//  342 // check if in FBI mode
//  343   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x1) && // check CLKS mux has selcted int ref clk
//  344       (MCG_S & MCG_S_IREFST_MASK) &&                                  // check FLL ref is internal ref clk
//  345     //  (!(MCG_S & MCG_S_PLLST_MASK)) &&                                // check PLLS mux has selected FLL
//  346       (!(MCG_C2 & MCG_C2_LP_MASK))))                                  // check LP bit is clear
        LDR      R3,??DataTable8_1  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        UXTB     R3,R3
        LSRS     R3,R3,#+2
        LSLS     R3,R3,#+30       ;; ZeroExtS R3,R3,#+30,#+30
        LSRS     R3,R3,#+30
        CMP      R3,#+1
        BNE      ??fbi_fbe_0
        LDR      R3,??DataTable8_1  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+27
        BPL      ??fbi_fbe_0
        LDR      R3,??DataTable8_2  ;; 0x40064001
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+30
        BPL      ??fbi_fbe_1
//  347   {  
//  348     return 0x3;                                                       // MCG not in correct mode return fail code 
??fbi_fbe_0:
        MOVS     R0,#+3
        B        ??fbi_fbe_2
//  349   }
//  350  
//  351 // check external frequency is less than the maximum frequency
//  352   if  (crystal_val > 50000000) {return 0x21;}
??fbi_fbe_1:
        LDR      R3,??DataTable8_3  ;; 0x2faf081
        CMP      R0,R3
        BLT      ??fbi_fbe_3
        MOVS     R0,#+33
        B        ??fbi_fbe_2
//  353   
//  354 // check crystal frequency is within spec. if crystal osc is being used
//  355   if (erefs_val)
??fbi_fbe_3:
        UXTB     R2,R2
        CMP      R2,#+0
        BEQ      ??fbi_fbe_4
//  356   {
//  357     if ((crystal_val < 30000) ||
//  358         ((crystal_val > 40000) && (crystal_val < 3000000)) ||
//  359         (crystal_val > 32000000)) {return 0x22;} // return error if one of the available crystal options is not available
        LDR      R3,??DataTable8_4  ;; 0x7530
        CMP      R0,R3
        BLT      ??fbi_fbe_5
        LDR      R3,??DataTable8_5  ;; 0x9c41
        SUBS     R3,R0,R3
        LDR      R4,??DataTable8_6  ;; 0x2d2a7f
        CMP      R3,R4
        BCC      ??fbi_fbe_5
        LDR      R3,??DataTable8_7  ;; 0x1e84801
        CMP      R0,R3
        BLT      ??fbi_fbe_4
??fbi_fbe_5:
        MOVS     R0,#+34
        B        ??fbi_fbe_2
//  360   }
//  361 
//  362 // make sure HGO will never be greater than 1. Could return an error instead if desired.  
//  363   if (hgo_val > 0)
??fbi_fbe_4:
        UXTB     R1,R1
        CMP      R1,#+1
        BCC      ??fbi_fbe_6
//  364   {
//  365     hgo_val = 1; // force hgo_val to 1 if > 0
        MOVS     R1,#+1
//  366   }
//  367 
//  368 // configure the MCG_C2 register
//  369 // the RANGE value is determined by the external frequency. Since the RANGE parameter affects the FRDIV divide value
//  370 // it still needs to be set correctly even if the oscillator is not being used
//  371   temp_reg = MCG_C2;
??fbi_fbe_6:
        LDR      R3,??DataTable8_2  ;; 0x40064001
        LDRB     R3,[R3, #+0]
//  372   temp_reg &= ~(MCG_C2_RANGE0_MASK | MCG_C2_HGO0_MASK | MCG_C2_EREFS0_MASK); // clear fields before writing new values
        MOVS     R4,R3
        MOVS     R3,#+195
        ANDS     R3,R3,R4
//  373   if (crystal_val <= 40000)
        LDR      R4,??DataTable8_5  ;; 0x9c41
        CMP      R0,R4
        BGE      ??fbi_fbe_7
//  374   {
//  375     temp_reg |= (MCG_C2_RANGE0(0) | (hgo_val << MCG_C2_HGO0_SHIFT) | (erefs_val << MCG_C2_EREFS0_SHIFT));
        MOVS     R4,R3
        UXTB     R1,R1
        LSLS     R1,R1,#+3
        UXTB     R2,R2
        LSLS     R3,R2,#+2
        ORRS     R3,R3,R1
        ORRS     R3,R3,R4
        B        ??fbi_fbe_8
//  376   }
//  377   else if (crystal_val <= 8000000)
??fbi_fbe_7:
        LDR      R4,??DataTable8_8  ;; 0x7a1201
        CMP      R0,R4
        BGE      ??fbi_fbe_9
//  378   {
//  379     temp_reg |= (MCG_C2_RANGE0(1) | (hgo_val << MCG_C2_HGO0_SHIFT) | (erefs_val << MCG_C2_EREFS0_SHIFT));
        MOVS     R5,R3
        UXTB     R1,R1
        LSLS     R1,R1,#+3
        UXTB     R2,R2
        LSLS     R4,R2,#+2
        ORRS     R4,R4,R1
        MOVS     R3,#+16
        ORRS     R3,R3,R4
        ORRS     R3,R3,R5
        B        ??fbi_fbe_8
//  380   }
//  381   else
//  382   {
//  383     temp_reg |= (MCG_C2_RANGE0(2) | (hgo_val << MCG_C2_HGO0_SHIFT) | (erefs_val << MCG_C2_EREFS0_SHIFT));
??fbi_fbe_9:
        MOVS     R5,R3
        UXTB     R1,R1
        LSLS     R1,R1,#+3
        UXTB     R2,R2
        LSLS     R4,R2,#+2
        ORRS     R4,R4,R1
        MOVS     R3,#+32
        ORRS     R3,R3,R4
        ORRS     R3,R3,R5
//  384   }
//  385   MCG_C2 = temp_reg;
??fbi_fbe_8:
        LDR      R1,??DataTable8_2  ;; 0x40064001
        STRB     R3,[R1, #+0]
//  386 
//  387 // determine FRDIV based on reference clock frequency
//  388 // since the external frequency has already been checked only the maximum frequency for each FRDIV value needs to be compared here.
//  389   if (crystal_val <= 1250000) {frdiv_val = 0;}
        LDR      R1,??DataTable8_9  ;; 0x1312d1
        CMP      R0,R1
        BGE      ??fbi_fbe_10
        MOVS     R1,#+0
        B        ??fbi_fbe_11
//  390   else if (crystal_val <= 2500000) {frdiv_val = 1;}
??fbi_fbe_10:
        LDR      R1,??DataTable8_10  ;; 0x2625a1
        CMP      R0,R1
        BGE      ??fbi_fbe_12
        MOVS     R1,#+1
        B        ??fbi_fbe_11
//  391   else if (crystal_val <= 5000000) {frdiv_val = 2;}
??fbi_fbe_12:
        LDR      R1,??DataTable8_11  ;; 0x4c4b41
        CMP      R0,R1
        BGE      ??fbi_fbe_13
        MOVS     R1,#+2
        B        ??fbi_fbe_11
//  392   else if (crystal_val <= 10000000) {frdiv_val = 3;}
??fbi_fbe_13:
        LDR      R1,??DataTable8_12  ;; 0x989681
        CMP      R0,R1
        BGE      ??fbi_fbe_14
        MOVS     R1,#+3
        B        ??fbi_fbe_11
//  393   else if (crystal_val <= 20000000) {frdiv_val = 4;}
??fbi_fbe_14:
        LDR      R1,??DataTable8_13  ;; 0x1312d01
        CMP      R0,R1
        BGE      ??fbi_fbe_15
        MOVS     R1,#+4
        B        ??fbi_fbe_11
//  394   else {frdiv_val = 5;}
??fbi_fbe_15:
        MOVS     R1,#+5
//  395   
//  396 // Select external oscilator and Reference Divider and clear IREFS to start ext osc
//  397 // If IRCLK is required it must be enabled outside of this driver, existing state will be maintained
//  398 // CLKS=2, FRDIV=frdiv_val, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  399   temp_reg = MCG_C1;
??fbi_fbe_11:
        LDR      R3,??DataTable6  ;; 0x40064000
        LDRB     R3,[R3, #+0]
//  400   temp_reg &= ~(MCG_C1_CLKS_MASK | MCG_C1_FRDIV_MASK | MCG_C1_IREFS_MASK); // Clear values in these fields
        LSLS     R3,R3,#+30       ;; ZeroExtS R3,R3,#+30,#+30
        LSRS     R3,R3,#+30
//  401   temp_reg |= (MCG_C1_CLKS(2) | MCG_C1_FRDIV(frdiv_val)); // Set the required CLKS and FRDIV values
        MOVS     R5,R3
        LSLS     R1,R1,#+3
        MOVS     R4,#+56
        ANDS     R4,R4,R1
        MOVS     R3,#+128
        ORRS     R3,R3,R4
        ORRS     R3,R3,R5
//  402   MCG_C1 = temp_reg;
        LDR      R1,??DataTable6  ;; 0x40064000
        STRB     R3,[R1, #+0]
//  403 
//  404 // if the external oscillator is used need to wait for OSCINIT to set
//  405   if (erefs_val)
        UXTB     R2,R2
        CMP      R2,#+0
        BEQ      ??fbi_fbe_16
//  406   {
//  407     for (i = 0 ; i < 10000 ; i++)
        MOVS     R1,#+0
        B        ??fbi_fbe_17
??fbi_fbe_18:
        ADDS     R1,R1,#+1
??fbi_fbe_17:
        LDR      R2,??DataTable8_14  ;; 0x2710
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fbi_fbe_19
//  408     {
//  409       if (MCG_S & MCG_S_OSCINIT0_MASK) break; // jump out early if OSCINIT sets before loop finishes
        LDR      R2,??DataTable8_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+30
        BPL      ??fbi_fbe_18
//  410     }
//  411     if (!(MCG_S & MCG_S_OSCINIT0_MASK)) return 0x23; // check bit is really set and return with error if not set
??fbi_fbe_19:
        LDR      R1,??DataTable8_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+30
        BMI      ??fbi_fbe_16
        MOVS     R0,#+35
        B        ??fbi_fbe_2
//  412   }
//  413 
//  414 // wait for Reference clock Status bit to clear
//  415   for (i = 0 ; i < 2000 ; i++)
??fbi_fbe_16:
        MOVS     R1,#+0
        B        ??fbi_fbe_20
??fbi_fbe_21:
        ADDS     R1,R1,#+1
??fbi_fbe_20:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fbi_fbe_22
//  416   {
//  417     if (!(MCG_S & MCG_S_IREFST_MASK)) break; // jump out early if IREFST clears before loop finishes
        LDR      R2,??DataTable8_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BMI      ??fbi_fbe_21
//  418   }
//  419   if (MCG_S & MCG_S_IREFST_MASK) return 0x11; // check bit is really clear and return with error if not set
??fbi_fbe_22:
        LDR      R1,??DataTable8_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL      ??fbi_fbe_23
        MOVS     R0,#+17
        B        ??fbi_fbe_2
//  420   
//  421 // Wait for clock status bits to show clock source is ext ref clk
//  422   for (i = 0 ; i < 2000 ; i++)
??fbi_fbe_23:
        MOVS     R1,#+0
        B        ??fbi_fbe_24
??fbi_fbe_25:
        ADDS     R1,R1,#+1
??fbi_fbe_24:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fbi_fbe_26
//  423   {
//  424     if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x2) break; // jump out early if CLKST shows EXT CLK slected before loop finishes
        LDR      R2,??DataTable8_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+2
        BNE      ??fbi_fbe_25
//  425   }
//  426   if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2) return 0x1A; // check EXT CLK is really selected and return with error if not
??fbi_fbe_26:
        LDR      R1,??DataTable8_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+2
        BEQ      ??fbi_fbe_27
        MOVS     R0,#+26
        B        ??fbi_fbe_2
//  427  
//  428 // Now in FBE  
//  429 // It is recommended that the clock monitor is enabled when using an external clock as the clock source/reference.
//  430 // It is enabled here but can be removed if this is not required.
//  431  // MCG_C6 |= MCG_C6_CME0_MASK;
//  432   MCG_C6 |= MCG_C6_CME0_MASK;
??fbi_fbe_27:
        LDR      R1,??DataTable9  ;; 0x40064005
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+32
        ORRS     R2,R2,R1
        LDR      R1,??DataTable9  ;; 0x40064005
        STRB     R2,[R1, #+0]
//  433   
//  434   return crystal_val; // MCGOUT frequency equals external clock frequency  
??fbi_fbe_2:
        POP      {R4,R5,PC}       ;; return
//  435 } // fbi_fbe

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40064000
//  436 
//  437 
//  438 /********************************************************************/
//  439 /* Functon name : fbi_blpi
//  440  *
//  441  * Mode transition: FBI to BLPI mode
//  442  *
//  443  * This function transitions the MCG from FBI mode to BLPI mode. This is
//  444  * achieved by setting the MCG_C2[LP] bit. There is no status bit to 
//  445  * check so 0 is always returned if the function was called with the MCG
//  446  * in FBI mode. 
//  447  *
//  448  * Parameters: irc_freq - internal reference clock frequency
//  449  *             ircs_select - 0 if slow irc, 1 if fast irc
//  450  *
//  451  * Return value : MCGOUT frequency or error code 0x13
//  452  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  453 int fbi_blpi(int irc_freq, unsigned char irc_select)
//  454 {
fbi_blpi:
        PUSH     {LR}
//  455   unsigned char fcrdiv_val;
//  456   
//  457 // check if in FBI mode
//  458   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x1) && // check CLKS mux has selcted int ref clk
//  459       (MCG_S & MCG_S_IREFST_MASK) &&                                  // check FLL ref is internal ref clk
//  460    //   (!(MCG_S & MCG_S_PLLST_MASK)) &&                                // check PLLS mux has selected FLL
//  461       (!(MCG_C2 & MCG_C2_LP_MASK))))                                  // check LP bit is clear
        LDR      R2,??DataTable8_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+1
        BNE      ??fbi_blpi_0
        LDR      R2,??DataTable8_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BPL      ??fbi_blpi_0
        LDR      R2,??DataTable8_2  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+30
        BPL      ??fbi_blpi_1
//  462   {  
//  463     return 0x3;                                                       // MCG not in correct mode return fail code 
??fbi_blpi_0:
        MOVS     R0,#+3
        B        ??fbi_blpi_2
//  464   }
//  465 
//  466 // Set LP bit to disable the FLL and enter BLPI
//  467   MCG_C2 |= MCG_C2_LP_MASK;
??fbi_blpi_1:
        LDR      R2,??DataTable8_2  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+2
        ORRS     R3,R3,R2
        LDR      R2,??DataTable8_2  ;; 0x40064001
        STRB     R3,[R2, #+0]
//  468   
//  469 // Now in BLPI
//  470   if (irc_select)
        UXTB     R1,R1
        CMP      R1,#+0
        BEQ      ??fbi_blpi_3
//  471   {
//  472     fcrdiv_val = (1 << ((MCG_SC & MCG_SC_FCRDIV_MASK) >> MCG_SC_FCRDIV_SHIFT)); // calculate the fast IRC divder factor
        MOVS     R1,#+1
        LDR      R2,??DataTable8  ;; 0x40064008
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+29       ;; ZeroExtS R2,R2,#+29,#+29
        LSRS     R2,R2,#+29
        LSLS     R1,R1,R2
//  473     return (irc_freq / fcrdiv_val); // MCGOUT frequency equals fast IRC frequency divided by 2
        UXTB     R1,R1
        BL       __aeabi_idiv
        B        ??fbi_blpi_2
//  474   }
//  475   else
//  476   {
//  477     return irc_freq; // MCGOUT frequency equals slow IRC frequency
??fbi_blpi_3:
??fbi_blpi_2:
        POP      {PC}             ;; return
//  478   }   
//  479 } // fbi_blpi
//  480 
//  481 
//  482 
//  483 /********************************************************************/
//  484 /* Functon name : blpi_fbi
//  485  *
//  486  * Mode transition: BLPI to FBI mode
//  487  *
//  488  * This function transitions the MCG from BLPI mode to FBI mode. This is
//  489  * achieved by clearing the MCG_C2[LP] bit. There is no status bit to 
//  490  * check so 0 is always returned if the function was called with the MCG
//  491  * in BLPI mode. 
//  492  *
//  493  * Parameters: irc_freq - internal reference clock frequency
//  494  *             ircs_select - 0 if slow irc, 1 if fast irc
//  495  *
//  496  * Return value : MCGOUT frequency or error code 0x15
//  497  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  498 int blpi_fbi(int irc_freq, unsigned char irc_select)
//  499 {
blpi_fbi:
        PUSH     {LR}
//  500   unsigned char fcrdiv_val;
//  501   // check if in BLPI mode
//  502   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x1) && // check CLKS mux has selcted int ref clk
//  503       (MCG_S & MCG_S_IREFST_MASK) &&                                  // check FLL ref is internal ref clk
//  504    //   (!(MCG_S & MCG_S_PLLST_MASK)) &&                                // check PLLS mux has selected FLL
//  505       (MCG_C2 & MCG_C2_LP_MASK)))                                     // check LP bit is set
        LDR      R2,??DataTable8_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+1
        BNE      ??blpi_fbi_0
        LDR      R2,??DataTable8_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BPL      ??blpi_fbi_0
        LDR      R2,??DataTable8_2  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+30
        BMI      ??blpi_fbi_1
//  506   {
//  507     return 0x5;                                                       // MCG not in correct mode return fail code
??blpi_fbi_0:
        MOVS     R0,#+5
        B        ??blpi_fbi_2
//  508   }
//  509 
//  510 // Clear LP bit to enable the FLL and enter FBI mode   
//  511   MCG_C2 &= ~MCG_C2_LP_MASK;
??blpi_fbi_1:
        LDR      R2,??DataTable8_2  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+253
        ANDS     R3,R3,R2
        LDR      R2,??DataTable8_2  ;; 0x40064001
        STRB     R3,[R2, #+0]
//  512   
//  513 // Now in FBI mode
//  514   if (irc_select)
        UXTB     R1,R1
        CMP      R1,#+0
        BEQ      ??blpi_fbi_3
//  515   {
//  516     fcrdiv_val = (1 << ((MCG_SC & MCG_SC_FCRDIV_MASK) >> MCG_SC_FCRDIV_SHIFT)); // calculate the fast IRC divder factor
        MOVS     R1,#+1
        LDR      R2,??DataTable8  ;; 0x40064008
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+29       ;; ZeroExtS R2,R2,#+29,#+29
        LSRS     R2,R2,#+29
        LSLS     R1,R1,R2
//  517     return (irc_freq / fcrdiv_val); // MCGOUT frequency equals fast IRC frequency divided by 2
        UXTB     R1,R1
        BL       __aeabi_idiv
        B        ??blpi_fbi_2
//  518   }
//  519   else
//  520   {
//  521     return irc_freq; // MCGOUT frequency equals slow IRC frequency
??blpi_fbi_3:
??blpi_fbi_2:
        POP      {PC}             ;; return
//  522   }
//  523 } // blpi_fbi

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x40064008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x2faf081

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x7530

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x9c41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x2d2a7f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x1e84801

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x7a1201

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x1312d1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x2625a1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x4c4b41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x989681

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x1312d01

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     0x2710
//  524 
//  525 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  526 int fbi_fee(int crystal_val, unsigned char hgo_val, unsigned char erefs_val)
//  527 {
fbi_fee:
        PUSH     {R3-R5,LR}
        MOVS     R5,R2
//  528   unsigned char temp_reg;
//  529   unsigned char frdiv_val;
//  530   short i;
//  531   int mcg_out, fll_ref_freq;
//  532 
//  533 // check if in FBI mode
//  534   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x1) && // check CLKS mux has selcted int ref clk
//  535       (MCG_S & MCG_S_IREFST_MASK) &&                                  // check FLL ref is internal ref clk
//  536    //   (!(MCG_S & MCG_S_PLLST_MASK)) &&                                // check PLLS mux has selected FLL
//  537       (!(MCG_C2 & MCG_C2_LP_MASK))))                                  // check LP bit is clear
        LDR      R2,??DataTable9_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+1
        BNE      ??fbi_fee_0
        LDR      R2,??DataTable9_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BPL      ??fbi_fee_0
        LDR      R2,??DataTable9_2  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+30
        BPL      ??fbi_fee_1
//  538   {  
//  539     return 0x3;                                                       // MCG not in correct mode return fail code 
??fbi_fee_0:
        MOVS     R0,#+3
        B        ??fbi_fee_2
//  540   }
//  541   
//  542 // check external frequency is less than the maximum frequency
//  543   if  (crystal_val > 50000000) {return 0x21;}
??fbi_fee_1:
        LDR      R2,??DataTable9_3  ;; 0x2faf081
        CMP      R0,R2
        BLT      ??fbi_fee_3
        MOVS     R0,#+33
        B        ??fbi_fee_2
//  544   
//  545 // check crystal frequency is within spec. if crystal osc is being used
//  546   if (erefs_val)
??fbi_fee_3:
        UXTB     R5,R5
        CMP      R5,#+0
        BEQ      ??fbi_fee_4
//  547   {
//  548     if ((crystal_val < 30000) ||
//  549         ((crystal_val > 40000) && (crystal_val < 3000000)) ||
//  550         (crystal_val > 32000000)) {return 0x22;} // return error if one of the available crystal options is not available
        LDR      R2,??DataTable9_4  ;; 0x7530
        CMP      R0,R2
        BLT      ??fbi_fee_5
        LDR      R2,??DataTable9_5  ;; 0x9c41
        SUBS     R2,R0,R2
        LDR      R3,??DataTable9_6  ;; 0x2d2a7f
        CMP      R2,R3
        BCC      ??fbi_fee_5
        LDR      R2,??DataTable9_7  ;; 0x1e84801
        CMP      R0,R2
        BLT      ??fbi_fee_4
??fbi_fee_5:
        MOVS     R0,#+34
        B        ??fbi_fee_2
//  551   }
//  552 
//  553 // make sure HGO will never be greater than 1. Could return an error instead if desired.  
//  554   if (hgo_val > 0)
??fbi_fee_4:
        UXTB     R1,R1
        CMP      R1,#+1
        BCC      ??fbi_fee_6
//  555   {
//  556     hgo_val = 1; // force hgo_val to 1 if > 0
        MOVS     R1,#+1
//  557   }
//  558 
//  559 // configure the MCG_C2 register
//  560 // the RANGE value is determined by the external frequency. Since the RANGE parameter affects the FRDIV divide value
//  561 // it still needs to be set correctly even if the oscillator is not being used
//  562   temp_reg = MCG_C2;
??fbi_fee_6:
        LDR      R2,??DataTable9_2  ;; 0x40064001
        LDRB     R2,[R2, #+0]
//  563   temp_reg &= ~(MCG_C2_RANGE0_MASK | MCG_C2_HGO0_MASK | MCG_C2_EREFS0_MASK); // clear fields before writing new values
        MOVS     R3,R2
        MOVS     R2,#+195
        ANDS     R2,R2,R3
//  564   if (crystal_val <= 40000)
        LDR      R3,??DataTable9_5  ;; 0x9c41
        CMP      R0,R3
        BGE      ??fbi_fee_7
//  565   {
//  566     temp_reg |= (MCG_C2_RANGE0(0) | (hgo_val << MCG_C2_HGO0_SHIFT) | (erefs_val << MCG_C2_EREFS0_SHIFT));
        MOVS     R3,R2
        UXTB     R1,R1
        LSLS     R1,R1,#+3
        UXTB     R5,R5
        LSLS     R2,R5,#+2
        ORRS     R2,R2,R1
        ORRS     R2,R2,R3
        B        ??fbi_fee_8
//  567   }
//  568   else if (crystal_val <= 8000000)
??fbi_fee_7:
        LDR      R3,??DataTable9_8  ;; 0x7a1201
        CMP      R0,R3
        BGE      ??fbi_fee_9
//  569   {
//  570     temp_reg |= (MCG_C2_RANGE0(1) | (hgo_val << MCG_C2_HGO0_SHIFT) | (erefs_val << MCG_C2_EREFS0_SHIFT));
        UXTB     R1,R1
        LSLS     R1,R1,#+3
        UXTB     R5,R5
        LSLS     R3,R5,#+2
        ORRS     R3,R3,R1
        MOVS     R1,#+16
        ORRS     R1,R1,R3
        ORRS     R1,R1,R2
        MOVS     R2,R1
        B        ??fbi_fee_8
//  571   }
//  572   else
//  573   {
//  574     temp_reg |= (MCG_C2_RANGE0(2) | (hgo_val << MCG_C2_HGO0_SHIFT) | (erefs_val << MCG_C2_EREFS0_SHIFT));
??fbi_fee_9:
        MOVS     R4,R2
        UXTB     R1,R1
        LSLS     R1,R1,#+3
        UXTB     R5,R5
        LSLS     R3,R5,#+2
        ORRS     R3,R3,R1
        MOVS     R2,#+32
        ORRS     R2,R2,R3
        ORRS     R2,R2,R4
//  575   }
//  576   MCG_C2 = temp_reg;
??fbi_fee_8:
        LDR      R1,??DataTable9_2  ;; 0x40064001
        STRB     R2,[R1, #+0]
//  577 
//  578 // determine FRDIV based on reference clock frequency
//  579 // since the external frequency has already been checked only the maximum frequency for each FRDIV value needs to be compared here.
//  580   if (crystal_val <= 1250000) {frdiv_val = 0;}
        LDR      R1,??DataTable10  ;; 0x1312d1
        CMP      R0,R1
        BGE      ??fbi_fee_10
        MOVS     R4,#+0
        B        ??fbi_fee_11
//  581   else if (crystal_val <= 2500000) {frdiv_val = 1;}
??fbi_fee_10:
        LDR      R1,??DataTable10_1  ;; 0x2625a1
        CMP      R0,R1
        BGE      ??fbi_fee_12
        MOVS     R4,#+1
        B        ??fbi_fee_11
//  582   else if (crystal_val <= 5000000) {frdiv_val = 2;}
??fbi_fee_12:
        LDR      R1,??DataTable10_2  ;; 0x4c4b41
        CMP      R0,R1
        BGE      ??fbi_fee_13
        MOVS     R4,#+2
        B        ??fbi_fee_11
//  583   else if (crystal_val <= 10000000) {frdiv_val = 3;}
??fbi_fee_13:
        LDR      R1,??DataTable10_3  ;; 0x989681
        CMP      R0,R1
        BGE      ??fbi_fee_14
        MOVS     R4,#+3
        B        ??fbi_fee_11
//  584   else if (crystal_val <= 20000000) {frdiv_val = 4;}
??fbi_fee_14:
        LDR      R1,??DataTable10_4  ;; 0x1312d01
        CMP      R0,R1
        BGE      ??fbi_fee_15
        MOVS     R4,#+4
        B        ??fbi_fee_11
//  585   else {frdiv_val = 5;}
??fbi_fee_15:
        MOVS     R4,#+5
//  586 // The FLL ref clk divide value depends on FRDIV and the RANGE value
//  587   if (((MCG_C2 & MCG_C2_RANGE0_MASK) >> MCG_C2_RANGE0_SHIFT) > 0)
??fbi_fee_11:
        LDR      R1,??DataTable9_2  ;; 0x40064001
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+4
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+0
        BEQ      ??fbi_fee_16
//  588   {
//  589     fll_ref_freq = ((crystal_val) / (32 << frdiv_val));
        MOVS     R1,#+32
        LSLS     R1,R1,R4
        BL       __aeabi_idiv
        B        ??fbi_fee_17
//  590   }
//  591   else
//  592   {
//  593     fll_ref_freq = ((crystal_val) / (1 << frdiv_val));
??fbi_fee_16:
        MOVS     R1,#+1
        LSLS     R1,R1,R4
        BL       __aeabi_idiv
//  594   }
//  595   
//  596 // Check resulting FLL frequency 
//  597   mcg_out = fll_freq(fll_ref_freq); // FLL reference frequency calculated from ext ref freq and FRDIV
??fbi_fee_17:
        BL       fll_freq
//  598   if (mcg_out < 0x5B) {return mcg_out;} // If error code returned, return the code to calling function
        CMP      R0,#+91
        BLT      ??fbi_fee_2
//  599   
//  600 // Select external oscilator and Reference Divider and clear IREFS to start ext osc
//  601 // If IRCLK is required it must be enabled outside of this driver, existing state will be maintained
//  602 // CLKS=0, FRDIV=frdiv_val, IREFS=0, IRCLKEN=?, IREFSTEN=?
//  603   temp_reg = MCG_C1;
??fbi_fee_18:
        LDR      R1,??DataTable10_5  ;; 0x40064000
        LDRB     R2,[R1, #+0]
//  604   temp_reg &= ~(MCG_C1_CLKS_MASK | MCG_C1_FRDIV_MASK | MCG_C1_IREFS_MASK); // Clear CLKS, FRDIV and IREFS fields
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
//  605   temp_reg |= (MCG_C1_CLKS(0) | MCG_C1_FRDIV(frdiv_val)); // Set the required CLKS and FRDIV values
        MOVS     R3,R2
        LSLS     R1,R4,#+3
        MOVS     R2,#+56
        ANDS     R2,R2,R1
        ORRS     R2,R2,R3
//  606   MCG_C1 = temp_reg;
        LDR      R1,??DataTable10_5  ;; 0x40064000
        STRB     R2,[R1, #+0]
//  607 
//  608 // if the external oscillator is used need to wait for OSCINIT to set
//  609   if (erefs_val)
        UXTB     R5,R5
        CMP      R5,#+0
        BEQ      ??fbi_fee_19
//  610   {
//  611     for (i = 0 ; i < 10000 ; i++)
        MOVS     R1,#+0
        B        ??fbi_fee_20
??fbi_fee_21:
        ADDS     R1,R1,#+1
??fbi_fee_20:
        LDR      R2,??DataTable10_6  ;; 0x2710
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fbi_fee_22
//  612     {
//  613       if (MCG_S & MCG_S_OSCINIT0_MASK) break; // jump out early if OSCINIT sets before loop finishes
        LDR      R2,??DataTable9_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+30
        BPL      ??fbi_fee_21
//  614     }
//  615     if (!(MCG_S & MCG_S_OSCINIT0_MASK)) return 0x23; // check bit is really set and return with error if not set
??fbi_fee_22:
        LDR      R1,??DataTable9_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+30
        BMI      ??fbi_fee_19
        MOVS     R0,#+35
        B        ??fbi_fee_2
//  616   }
//  617 
//  618 // wait for Reference clock Status bit to clear
//  619   for (i = 0 ; i < 2000 ; i++)
??fbi_fee_19:
        MOVS     R1,#+0
        B        ??fbi_fee_23
??fbi_fee_24:
        ADDS     R1,R1,#+1
??fbi_fee_23:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fbi_fee_25
//  620   {
//  621     if (!(MCG_S & MCG_S_IREFST_MASK)) break; // jump out early if IREFST clears before loop finishes
        LDR      R2,??DataTable9_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BMI      ??fbi_fee_24
//  622   }
//  623   if (MCG_S & MCG_S_IREFST_MASK) return 0x11; // check bit is really clear and return with error if not set
??fbi_fee_25:
        LDR      R1,??DataTable9_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL      ??fbi_fee_26
        MOVS     R0,#+17
        B        ??fbi_fee_2
//  624   
//  625 // Wait for clock status bits to show clock source is ext ref clk
//  626   for (i = 0 ; i < 2000 ; i++)
??fbi_fee_26:
        MOVS     R1,#+0
        B        ??fbi_fee_27
??fbi_fee_28:
        ADDS     R1,R1,#+1
??fbi_fee_27:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fbi_fee_29
//  627   {
//  628     if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) break; // jump out early if CLKST shows FLL selected before loop finishes
        LDR      R2,??DataTable9_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+0
        BNE      ??fbi_fee_28
//  629   }
//  630   if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x0) return 0x18; // check FLLK is really selected and return with error if not
??fbi_fee_29:
        LDR      R1,??DataTable9_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+0
        BEQ      ??fbi_fee_30
        MOVS     R0,#+24
        B        ??fbi_fee_2
//  631  
//  632 // Now in FEE  
//  633 // It is recommended that the clock monitor is enabled when using an external clock as the clock source/reference.
//  634 // It is enabled here but can be removed if this is not required.
//  635 // The clock monitor MUST be disabled when returning to a non-external clock mode (FEI, FBI and BLPI)
//  636  // MCG_C6 |= MCG_C6_CME0_MASK;
//  637   MCG_C6 |= MCG_C6_CME0_MASK;
??fbi_fee_30:
        LDR      R1,??DataTable11  ;; 0x40064005
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+32
        ORRS     R2,R2,R1
        LDR      R1,??DataTable11  ;; 0x40064005
        STRB     R2,[R1, #+0]
//  638   
//  639   return mcg_out; // MCGOUT frequency equals FLL frequency
??fbi_fee_2:
        POP      {R1,R4,R5,PC}    ;; return
//  640 } //fbi_fee

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x2faf081

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x7530

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x9c41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x2d2a7f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     0x1e84801

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     0x7a1201
//  641 
//  642 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  643 int fee_fbi(int irc_freq, unsigned char irc_select)
//  644 { 
fee_fbi:
        PUSH     {LR}
//  645   unsigned char fcrdiv_val;
//  646   short i;
//  647   
//  648 // Check MCG is in FEE mode
//  649 /*
//  650   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL output
//  651       (!(MCG_S & MCG_S_IREFST_MASK)) &&                             // check FLL ref is external ref clk
//  652       (!(MCG_S & MCG_S_PLLST_MASK))))                               // check PLLS mux has selected FLL
//  653 */ 
//  654  if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL output
//  655 		 (!(MCG_S & MCG_S_IREFST_MASK))))	
        LDR      R2,??DataTable11_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+0
        BNE      ??fee_fbi_0
        LDR      R2,??DataTable11_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BPL      ??fee_fbi_1
//  656 
//  657   {
//  658     return 0x2;                                                     // return error code
??fee_fbi_0:
        MOVS     R0,#+2
        B        ??fee_fbi_2
//  659   }
//  660   
//  661   // Check that the irc frequency matches the selected IRC 
//  662   if (!(irc_select))
??fee_fbi_1:
        UXTB     R1,R1
        CMP      R1,#+0
        BNE      ??fee_fbi_3
//  663   {    
//  664     if ((irc_freq < 31250) || (irc_freq > 39063)) {return 0x31;}
        LDR      R2,??DataTable11_2  ;; 0x7a12
        SUBS     R2,R0,R2
        LDR      R3,??DataTable11_3  ;; 0x1e86
        CMP      R2,R3
        BCC      ??fee_fbi_4
        MOVS     R0,#+49
        B        ??fee_fbi_2
//  665   }
//  666   else
//  667   {
//  668     if ((irc_freq < 3000000) || (irc_freq > 5000000)) {return 0x32;} // Fast IRC freq
??fee_fbi_3:
        LDR      R2,??DataTable11_4  ;; 0x2dc6c0
        SUBS     R2,R0,R2
        LDR      R3,??DataTable11_5  ;; 0x1e8481
        CMP      R2,R3
        BCC      ??fee_fbi_4
        MOVS     R0,#+50
        B        ??fee_fbi_2
//  669   }
//  670   
//  671 // Select the required IRC
//  672   if (irc_select)
??fee_fbi_4:
        UXTB     R1,R1
        CMP      R1,#+0
        BEQ      ??fee_fbi_5
//  673   {
//  674     MCG_C2 |= MCG_C2_IRCS_MASK; // select fast IRC by setting IRCS
        LDR      R2,??DataTable11_6  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+1
        ORRS     R3,R3,R2
        LDR      R2,??DataTable11_6  ;; 0x40064001
        STRB     R3,[R2, #+0]
        B        ??fee_fbi_6
//  675   }
//  676   else
//  677   {
//  678     MCG_C2 &= ~MCG_C2_IRCS_MASK; // select slow IRC by clearing IRCS
??fee_fbi_5:
        LDR      R2,??DataTable11_6  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+254
        ANDS     R3,R3,R2
        LDR      R2,??DataTable11_6  ;; 0x40064001
        STRB     R3,[R2, #+0]
//  679   }
//  680   
//  681 // Make sure the clock monitor is disabled before switching modes otherwise it will trigger
//  682  // MCG_C6 &= ~MCG_C6_CME0_MASK;
//  683    MCG_C6 &= ~MCG_C6_CME0_MASK;
??fee_fbi_6:
        LDR      R2,??DataTable11  ;; 0x40064005
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+223
        ANDS     R3,R3,R2
        LDR      R2,??DataTable11  ;; 0x40064005
        STRB     R3,[R2, #+0]
//  684   
//  685 // Select the IRC as the CLKS mux selection
//  686   MCG_C1 |= MCG_C1_CLKS(1) | MCG_C1_IREFS_MASK; // set IREFS and select IRC as MCGOUT
        LDR      R2,??DataTable10_5  ;; 0x40064000
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+68
        ORRS     R3,R3,R2
        LDR      R2,??DataTable10_5  ;; 0x40064000
        STRB     R3,[R2, #+0]
//  687  
//  688 // wait until internal reference switches to requested irc.
//  689   if (!(irc_select))
        UXTB     R1,R1
        CMP      R1,#+0
        BNE      ??fee_fbi_7
//  690   {
//  691     for (i = 0 ; i < 2000 ; i++)
        MOVS     R2,#+0
        B        ??fee_fbi_8
??fee_fbi_9:
        ADDS     R2,R2,#+1
??fee_fbi_8:
        MOVS     R3,#+250
        LSLS     R3,R3,#+3        ;; #+2000
        SXTH     R2,R2
        CMP      R2,R3
        BGE      ??fee_fbi_10
//  692     {
//  693       if (!(MCG_S & MCG_S_IRCST_MASK)) break; // jump out early if IRCST clears before loop finishes
        LDR      R3,??DataTable11_1  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+31
        BMI      ??fee_fbi_9
//  694     }
//  695     if (MCG_S & MCG_S_IRCST_MASK) return 0x13; // check bit is really clear and return with error if set
??fee_fbi_10:
        LDR      R2,??DataTable11_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+31
        BPL      ??fee_fbi_11
        MOVS     R0,#+19
        B        ??fee_fbi_2
//  696   }
//  697   else
//  698   {
//  699     for (i = 0 ; i < 2000 ; i++)
??fee_fbi_7:
        MOVS     R2,#+0
        B        ??fee_fbi_12
??fee_fbi_13:
        ADDS     R2,R2,#+1
??fee_fbi_12:
        MOVS     R3,#+250
        LSLS     R3,R3,#+3        ;; #+2000
        SXTH     R2,R2
        CMP      R2,R3
        BGE      ??fee_fbi_14
//  700     {
//  701       if (MCG_S & MCG_S_IRCST_MASK) break; // jump out early if IRCST sets before loop finishes
        LDR      R3,??DataTable11_1  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+31
        BPL      ??fee_fbi_13
//  702     }
//  703     if (!(MCG_S & MCG_S_IRCST_MASK)) return 0x14; // check bit is really set and return with error if not set
??fee_fbi_14:
        LDR      R2,??DataTable11_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+31
        BMI      ??fee_fbi_11
        MOVS     R0,#+20
        B        ??fee_fbi_2
//  704   }
//  705   
//  706 // Wait for clock status bits to update
//  707   for (i = 0 ; i < 2000 ; i++)
??fee_fbi_11:
        MOVS     R2,#+0
        B        ??fee_fbi_15
??fee_fbi_16:
        ADDS     R2,R2,#+1
??fee_fbi_15:
        MOVS     R3,#+250
        LSLS     R3,R3,#+3        ;; #+2000
        SXTH     R2,R2
        CMP      R2,R3
        BGE      ??fee_fbi_17
//  708   {
//  709     if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x1) break; // jump out early if CLKST shows IRC slected before loop finishes
        LDR      R3,??DataTable11_1  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        UXTB     R3,R3
        LSRS     R3,R3,#+2
        LSLS     R3,R3,#+30       ;; ZeroExtS R3,R3,#+30,#+30
        LSRS     R3,R3,#+30
        CMP      R3,#+1
        BNE      ??fee_fbi_16
//  710   }
//  711   if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x1) return 0x19; // check IRC is really selected and return with error if not
??fee_fbi_17:
        LDR      R2,??DataTable11_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+1
        BEQ      ??fee_fbi_18
        MOVS     R0,#+25
        B        ??fee_fbi_2
//  712   
//  713 // wait for Reference clock Status bit to set
//  714   for (i = 0 ; i < 2000 ; i++)
??fee_fbi_18:
        MOVS     R2,#+0
        B        ??fee_fbi_19
??fee_fbi_20:
        ADDS     R2,R2,#+1
??fee_fbi_19:
        MOVS     R3,#+250
        LSLS     R3,R3,#+3        ;; #+2000
        SXTH     R2,R2
        CMP      R2,R3
        BGE      ??fee_fbi_21
//  715   {
//  716     if (MCG_S & MCG_S_IREFST_MASK) break; // jump out early if IREFST sets before loop finishes
        LDR      R3,??DataTable11_1  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+27
        BPL      ??fee_fbi_20
//  717   }
//  718   if (!(MCG_S & MCG_S_IREFST_MASK)) return 0x12; // check bit is really set and return with error if not set  
??fee_fbi_21:
        LDR      R2,??DataTable11_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BMI      ??fee_fbi_22
        MOVS     R0,#+18
        B        ??fee_fbi_2
//  719   
//  720 // Now in FBI mode
//  721   if (irc_select)
??fee_fbi_22:
        UXTB     R1,R1
        CMP      R1,#+0
        BEQ      ??fee_fbi_23
//  722   {
//  723     fcrdiv_val = (1 << ((MCG_SC & MCG_SC_FCRDIV_MASK) >> MCG_SC_FCRDIV_SHIFT)); // calculate the fast IRC divder factor
        MOVS     R1,#+1
        LDR      R2,??DataTable13  ;; 0x40064008
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+29       ;; ZeroExtS R2,R2,#+29,#+29
        LSRS     R2,R2,#+29
        LSLS     R1,R1,R2
//  724     return (irc_freq / fcrdiv_val); // MCGOUT frequency equals fast IRC frequency divided by 2
        UXTB     R1,R1
        BL       __aeabi_idiv
        B        ??fee_fbi_2
//  725   }
//  726   else
//  727   {
//  728     return irc_freq; // MCGOUT frequency equals slow IRC frequency
??fee_fbi_23:
??fee_fbi_2:
        POP      {PC}             ;; return
//  729   }
//  730 } // fee_fbi 

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0x1312d1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x2625a1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     0x4c4b41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     0x989681

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x1312d01

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x40064000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x2710
//  731 
//  732 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  733 int fbi_fei(int slow_irc_freq)
//  734 {
fbi_fei:
        PUSH     {R7,LR}
//  735   unsigned char temp_reg;
//  736   short i;
//  737   int mcg_out;
//  738 
//  739 // check if in FBI mode
//  740   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x1) && // check CLKS mux has selcted int ref clk
//  741       (MCG_S & MCG_S_IREFST_MASK) &&                                  // check FLL ref is internal ref clk
//  742    //   (!(MCG_S & MCG_S_PLLST_MASK)) &&                                // check PLLS mux has selected FLL
//  743       (!(MCG_C2 & MCG_C2_LP_MASK))))                                  // check LP bit is clear
        LDR      R1,??DataTable13_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+1
        BNE      ??fbi_fei_0
        LDR      R1,??DataTable13_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL      ??fbi_fei_0
        LDR      R1,??DataTable11_6  ;; 0x40064001
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+30
        BPL      ??fbi_fei_1
//  744   {  
//  745     return 0x3;                                                       // MCG not in correct mode return fail code 
??fbi_fei_0:
        MOVS     R0,#+3
        B        ??fbi_fei_2
//  746   }
//  747 
//  748 // Check IRC frequency is within spec.
//  749   if ((slow_irc_freq < 31250) || (slow_irc_freq > 39063))
??fbi_fei_1:
        LDR      R1,??DataTable11_2  ;; 0x7a12
        SUBS     R1,R0,R1
        LDR      R2,??DataTable11_3  ;; 0x1e86
        CMP      R1,R2
        BCC      ??fbi_fei_3
//  750   {
//  751     return 0x31;
        MOVS     R0,#+49
        B        ??fbi_fei_2
//  752   }
//  753 
//  754 // Check resulting FLL frequency 
//  755   mcg_out = fll_freq(slow_irc_freq); 
??fbi_fei_3:
        BL       fll_freq
//  756   if (mcg_out < 0x5B) {return mcg_out;} // If error code returned, return the code to calling function
        CMP      R0,#+91
        BLT      ??fbi_fei_2
//  757   
//  758 // Change the CLKS mux to select the FLL output as MCGOUT  
//  759   temp_reg = MCG_C1;
??fbi_fei_4:
        LDR      R1,??DataTable13_2  ;; 0x40064000
        LDRB     R1,[R1, #+0]
//  760   temp_reg &= ~MCG_C1_CLKS_MASK; // clear CLKS field
        LSLS     R1,R1,#+26       ;; ZeroExtS R1,R1,#+26,#+26
        LSRS     R1,R1,#+26
//  761   temp_reg |= MCG_C1_CLKS(0); // select FLL as MCGOUT
//  762   temp_reg |= MCG_C1_IREFS_MASK; // make sure IRC is FLL reference
        MOVS     R2,R1
        MOVS     R1,#+4
        ORRS     R1,R1,R2
//  763   MCG_C1 = temp_reg; // update MCG_C1
        LDR      R2,??DataTable13_2  ;; 0x40064000
        STRB     R1,[R2, #+0]
//  764   
//  765 // wait for Reference clock Status bit to clear
//  766   for (i = 0 ; i < 2000 ; i++)
        MOVS     R1,#+0
        B        ??fbi_fei_5
??fbi_fei_6:
        ADDS     R1,R1,#+1
??fbi_fei_5:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fbi_fei_7
//  767   {
//  768     if (MCG_S & MCG_S_IREFST_MASK) break; // jump out early if IREFST clears before loop finishes
        LDR      R2,??DataTable13_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BPL      ??fbi_fei_6
//  769   }
//  770   if (!(MCG_S & MCG_S_IREFST_MASK)) return 0x12; // check bit is really set and return with error if not set
??fbi_fei_7:
        LDR      R1,??DataTable13_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BMI      ??fbi_fei_8
        MOVS     R0,#+18
        B        ??fbi_fei_2
//  771   
//  772 // Wait for clock status bits to show clock source is ext ref clk
//  773   for (i = 0 ; i < 2000 ; i++)
??fbi_fei_8:
        MOVS     R1,#+0
        B        ??fbi_fei_9
??fbi_fei_10:
        ADDS     R1,R1,#+1
??fbi_fei_9:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fbi_fei_11
//  774   {
//  775     if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) break; // jump out early if CLKST shows FLL slected before loop finishes
        LDR      R2,??DataTable13_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+0
        BNE      ??fbi_fei_10
//  776   }
//  777   if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x0) return 0x18; // check FLL is really selected and return with error if not
??fbi_fei_11:
        LDR      R1,??DataTable13_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+0
        BEQ      ??fbi_fei_12
        MOVS     R0,#+24
        B        ??fbi_fei_2
//  778 
//  779 // Now in FEI mode
//  780   return mcg_out;  
??fbi_fei_12:
??fbi_fei_2:
        POP      {R1,PC}          ;; return
//  781 } // fbi_fei

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     0x7a12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x1e86

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     0x2dc6c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     0x1e8481

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     0x40064001
//  782 
//  783 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  784 int fei_fbi(int irc_freq, unsigned char irc_select)
//  785 {
fei_fbi:
        PUSH     {LR}
//  786   unsigned char temp_reg;
//  787   unsigned char fcrdiv_val;
//  788   short i;
//  789   
//  790 // Check MCG is in FEI mode
//  791 /*
//  792   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL output
//  793       (MCG_S & MCG_S_IREFST_MASK) &&                                  // check FLL ref is internal ref clk
//  794       (!(MCG_S & MCG_S_PLLST_MASK))))                                 // check PLLS mux has selected FLL
//  795 */
//  796 	if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL output
//  797 		(MCG_S & MCG_S_IREFST_MASK))) 								// check PLLS mux has selected FLL
        LDR      R2,??DataTable13_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+0
        BNE      ??fei_fbi_0
        LDR      R2,??DataTable13_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BMI      ??fei_fbi_1
//  798 
//  799   {
//  800     return 0x1;                                                       // return error code
??fei_fbi_0:
        MOVS     R0,#+1
        B        ??fei_fbi_2
//  801   } 
//  802 
//  803 // Check that the irc frequency matches the selected IRC 
//  804   if (!(irc_select))
??fei_fbi_1:
        UXTB     R1,R1
        CMP      R1,#+0
        BNE      ??fei_fbi_3
//  805   {    
//  806     if ((irc_freq < 31250) || (irc_freq > 39063)) {return 0x31;}
        LDR      R2,??DataTable13_3  ;; 0x7a12
        SUBS     R2,R0,R2
        LDR      R3,??DataTable13_4  ;; 0x1e86
        CMP      R2,R3
        BCC      ??fei_fbi_4
        MOVS     R0,#+49
        B        ??fei_fbi_2
//  807   }
//  808   else
//  809   {
//  810     if ((irc_freq < 3000000) || (irc_freq > 5000000)) {return 0x32;} // Fast IRC freq
??fei_fbi_3:
        LDR      R2,??DataTable13_5  ;; 0x2dc6c0
        SUBS     R2,R0,R2
        LDR      R3,??DataTable13_6  ;; 0x1e8481
        CMP      R2,R3
        BCC      ??fei_fbi_4
        MOVS     R0,#+50
        B        ??fei_fbi_2
//  811   }
//  812   
//  813 // Select the desired IRC
//  814   if (irc_select)
??fei_fbi_4:
        UXTB     R1,R1
        CMP      R1,#+0
        BEQ      ??fei_fbi_5
//  815   {
//  816     MCG_C2 |= MCG_C2_IRCS_MASK; // select fast IRCS
        LDR      R2,??DataTable13_7  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+1
        ORRS     R3,R3,R2
        LDR      R2,??DataTable13_7  ;; 0x40064001
        STRB     R3,[R2, #+0]
        B        ??fei_fbi_6
//  817   }
//  818   else
//  819   {
//  820     MCG_C2 &= ~MCG_C2_IRCS_MASK; // select slow IRCS
??fei_fbi_5:
        LDR      R2,??DataTable13_7  ;; 0x40064001
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+254
        ANDS     R3,R3,R2
        LDR      R2,??DataTable13_7  ;; 0x40064001
        STRB     R3,[R2, #+0]
//  821   }
//  822   
//  823 // Change the CLKS mux to select the IRC as the MCGOUT
//  824   temp_reg = MCG_C1;
??fei_fbi_6:
        LDR      R2,??DataTable13_2  ;; 0x40064000
        LDRB     R2,[R2, #+0]
//  825   temp_reg &= ~MCG_C1_CLKS_MASK; // clear CLKS
        LSLS     R2,R2,#+26       ;; ZeroExtS R2,R2,#+26,#+26
        LSRS     R2,R2,#+26
//  826   temp_reg |= MCG_C1_CLKS(1); // select IRC as the MCG clock sourse
        MOVS     R3,R2
        MOVS     R2,#+64
        ORRS     R2,R2,R3
//  827   MCG_C1 = temp_reg;
        LDR      R3,??DataTable13_2  ;; 0x40064000
        STRB     R2,[R3, #+0]
//  828 
//  829 // wait until internal reference switches to requested irc.
//  830   if (!(irc_select))
        UXTB     R1,R1
        CMP      R1,#+0
        BNE      ??fei_fbi_7
//  831   {
//  832     for (i = 0 ; i < 2000 ; i++)
        MOVS     R2,#+0
        B        ??fei_fbi_8
??fei_fbi_9:
        ADDS     R2,R2,#+1
??fei_fbi_8:
        MOVS     R3,#+250
        LSLS     R3,R3,#+3        ;; #+2000
        SXTH     R2,R2
        CMP      R2,R3
        BGE      ??fei_fbi_10
//  833     {
//  834       if (!(MCG_S & MCG_S_IRCST_MASK)) break; // jump out early if IRCST clears before loop finishes
        LDR      R3,??DataTable13_1  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+31
        BMI      ??fei_fbi_9
//  835     }
//  836     if (MCG_S & MCG_S_IRCST_MASK) return 0x13; // check bit is really clear and return with error if set
??fei_fbi_10:
        LDR      R2,??DataTable13_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+31
        BPL      ??fei_fbi_11
        MOVS     R0,#+19
        B        ??fei_fbi_2
//  837   }
//  838   else
//  839   {
//  840     for (i = 0 ; i < 2000 ; i++)
??fei_fbi_7:
        MOVS     R2,#+0
        B        ??fei_fbi_12
??fei_fbi_13:
        ADDS     R2,R2,#+1
??fei_fbi_12:
        MOVS     R3,#+250
        LSLS     R3,R3,#+3        ;; #+2000
        SXTH     R2,R2
        CMP      R2,R3
        BGE      ??fei_fbi_14
//  841     {
//  842       if (MCG_S & MCG_S_IRCST_MASK) break; // jump out early if IRCST sets before loop finishes
        LDR      R3,??DataTable13_1  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+31
        BPL      ??fei_fbi_13
//  843     }
//  844     if (!(MCG_S & MCG_S_IRCST_MASK)) return 0x14; // check bit is really set and return with error if not set
??fei_fbi_14:
        LDR      R2,??DataTable13_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+31
        BMI      ??fei_fbi_11
        MOVS     R0,#+20
        B        ??fei_fbi_2
//  845   }
//  846   
//  847 // Wait for clock status bits to update
//  848   for (i = 0 ; i < 2000 ; i++)
??fei_fbi_11:
        MOVS     R2,#+0
        B        ??fei_fbi_15
??fei_fbi_16:
        ADDS     R2,R2,#+1
??fei_fbi_15:
        MOVS     R3,#+250
        LSLS     R3,R3,#+3        ;; #+2000
        SXTH     R2,R2
        CMP      R2,R3
        BGE      ??fei_fbi_17
//  849   {
//  850     if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x1) break; // jump out early if CLKST shows IRC slected before loop finishes
        LDR      R3,??DataTable13_1  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        UXTB     R3,R3
        LSRS     R3,R3,#+2
        LSLS     R3,R3,#+30       ;; ZeroExtS R3,R3,#+30,#+30
        LSRS     R3,R3,#+30
        CMP      R3,#+1
        BNE      ??fei_fbi_16
//  851   }
//  852   if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x1) return 0x19; // check IRC is really selected and return with error if not
??fei_fbi_17:
        LDR      R2,??DataTable13_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+1
        BEQ      ??fei_fbi_18
        MOVS     R0,#+25
        B        ??fei_fbi_2
//  853   
//  854 // Now in FBI mode
//  855   if (irc_select)
??fei_fbi_18:
        UXTB     R1,R1
        CMP      R1,#+0
        BEQ      ??fei_fbi_19
//  856   {
//  857     fcrdiv_val = (1 << ((MCG_SC & MCG_SC_FCRDIV_MASK) >> MCG_SC_FCRDIV_SHIFT)); // calculate the fast IRC divder factor
        MOVS     R1,#+1
        LDR      R2,??DataTable13  ;; 0x40064008
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+29       ;; ZeroExtS R2,R2,#+29,#+29
        LSRS     R2,R2,#+29
        LSLS     R1,R1,R2
//  858     return (irc_freq / fcrdiv_val); // MCGOUT frequency equals fast IRC frequency divided by 2
        UXTB     R1,R1
        BL       __aeabi_idiv
        B        ??fei_fbi_2
//  859   }
//  860   else
//  861   {
//  862     return irc_freq; // MCGOUT frequency equals slow IRC frequency
??fei_fbi_19:
??fei_fbi_2:
        POP      {PC}             ;; return
//  863   }   
//  864 } // fei_fbi
//  865 
//  866 
//  867 
//  868 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  869 int fee_fei(int slow_irc_freq)
//  870 {
fee_fei:
        PUSH     {R7,LR}
//  871   short i;
//  872   int mcg_out;
//  873 
//  874 // Check MCG is in FEE mode
//  875 /*
//  876   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL
//  877       (!(MCG_S & MCG_S_IREFST_MASK)) &&                             // check FLL ref is external ref clk
//  878       (!(MCG_S & MCG_S_PLLST_MASK))))                               // check PLLS mux has selected FLL
//  879 */
//  880 	if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL
//  881 		(!(MCG_S & MCG_S_IREFST_MASK)))) 							  // check PLLS mux has selected FLL
        LDR      R1,??DataTable13_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+30
        LSRS     R1,R1,#+30
        CMP      R1,#+0
        BNE      ??fee_fei_0
        LDR      R1,??DataTable13_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL      ??fee_fei_1
//  882 
//  883   {
//  884     return 0x2;                                                     // return error code
??fee_fei_0:
        MOVS     R0,#+2
        B        ??fee_fei_2
//  885   } 
//  886       
//  887 // Check IRC frequency is within spec.
//  888   if ((slow_irc_freq < 31250) || (slow_irc_freq > 39063))
??fee_fei_1:
        LDR      R1,??DataTable13_3  ;; 0x7a12
        SUBS     R1,R0,R1
        LDR      R2,??DataTable13_4  ;; 0x1e86
        CMP      R1,R2
        BCC      ??fee_fei_3
//  889   {
//  890     return 0x31;
        MOVS     R0,#+49
        B        ??fee_fei_2
//  891   }
//  892 
//  893   // Check resulting FLL frequency 
//  894   mcg_out = fll_freq(slow_irc_freq); 
??fee_fei_3:
        BL       fll_freq
//  895   if (mcg_out < 0x5B) {return mcg_out;} // If error code returned, return the code to calling function
        CMP      R0,#+91
        BLT      ??fee_fei_2
//  896   
//  897 // Ensure clock monitor is disabled before switching to FEI otherwise a loss of clock will trigger
//  898   MCG_C6 &= ~MCG_C6_CME0_MASK;
??fee_fei_4:
        LDR      R1,??DataTable14  ;; 0x40064005
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+223
        ANDS     R2,R2,R1
        LDR      R1,??DataTable14  ;; 0x40064005
        STRB     R2,[R1, #+0]
//  899 
//  900 // Change FLL reference clock from external to internal by setting IREFS bit
//  901   MCG_C1 |= MCG_C1_IREFS_MASK; // select internal reference
        LDR      R1,??DataTable13_2  ;; 0x40064000
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+4
        ORRS     R2,R2,R1
        LDR      R1,??DataTable13_2  ;; 0x40064000
        STRB     R2,[R1, #+0]
//  902   
//  903 // wait for Reference clock to switch to internal reference 
//  904   for (i = 0 ; i < 2000 ; i++)
        MOVS     R1,#+0
        B        ??fee_fei_5
??fee_fei_6:
        ADDS     R1,R1,#+1
??fee_fei_5:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fee_fei_7
//  905   {
//  906     if (MCG_S & MCG_S_IREFST_MASK) break; // jump out early if IREFST sets before loop finishes
        LDR      R2,??DataTable13_1  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BPL      ??fee_fei_6
//  907   }
//  908   if (!(MCG_S & MCG_S_IREFST_MASK)) return 0x12; // check bit is really set and return with error if not set  
??fee_fei_7:
        LDR      R1,??DataTable13_1  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BMI      ??fee_fei_8
        MOVS     R0,#+18
        B        ??fee_fei_2
//  909   
//  910 // Now in FEI mode  
//  911   return mcg_out;  
??fee_fei_8:
??fee_fei_2:
        POP      {R1,PC}          ;; return
//  912 } // fee_fei

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0x40064008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     0x40064000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     0x7a12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     0x1e86

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     0x2dc6c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     0x1e8481

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     0x40064001
//  913 
//  914 
//  915 /********************************************************************/
//  916 /* Functon name : fei_fee_rtc
//  917  *
//  918  * Mode transition: FEI to FEE mode with the RTC clock as the FLL ref clock
//  919  *
//  920  * This function transitions the MCG from FEI mode to FEE mode with the RTC clock 
//  921  * being used as the FLL reference clock. The switching of the OSCSEL mux must be
//  922  * made in a non-external clock mode (FEI,FBI or BLPI).
//  923  * This driver only makes the changes necessary to the the RTC registers to perform
//  924  * the task of enabling and verifying the RTC OSC and only leaves the RTC OSC enabled. 
//  925  * After enabling the oscillator the Timer Prescaler Register is used to count 4086 
//  926  * cycles to ensure the RTC OSC is running.
//  927  * The RTC clock monitor is enabled by means of the CME1 bit (called CME3 in the
//  928  * header file.
//  929  *
//  930  * Parameters: rtc_freq - RTC clock frequency in Hz
//  931  *
//  932  * Return value : MCGCLKOUT frequency (Hz) or error code
//  933  */
//  934 /*
//  935 int fei_fee_rtc(int rtc_freq)
//  936 {
//  937   unsigned char disable_rtc_clk_gate = 0;
//  938   unsigned char disable_rtc_tce = 0;
//  939   unsigned char temp_reg;
//  940  
//  941   int rtc_count;
//  942   int mcg_out, i;
//  943   
//  944 // check if in FEI mode
//  945   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL output
//  946       (MCG_S & MCG_S_IREFST_MASK) &&                                  // check FLL ref is internal ref clk
//  947       (!(MCG_S & MCG_S_PLLST_MASK))))                                 // check PLLS mux has selected FLL
//  948   {
//  949     return 0x1;                                                     // return error code
//  950   }
//  951 
//  952 // check RTC frequency is within spec.
//  953   if  ((rtc_freq > 40000) || (rtc_freq < 30000)) {return 0x24;}
//  954   
//  955 // check if RTC clock gate is enabled
//  956   if (!(SIM_SCGC6 & SIM_SCGC6_RTC_MASK))
//  957   {
//  958     SIM_SCGC6 |= SIM_SCGC6_RTC_MASK; // enable RTC clock gate
//  959     disable_rtc_clk_gate = 1; // flag clock gate needs disabled when complete
//  960   }
//  961 
//  962 // check if RTC TCE is enabled
//  963   if (!(RTC_SR & RTC_SR_TCE_MASK))
//  964   {
//  965     RTC_SR |= RTC_SR_TCE_MASK; // enable RTC clock gate
//  966     disable_rtc_tce = 1; // flag TCE needs disabled when complete
//  967   }
//  968   
//  969 // check if RTC oscillator is already enabled and enable it if not
//  970   if (!(RTC_CR & RTC_CR_OSCE_MASK))
//  971   {
//  972     RTC_CR |= RTC_CR_OSCE_MASK; // enable RTC oscillator
//  973   }
//  974 // check oscillator is running
//  975   if (RTC_SR & RTC_SR_TIF_MASK) // check if time invalid flag is set
//  976   {
//  977     RTC_SR &= ~RTC_SR_TCE_MASK; // make sure time counter enable is cleared to allow TSR to be writable
//  978     RTC_TSR = 0x00000000; // clears TIF
//  979     RTC_SR |= RTC_SR_TCE_MASK; // re-enable time counter
//  980   }
//  981 // take a snapshot of counter and add 4096, handling roll-over condition  
//  982   if (RTC_TPR > 0x6FFF) 
//  983   {
//  984     rtc_count = (0x8000 - RTC_TPR); 
//  985   }
//  986   else
//  987   {
//  988     rtc_count = (RTC_TPR + 4096);
//  989   }
//  990   
//  991   for (i = 0 ; i < 11250000 ; i++) // allows for > 1 second osc start up time
//  992   {
//  993     if (RTC_TPR == rtc_count) break; // jump out early if RTC_TPR > desired count before loop finishes
//  994   }
//  995   if (RTC_TPR != rtc_count) // check if RTC is counting correctly and return with error if not
//  996   {
//  997     if (disable_rtc_tce)
//  998     {
//  999       RTC_SR &= ~RTC_SR_TCE_MASK; // disable TCE
// 1000     }
// 1001     
// 1002     if (disable_rtc_clk_gate)
// 1003     {
// 1004       SIM_SCGC6 &= ~SIM_SCGC6_RTC_MASK; // disable RTC clock gate
// 1005     }
// 1006     return 0x25; 
// 1007   }
// 1008 // disable anything that was was originally disabled  
// 1009   if (disable_rtc_tce)
// 1010   {
// 1011     RTC_SR &= ~RTC_SR_TCE_MASK; // disable TCE
// 1012   }
// 1013   
// 1014   if (disable_rtc_clk_gate)
// 1015   {
// 1016     SIM_SCGC6 &= ~SIM_SCGC6_RTC_MASK; // disable RTC clock gate
// 1017   }
// 1018   
// 1019 // select the RTC oscillator as the MCG reference clock before the external clock is used
// 1020   //MCG_C7 |= MCG_C7_OSCSEL_MASK;
// 1021  
// 1022 // clear IREFS to switch to ext ref clock and set FRDIV to divide by 1 and keep CLKS = 0
// 1023 // keep state of IRCLKEN and IREFSTEN
// 1024   temp_reg = MCG_C1;
// 1025   temp_reg &= (MCG_C1_IRCLKEN_MASK | MCG_C1_IREFSTEN_MASK);
// 1026   MCG_C1 = temp_reg;
// 1027 
// 1028 // wait for Reference clock Status bit to clear
// 1029   for (i = 0 ; i < 2000 ; i++)
// 1030   {
// 1031     if (!(MCG_S & MCG_S_IREFST_MASK)) break; // jump out early if IREFST clears before loop finishes
// 1032   }
// 1033   if (MCG_S & MCG_S_IREFST_MASK) return 0x11; // check bit is really clear and return with error if not set
// 1034   
// 1035 // Now in FEE 
// 1036   
// 1037 // Check resulting FLL frequency 
// 1038   mcg_out = fll_freq(rtc_freq); // FLL reference frequency calculated from ext ref freq and FRDIV
// 1039   if (mcg_out < 0x5B) {return mcg_out;} // If error code returned, return the code to calling function
// 1040   
// 1041   return mcg_out; // MCGOUT frequency equals FLL frequency
// 1042 } // fei_fee_rtc
// 1043 */
// 1044 
// 1045 /********************************************************************/
// 1046 /* Functon name : fee_fei_rtc
// 1047  *
// 1048  * Mode transition: FEE with the RTC clock as the FLL ref clock to FEI mode 
// 1049  *
// 1050  * This function transitions the MCG from FEE with the RTC clock as the FLL ref clock  
// 1051  * to FEI mode. The switching of the OSCSEL mux must be made in a non-external clock 
// 1052  * mode (FEI,FBI or BLPI) so the MCG is transitioned to FEI mode before switching the
// 1053  * mux.
// 1054  * This driver does not make any changes to the the RTC registers and leaves the RTC
// 1055  * OSC enabled. 
// 1056  * The RTC clock monitor is disabled by means of clearing the CME1 bit (called CME3 
// 1057  * in the header file) before switching to FEI mode. If the RTC OSC is to be permanently 
// 1058  * kept running then the RTC clock monitor can be left enabled. However, it is 
// 1059  * recommended that when the RTC OSC is not used as the system reference clock the 
// 1060  * MCG_C8[LOCRE1] bit be cleared and the MCG isr be included which handles the loss of
// 1061  * clock interrupt appropriately.
// 1062  *
// 1063  * Parameters: slow_irc_freq - slow IRC clock frequency in Hz
// 1064  *
// 1065  * Return value : MCGCLKOUT frequency (Hz) or error code
// 1066  */
// 1067 /*
// 1068 int fee_fei_rtc(int slow_irc_freq)
// 1069 {
// 1070   int mcg_out, i;
// 1071   
// 1072 // Check MCG is in FEE mode
// 1073   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL
// 1074       (!(MCG_S & MCG_S_IREFST_MASK)) &&                             // check FLL ref is external ref clk
// 1075       (!(MCG_S & MCG_S_PLLST_MASK))))                               // check PLLS mux has selected FLL
// 1076   {
// 1077     return 0x2;                                                     // return error code
// 1078   } 
// 1079       
// 1080 // Check IRC frequency is within spec.
// 1081   if ((slow_irc_freq < 31250) || (slow_irc_freq > 39063))
// 1082   {
// 1083     return 0x31;
// 1084   }
// 1085 
// 1086   // Check resulting FLL frequency 
// 1087   mcg_out = fll_freq(slow_irc_freq); 
// 1088   if (mcg_out < 0x5B) {return mcg_out;} // If error code returned, return the code to calling function
// 1089 
// 1090 // Change FLL reference clock from external to internal by setting IREFS bit
// 1091   MCG_C1 |= MCG_C1_IREFS_MASK; // select internal reference
// 1092   
// 1093 // wait for Reference clock to switch to internal reference 
// 1094   for (i = 0 ; i < 2000 ; i++)
// 1095   {
// 1096     if (MCG_S & MCG_S_IREFST_MASK) break; // jump out early if IREFST sets before loop finishes
// 1097   }
// 1098   if (!(MCG_S & MCG_S_IREFST_MASK)) return 0x12; // check bit is really set and return with error if not set  
// 1099   
// 1100 // Now in FEI mode  
// 1101 
// 1102 // Switch CLKSEL mux back to system oscillator once external clock is not being used. 
// 1103  // MCG_C7 &= ~MCG_C7_OSCSEL_MASK;
// 1104   
// 1105   return mcg_out; // MCGOUT frequency equals FLL frequency
// 1106 } // fee_fei_rtc
// 1107 */
// 1108 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1109 unsigned char atc(unsigned char irc_select, int irc_freq, int mcg_out_freq)
// 1110 {
atc:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 1111   unsigned char mcg_mode;
// 1112   unsigned short atcv;
// 1113   int bus_clock_freq;
// 1114   int  bus_clk_div_val;
// 1115   int orig_div;
// 1116   int temp_reg;
// 1117   
// 1118   if (irc_select > 0) // force irc to 1 if greater than 0
        UXTB     R4,R4
        CMP      R4,#+1
        BCC      ??atc_0
// 1119   {
// 1120     irc_select = 1;
        MOVS     R4,#+1
// 1121   }
// 1122   
// 1123   mcg_mode = what_mcg_mode(); // get present MCG mode
??atc_0:
        BL       what_mcg_mode
// 1124   if ((mcg_mode != PEE) && (mcg_mode != PBE) && (mcg_mode != FBE))
        UXTB     R0,R0
        CMP      R0,#+8
        BEQ      ??atc_1
        UXTB     R0,R0
        CMP      R0,#+7
        BEQ      ??atc_1
        UXTB     R0,R0
        CMP      R0,#+5
        BEQ      ??atc_1
// 1125   {
// 1126     return 1; // return error code if not in PEE, PBE or FBE modes
        MOVS     R0,#+1
        B        ??atc_2
// 1127   }
// 1128   
// 1129   orig_div = SIM_CLKDIV1; //store present clock divider values
??atc_1:
        LDR      R0,??DataTable16  ;; 0x40048044
        LDR      R7,[R0, #+0]
// 1130   
// 1131   bus_clk_div_val = mcg_out_freq / 16000000; // calculate bus clock divider to generate fastest allowed bus clock for autotrim
        MOVS     R0,R6
        LDR      R1,??DataTable16_1  ;; 0xf42400
        BL       __aeabi_idiv
// 1132   temp_reg = SIM_CLKDIV1;
        LDR      R1,??DataTable16  ;; 0x40048044
        LDR      R1,[R1, #+0]
// 1133   temp_reg &= ~SIM_CLKDIV1_OUTDIV4_MASK; // clear dividers except core
        MOVS     R2,R1
        LDR      R1,??DataTable16_2  ;; 0xfff8ffff
        ANDS     R1,R1,R2
// 1134   // set all bus and flash dividers to same value to ensure clocking restrictions are met
// 1135   temp_reg |= SIM_CLKDIV1_OUTDIV4(bus_clk_div_val);
        MOVS     R2,R1
        LSLS     R0,R0,#+16
        MOVS     R1,#+224
        LSLS     R1,R1,#+11       ;; #+458752
        ANDS     R1,R1,R0
        ORRS     R1,R1,R2
// 1136   SIM_CLKDIV1 = temp_reg; // set actual dividers
        LDR      R0,??DataTable16  ;; 0x40048044
        STR      R1,[R0, #+0]
// 1137   
// 1138   bus_clock_freq = mcg_out_freq / (((SIM_CLKDIV1) >> 16)+ 1);//For L1PT, flash and bus use the same bus div
        MOVS     R0,R6
        LDR      R1,??DataTable16  ;; 0x40048044
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+16
        ADDS     R1,R1,#+1
        BL       __aeabi_uidiv
// 1139   if ((bus_clock_freq < 8000000) || (bus_clock_freq > 16000000))
        LDR      R1,??DataTable16_3  ;; 0x7a1200
        SUBS     R1,R0,R1
        LDR      R2,??DataTable16_4  ;; 0x7a1201
        CMP      R1,R2
        BCC      ??atc_3
// 1140   {
// 1141     SIM_CLKDIV1 = orig_div; // set SIM_CLKDIV1 back to original value
        LDR      R0,??DataTable16  ;; 0x40048044
        STR      R7,[R0, #+0]
// 1142     return 3; // error, bus clock frequency is not within 8MHz to 16MHz
        MOVS     R0,#+3
        B        ??atc_2
// 1143   }
// 1144                 
// 1145   if(!irc_select) //determine if slow or fast IRC to be trimmed
??atc_3:
        UXTB     R4,R4
        CMP      R4,#+0
        BNE      ??atc_4
// 1146   {
// 1147     if (irc_freq < 31250) // check frequency is above min spec.
        LDR      R1,??DataTable16_5  ;; 0x7a12
        CMP      R5,R1
        BGE      ??atc_5
// 1148     {
// 1149       SIM_CLKDIV1 = orig_div; // set SIM_CLKDIV1 back to original value
        LDR      R0,??DataTable16  ;; 0x40048044
        STR      R7,[R0, #+0]
// 1150       return 4;
        MOVS     R0,#+4
        B        ??atc_2
// 1151     }
// 1152     if (irc_freq > 39062) // check frequency is below max spec.
??atc_5:
        LDR      R1,??DataTable16_6  ;; 0x9897
        CMP      R5,R1
        BLT      ??atc_6
// 1153     {
// 1154       SIM_CLKDIV1 = orig_div; // set SIM_CLKDIV1 back to original value
        LDR      R0,??DataTable16  ;; 0x40048044
        STR      R7,[R0, #+0]
// 1155       return 5;
        MOVS     R0,#+5
        B        ??atc_2
// 1156     }         
// 1157   }
// 1158   else
// 1159   {
// 1160     if (irc_freq < 3000000) // check frequency is above min spec.
??atc_4:
        LDR      R1,??DataTable16_7  ;; 0x2dc6c0
        CMP      R5,R1
        BGE      ??atc_7
// 1161     {
// 1162       SIM_CLKDIV1 = orig_div; // set SIM_CLKDIV1 back to original value
        LDR      R0,??DataTable16  ;; 0x40048044
        STR      R7,[R0, #+0]
// 1163       return 6;
        MOVS     R0,#+6
        B        ??atc_2
// 1164     }
// 1165     if (irc_freq > 5000000) // check frequency is below max spec.
??atc_7:
        LDR      R1,??DataTable16_8  ;; 0x4c4b41
        CMP      R5,R1
        BLT      ??atc_6
// 1166     {
// 1167       SIM_CLKDIV1 = orig_div; // set SIM_CLKDIV1 back to original value
        LDR      R0,??DataTable16  ;; 0x40048044
        STR      R7,[R0, #+0]
// 1168       return 7;
        MOVS     R0,#+7
        B        ??atc_2
// 1169     }            
// 1170   } // if
// 1171         
// 1172 // Set up autocal registers, must use floating point calculation
// 1173   if (irc_select) 
??atc_6:
        UXTB     R4,R4
        CMP      R4,#+0
        BEQ      ??atc_8
// 1174     atcv = (unsigned short)(128.0f * (21.0f * (bus_clock_freq / (float)irc_freq)));
        BL       __aeabi_i2f
        MOVS     R6,R0
        MOVS     R0,R5
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fdiv
        LDR      R1,??DataTable16_9  ;; 0x41a80000
        BL       __aeabi_fmul
        MOVS     R1,#+134
        LSLS     R1,R1,#+23       ;; #+1124073472
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        B        ??atc_9
// 1175   else
// 1176     atcv = (unsigned short)(21.0f * (bus_clock_freq / (float)irc_freq));
??atc_8:
        BL       __aeabi_i2f
        MOVS     R6,R0
        MOVS     R0,R5
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fdiv
        LDR      R1,??DataTable16_9  ;; 0x41a80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
// 1177         
// 1178   MCG_ATCVL = (atcv & 0xFF); //Set ATCVL to lower 8 bits of count value
??atc_9:
        LDR      R1,??DataTable16_10  ;; 0x4006400b
        MOVS     R2,R0
        STRB     R2,[R1, #+0]
// 1179   MCG_ATCVH = ((atcv & 0xFF00) >> 8); // Set ATCVH to upper 8 bits of count value
        UXTH     R0,R0
        LSRS     R0,R0,#+8
        LDR      R1,??DataTable16_11  ;; 0x4006400a
        STRB     R0,[R1, #+0]
// 1180 
// 1181 // Enable autocal
// 1182   MCG_SC &= ~(MCG_SC_ATME_MASK | MCG_SC_ATMS_MASK |MCG_SC_ATMF_MASK); // clear auto trim settings
        LDR      R0,??DataTable16_12  ;; 0x40064008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27       ;; ZeroExtS R0,R0,#+27,#+27
        LSRS     R0,R0,#+27
        LDR      R1,??DataTable16_12  ;; 0x40064008
        STRB     R0,[R1, #+0]
// 1183   temp_reg = (MCG_SC_ATME_MASK | (irc_select << MCG_SC_ATMS_SHIFT)); //Select IRC to trim and enable trim machine
        UXTB     R4,R4
        LSLS     R0,R4,#+6
        MOVS     R1,#+128
        ORRS     R1,R1,R0
// 1184   MCG_SC |= temp_reg;
        LDR      R0,??DataTable16_12  ;; 0x40064008
        LDRB     R0,[R0, #+0]
        ORRS     R1,R1,R0
        LDR      R0,??DataTable16_12  ;; 0x40064008
        STRB     R1,[R0, #+0]
// 1185         
// 1186   while (MCG_SC & MCG_SC_ATME_MASK) {}; //poll for ATME bit to clear
??atc_10:
        LDR      R0,??DataTable16_12  ;; 0x40064008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BMI      ??atc_10
// 1187         
// 1188   if (MCG_SC & MCG_SC_ATMF_MASK) // check if error flag set
        LDR      R0,??DataTable16_12  ;; 0x40064008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL      ??atc_11
// 1189   {
// 1190     SIM_CLKDIV1 = orig_div; // set SIM_CLKDIV1 back to original value
        LDR      R0,??DataTable16  ;; 0x40048044
        STR      R7,[R0, #+0]
// 1191     return 8;
        MOVS     R0,#+8
        B        ??atc_2
// 1192   } 
// 1193   else 
// 1194   {      
// 1195     if (!irc_select)
??atc_11:
        UXTB     R4,R4
        CMP      R4,#+0
        BNE      ??atc_12
// 1196     {
// 1197       if ((MCG_C3 == 0xFF) || (MCG_C3 == 0))
        LDR      R0,??DataTable16_13  ;; 0x40064002
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        CMP      R0,#+255
        BEQ      ??atc_13
        LDR      R0,??DataTable16_13  ;; 0x40064002
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        CMP      R0,#+0
        BNE      ??atc_14
// 1198       {
// 1199         SIM_CLKDIV1 = orig_div; // set SIM_CLKDIV1 back to original value
??atc_13:
        LDR      R0,??DataTable16  ;; 0x40048044
        STR      R7,[R0, #+0]
// 1200         return 9;
        MOVS     R0,#+9
        B        ??atc_2
// 1201       }
// 1202     }
// 1203     else
// 1204     {
// 1205       if ((((MCG_C4 & MCG_C4_FCTRIM_MASK) >> MCG_C4_FCTRIM_SHIFT) == 0xF) ||
// 1206           (((MCG_C4 & MCG_C4_FCTRIM_MASK) >> MCG_C4_FCTRIM_SHIFT) == 0))
??atc_12:
        LDR      R0,??DataTable16_14  ;; 0x40064003
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        CMP      R0,#+15
        BEQ      ??atc_15
        LDR      R0,??DataTable16_14  ;; 0x40064003
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        CMP      R0,#+0
        BNE      ??atc_14
// 1207       {
// 1208         SIM_CLKDIV1 = orig_div; // set SIM_CLKDIV1 back to original value
??atc_15:
        LDR      R0,??DataTable16  ;; 0x40048044
        STR      R7,[R0, #+0]
// 1209         return 10;
        MOVS     R0,#+10
        B        ??atc_2
// 1210       }
// 1211     }
// 1212   }
// 1213   SIM_CLKDIV1 = orig_div; // set SIM_CLKDIV1 back to original value
??atc_14:
        LDR      R0,??DataTable16  ;; 0x40048044
        STR      R7,[R0, #+0]
// 1214   return 0;
        MOVS     R0,#+0
??atc_2:
        POP      {R1,R4-R7,PC}    ;; return
// 1215 }// atc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     0x40064005
// 1216 
// 1217 
// 1218 
// 1219 
// 1220 
// 1221 
// 1222 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1223 unsigned char what_mcg_mode(void)
// 1224 {
what_mcg_mode:
        PUSH     {LR}
// 1225   // check if in FEI mode
// 1226   /*
// 1227   if ((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) &&      // check CLKS mux has selcted FLL output
// 1228       (MCG_S & MCG_S_IREFST_MASK) &&                                     // check FLL ref is internal ref clk
// 1229       (!(MCG_S & MCG_S_PLLST_MASK)))                                     // check PLLS mux has selected FLL
// 1230   */
// 1231   if ((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && 	 // check CLKS mux has selcted FLL output
// 1232 		  (MCG_S & MCG_S_IREFST_MASK))									 // check PLLS mux has selected FLL
        LDR      R0,??DataTable17  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BNE      ??what_mcg_mode_0
        LDR      R0,??DataTable17  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL      ??what_mcg_mode_0
// 1233 
// 1234   {
// 1235     return FEI;                                                          // return FEI code
        MOVS     R0,#+3
        B        ??what_mcg_mode_1
// 1236   }
// 1237   // Check MCG is in PEE mode
// 1238   /*
// 1239   else if ((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x3) && // check CLKS mux has selcted PLL output
// 1240           (!(MCG_S & MCG_S_IREFST_MASK)) &&                              // check FLL ref is external ref clk
// 1241           (MCG_S & MCG_S_PLLST_MASK))                                    // check PLLS mux has selected PLL 
// 1242   {
// 1243     return PEE;                                                          // return PEE code
// 1244   }
// 1245   */
// 1246   // Check MCG is in PBE mode
// 1247   /*
// 1248   else if ((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x2) && // check CLKS mux has selcted external reference
// 1249           (!(MCG_S & MCG_S_IREFST_MASK)) &&                              // check FLL ref is external ref clk
// 1250           (MCG_S & MCG_S_PLLST_MASK) &&                                  // check PLLS mux has selected PLL
// 1251           (!(MCG_C2 & MCG_C2_LP_MASK)))                                  // check MCG_C2[LP] bit is not set
// 1252   {
// 1253     return PBE;                                                          // return PBE code
// 1254   }
// 1255   */
// 1256 
// 1257   // Check MCG is in FBE mode
// 1258   else if ((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x2) && // check CLKS mux has selcted external reference
// 1259           (!(MCG_S & MCG_S_IREFST_MASK)) &&                              // check FLL ref is external ref clk
// 1260         //  (!(MCG_S & MCG_S_PLLST_MASK)) &&                               // check PLLS mux has selected FLL
// 1261           (!(MCG_C2 & MCG_C2_LP_MASK)))                                  // check MCG_C2[LP] bit is not set   
??what_mcg_mode_0:
        LDR      R0,??DataTable17  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+2
        BNE      ??what_mcg_mode_2
        LDR      R0,??DataTable17  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI      ??what_mcg_mode_2
        LDR      R0,??DataTable17_1  ;; 0x40064001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BMI      ??what_mcg_mode_2
// 1262   {
// 1263     return FBE;                                                          // return FBE code
        MOVS     R0,#+5
        B        ??what_mcg_mode_1
// 1264   }
// 1265   // Check MCG is in BLPE mode
// 1266   else if ((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x2) && // check CLKS mux has selcted external reference
// 1267           (!(MCG_S & MCG_S_IREFST_MASK)) &&                              // check FLL ref is external ref clk
// 1268           (MCG_C2 & MCG_C2_LP_MASK))                                     // check MCG_C2[LP] bit is set   
??what_mcg_mode_2:
        LDR      R0,??DataTable17  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+2
        BNE      ??what_mcg_mode_3
        LDR      R0,??DataTable17  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI      ??what_mcg_mode_3
        LDR      R0,??DataTable17_1  ;; 0x40064001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL      ??what_mcg_mode_3
// 1269   {
// 1270     return BLPE;                                                         // return BLPE code
        MOVS     R0,#+6
        B        ??what_mcg_mode_1
// 1271   }
// 1272   // check if in BLPI mode
// 1273   else if ((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x1) && // check CLKS mux has selcted int ref clk
// 1274           (MCG_S & MCG_S_IREFST_MASK) &&                                 // check FLL ref is internal ref clk
// 1275       //    (!(MCG_S & MCG_S_PLLST_MASK)) &&                               // check PLLS mux has selected FLL
// 1276           (MCG_C2 & MCG_C2_LP_MASK))                                     // check LP bit is set
??what_mcg_mode_3:
        LDR      R0,??DataTable17  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+1
        BNE      ??what_mcg_mode_4
        LDR      R0,??DataTable17  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL      ??what_mcg_mode_4
        LDR      R0,??DataTable17_1  ;; 0x40064001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL      ??what_mcg_mode_4
// 1277   {
// 1278     return BLPI;                                                         // return BLPI code
        MOVS     R0,#+1
        B        ??what_mcg_mode_1
// 1279   }
// 1280   // check if in FBI mode
// 1281   else if ((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x1) && // check CLKS mux has selcted int ref clk
// 1282           (MCG_S & MCG_S_IREFST_MASK) &&                                 // check FLL ref is internal ref clk
// 1283      //     (!(MCG_S & MCG_S_PLLST_MASK)) &&                               // check PLLS mux has selected FLL
// 1284           (!(MCG_C2 & MCG_C2_LP_MASK)))                                  // check LP bit is clear
??what_mcg_mode_4:
        LDR      R0,??DataTable17  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+1
        BNE      ??what_mcg_mode_5
        LDR      R0,??DataTable17  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL      ??what_mcg_mode_5
        LDR      R0,??DataTable17_1  ;; 0x40064001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BMI      ??what_mcg_mode_5
// 1285   {  
// 1286     return FBI;                                                          // return FBI code 
        MOVS     R0,#+2
        B        ??what_mcg_mode_1
// 1287   }
// 1288 
// 1289   // Check MCG is in FEE mode
// 1290   /*
// 1291   else if ((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL
// 1292           (!(MCG_S & MCG_S_IREFST_MASK)) &&                              // check FLL ref is external ref clk
// 1293           (!(MCG_S & MCG_S_PLLST_MASK)))                                 // check PLLS mux has selected FLL
// 1294   */
// 1295   
// 1296   else if ((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL
// 1297           (!(MCG_S & MCG_S_IREFST_MASK)))                                 // check PLLS mux has selected FLL
??what_mcg_mode_5:
        LDR      R0,??DataTable17  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BNE      ??what_mcg_mode_6
        LDR      R0,??DataTable17  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI      ??what_mcg_mode_6
// 1298   {
// 1299     return FEE;                                                          // return FEE code
        MOVS     R0,#+4
        B        ??what_mcg_mode_1
// 1300   }
// 1301   else
// 1302   {
// 1303     return 0;                                                            // error condition
??what_mcg_mode_6:
        MOVS     R0,#+0
??what_mcg_mode_1:
        POP      {PC}             ;; return
// 1304   }
// 1305 } // what_mcg_mode
// 1306 
// 1307 
// 1308 /********************************************************************/
// 1309 /* Functon name : clk_monitor_0
// 1310  *
// 1311  * This function simply enables or disables the OSC 0 clock monitor. This is
// 1312  * achieved by setting or clearing the MCG_C6[CME] bit. It is recommended to  
// 1313  * enable this monitor in external clock modes (FEE, FBE, BLPE, PBE and PEE.
// 1314  * It MUST be disabled in all other modes or a reset may be generated. It must
// 1315  * also be disabled if it is desired to enter VLPR from BLPE mode.
// 1316  *
// 1317  * Parameters: en_dis - enables (= 1) or disables (= 0) the OSC 0 clock monitor
// 1318  *
// 1319  * Return value : none
// 1320  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1321 void clk_monitor_0(unsigned char en_dis)
// 1322 {         
clk_monitor_0:
        PUSH     {LR}
// 1323   if (en_dis)
        UXTB     R0,R0
        CMP      R0,#+0
        BEQ      ??clk_monitor_0_0
// 1324   {
// 1325   //  MCG_C6 |= MCG_C6_CME0_MASK;   
// 1326     MCG_C6 |= MCG_C6_CME0_MASK; 
        LDR      R0,??DataTable17_2  ;; 0x40064005
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        LDR      R0,??DataTable17_2  ;; 0x40064005
        STRB     R1,[R0, #+0]
        B        ??clk_monitor_0_1
// 1327   }
// 1328   else
// 1329   {
// 1330   //  MCG_C6 &= ~MCG_C6_CME0_MASK;
// 1331      MCG_C6 &= ~MCG_C6_CME0_MASK;
??clk_monitor_0_0:
        LDR      R0,??DataTable17_2  ;; 0x40064005
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+223
        ANDS     R1,R1,R0
        LDR      R0,??DataTable17_2  ;; 0x40064005
        STRB     R1,[R0, #+0]
// 1332   }
// 1333 }    // end clk_monitor_0
??clk_monitor_0_1:
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DC32     0xf42400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_2:
        DC32     0xfff8ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_3:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_4:
        DC32     0x7a1201

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_5:
        DC32     0x7a12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_6:
        DC32     0x9897

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_7:
        DC32     0x2dc6c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_8:
        DC32     0x4c4b41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_9:
        DC32     0x41a80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_10:
        DC32     0x4006400b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_11:
        DC32     0x4006400a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_12:
        DC32     0x40064008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_13:
        DC32     0x40064002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_14:
        DC32     0x40064003
// 1334 
// 1335 /********************************************************************/
// 1336 /* Functon name : fei_fbe
// 1337  *
// 1338  * Mode transition: FEI to FBE mode
// 1339  *
// 1340  * This function transitions the MCG from FEI mode to FBE mode. This is
// 1341  * achieved by setting the MCG_C2[LP] bit. There is no status bit to 
// 1342  * check so 0 is always returned if the function was called with the MCG
// 1343  * in FBI mode. The MCGCLKOUT frequency does not change
// 1344  *
// 1345  * Parameters: crystal_val - external clock frequency in Hz
// 1346  *             hgo_val     - selects whether low power or high gain mode is selected
// 1347  *                           for the crystal oscillator. This has no meaning if an 
// 1348  *                           external clock is used.
// 1349  *             erefs_val   - selects external clock (=0) or crystal osc (=1)
// 1350  *
// 1351  * Return value : MCGCLKOUT frequency (Hz) or error code
// 1352  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1353 int fei_fbe(int crystal_val, unsigned char hgo_val, unsigned char erefs_val)
// 1354 {
fei_fbe:
        PUSH     {R4,R5,LR}
// 1355   unsigned char frdiv_val;
// 1356   unsigned char temp_reg;
// 1357   short i;
// 1358   
// 1359 // check if in FEI mode
// 1360 /*
// 1361   if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL output
// 1362       (MCG_S & MCG_S_IREFST_MASK) &&                                  // check FLL ref is internal ref clk
// 1363       (!(MCG_S & MCG_S_PLLST_MASK))))                                 // check PLLS mux has selected FLL
// 1364 */
// 1365 	if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL output
// 1366 		(MCG_S & MCG_S_IREFST_MASK))) 								// check PLLS mux has selected FLL
        LDR      R3,??DataTable17  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        UXTB     R3,R3
        LSRS     R3,R3,#+2
        LSLS     R3,R3,#+30       ;; ZeroExtS R3,R3,#+30,#+30
        LSRS     R3,R3,#+30
        CMP      R3,#+0
        BNE      ??fei_fbe_0
        LDR      R3,??DataTable17  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+27
        BMI      ??fei_fbe_1
// 1367 
// 1368 {
// 1369     return 0x1;                                                     // return error code
??fei_fbe_0:
        MOVS     R0,#+1
        B        ??fei_fbe_2
// 1370   }
// 1371 
// 1372 // check external frequency is less than the maximum frequency
// 1373   if  (crystal_val > 50000000) {return 0x21;}
??fei_fbe_1:
        LDR      R3,??DataTable17_3  ;; 0x2faf081
        CMP      R0,R3
        BLT      ??fei_fbe_3
        MOVS     R0,#+33
        B        ??fei_fbe_2
// 1374   
// 1375 // check crystal frequency is within spec. if crystal osc is being used
// 1376   if (erefs_val)
??fei_fbe_3:
        UXTB     R2,R2
        CMP      R2,#+0
        BEQ      ??fei_fbe_4
// 1377   {
// 1378     if ((crystal_val < 30000) ||
// 1379         ((crystal_val > 40000) && (crystal_val < 3000000)) ||
// 1380         (crystal_val > 32000000)) {return 0x22;} // return error if one of the available crystal options is not available
        LDR      R3,??DataTable17_4  ;; 0x7530
        CMP      R0,R3
        BLT      ??fei_fbe_5
        LDR      R3,??DataTable17_5  ;; 0x9c41
        SUBS     R3,R0,R3
        LDR      R4,??DataTable17_6  ;; 0x2d2a7f
        CMP      R3,R4
        BCC      ??fei_fbe_5
        LDR      R3,??DataTable17_7  ;; 0x1e84801
        CMP      R0,R3
        BLT      ??fei_fbe_4
??fei_fbe_5:
        MOVS     R0,#+34
        B        ??fei_fbe_2
// 1381   }
// 1382 
// 1383 // make sure HGO will never be greater than 1. Could return an error instead if desired.  
// 1384   if (hgo_val > 0)
??fei_fbe_4:
        UXTB     R1,R1
        CMP      R1,#+1
        BCC      ??fei_fbe_6
// 1385   {
// 1386     hgo_val = 1; // force hgo_val to 1 if > 0
        MOVS     R1,#+1
// 1387   }
// 1388 
// 1389 // configure the MCG_C2 register
// 1390 // the RANGE value is determined by the external frequency. Since the RANGE parameter affects the FRDIV divide value
// 1391 // it still needs to be set correctly even if the oscillator is not being used
// 1392   temp_reg = MCG_C2;
??fei_fbe_6:
        LDR      R3,??DataTable17_1  ;; 0x40064001
        LDRB     R3,[R3, #+0]
// 1393   temp_reg &= ~(MCG_C2_RANGE0_MASK | MCG_C2_HGO0_MASK | MCG_C2_EREFS0_MASK); // clear fields before writing new values
        MOVS     R4,R3
        MOVS     R3,#+195
        ANDS     R3,R3,R4
// 1394   if (crystal_val <= 40000)
        LDR      R4,??DataTable17_5  ;; 0x9c41
        CMP      R0,R4
        BGE      ??fei_fbe_7
// 1395   {
// 1396     temp_reg |= (MCG_C2_RANGE0(0) | (hgo_val << MCG_C2_HGO0_SHIFT) | (erefs_val << MCG_C2_EREFS0_SHIFT));
        MOVS     R4,R3
        UXTB     R1,R1
        LSLS     R1,R1,#+3
        UXTB     R2,R2
        LSLS     R3,R2,#+2
        ORRS     R3,R3,R1
        ORRS     R3,R3,R4
        B        ??fei_fbe_8
// 1397   }
// 1398   else if (crystal_val <= 8000000)
??fei_fbe_7:
        LDR      R4,??DataTable17_8  ;; 0x7a1201
        CMP      R0,R4
        BGE      ??fei_fbe_9
// 1399   {
// 1400     temp_reg |= (MCG_C2_RANGE0(1) | (hgo_val << MCG_C2_HGO0_SHIFT) | (erefs_val << MCG_C2_EREFS0_SHIFT));
        MOVS     R5,R3
        UXTB     R1,R1
        LSLS     R1,R1,#+3
        UXTB     R2,R2
        LSLS     R4,R2,#+2
        ORRS     R4,R4,R1
        MOVS     R3,#+16
        ORRS     R3,R3,R4
        ORRS     R3,R3,R5
        B        ??fei_fbe_8
// 1401   }
// 1402   else
// 1403   {
// 1404     temp_reg |= (MCG_C2_RANGE0(2) | (hgo_val << MCG_C2_HGO0_SHIFT) | (erefs_val << MCG_C2_EREFS0_SHIFT));
??fei_fbe_9:
        MOVS     R5,R3
        UXTB     R1,R1
        LSLS     R1,R1,#+3
        UXTB     R2,R2
        LSLS     R4,R2,#+2
        ORRS     R4,R4,R1
        MOVS     R3,#+32
        ORRS     R3,R3,R4
        ORRS     R3,R3,R5
// 1405   }
// 1406   MCG_C2 = temp_reg;
??fei_fbe_8:
        LDR      R1,??DataTable17_1  ;; 0x40064001
        STRB     R3,[R1, #+0]
// 1407 // determine FRDIV based on reference clock frequency
// 1408 // since the external frequency has already been checked only the maximum frequency for each FRDIV value needs to be compared here.
// 1409   if (crystal_val <= 1250000) {frdiv_val = 0;}
        LDR      R1,??DataTable18  ;; 0x1312d1
        CMP      R0,R1
        BGE      ??fei_fbe_10
        MOVS     R1,#+0
        B        ??fei_fbe_11
// 1410   else if (crystal_val <= 2500000) {frdiv_val = 1;}
??fei_fbe_10:
        LDR      R1,??DataTable18_1  ;; 0x2625a1
        CMP      R0,R1
        BGE      ??fei_fbe_12
        MOVS     R1,#+1
        B        ??fei_fbe_11
// 1411   else if (crystal_val <= 5000000) {frdiv_val = 2;}
??fei_fbe_12:
        LDR      R1,??DataTable18_2  ;; 0x4c4b41
        CMP      R0,R1
        BGE      ??fei_fbe_13
        MOVS     R1,#+2
        B        ??fei_fbe_11
// 1412   else if (crystal_val <= 10000000) {frdiv_val = 3;}
??fei_fbe_13:
        LDR      R1,??DataTable18_3  ;; 0x989681
        CMP      R0,R1
        BGE      ??fei_fbe_14
        MOVS     R1,#+3
        B        ??fei_fbe_11
// 1413   else if (crystal_val <= 20000000) {frdiv_val = 4;}
??fei_fbe_14:
        LDR      R1,??DataTable18_4  ;; 0x1312d01
        CMP      R0,R1
        BGE      ??fei_fbe_15
        MOVS     R1,#+4
        B        ??fei_fbe_11
// 1414   else {frdiv_val = 5;}
??fei_fbe_15:
        MOVS     R1,#+5
// 1415   
// 1416 // Select external oscilator and Reference Divider and clear IREFS to start ext osc
// 1417 // If IRCLK is required it must be enabled outside of this driver, existing state will be maintained
// 1418 // CLKS=2, FRDIV=frdiv_val, IREFS=0, IRCLKEN=0, IREFSTEN=0
// 1419   temp_reg = MCG_C1;
??fei_fbe_11:
        LDR      R3,??DataTable18_5  ;; 0x40064000
        LDRB     R3,[R3, #+0]
// 1420   temp_reg &= ~(MCG_C1_CLKS_MASK | MCG_C1_FRDIV_MASK | MCG_C1_IREFS_MASK); // Clear values in these fields
        LSLS     R3,R3,#+30       ;; ZeroExtS R3,R3,#+30,#+30
        LSRS     R3,R3,#+30
// 1421   temp_reg |= (MCG_C1_CLKS(2) | MCG_C1_FRDIV(frdiv_val)); // Set the required CLKS and FRDIV values
        MOVS     R5,R3
        LSLS     R1,R1,#+3
        MOVS     R4,#+56
        ANDS     R4,R4,R1
        MOVS     R3,#+128
        ORRS     R3,R3,R4
        ORRS     R3,R3,R5
// 1422   MCG_C1 = temp_reg;
        LDR      R1,??DataTable18_5  ;; 0x40064000
        STRB     R3,[R1, #+0]
// 1423 
// 1424 // if the external oscillator is used need to wait for OSCINIT to set
// 1425   if (erefs_val)
        UXTB     R2,R2
        CMP      R2,#+0
        BEQ      ??fei_fbe_16
// 1426   {
// 1427     for (i = 0 ; i < 10000 ; i++)
        MOVS     R1,#+0
        B        ??fei_fbe_17
??fei_fbe_18:
        ADDS     R1,R1,#+1
??fei_fbe_17:
        LDR      R2,??DataTable18_6  ;; 0x2710
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fei_fbe_16
// 1428     {
// 1429       if (MCG_S & MCG_S_OSCINIT0_MASK) break; // jump out early if OSCINIT sets before loop finishes
        LDR      R2,??DataTable17  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+30
        BPL      ??fei_fbe_18
// 1430     }
// 1431     //if (!(MCG_S & MCG_S_OSCINIT0_MASK)) return 0x23; // check bit is really set and return with error if not set
// 1432   }
// 1433 
// 1434 // wait for Reference clock Status bit to clear
// 1435   for (i = 0 ; i < 2000 ; i++)
??fei_fbe_16:
        MOVS     R1,#+0
        B        ??fei_fbe_19
??fei_fbe_20:
        ADDS     R1,R1,#+1
??fei_fbe_19:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fei_fbe_21
// 1436   {
// 1437     if (!(MCG_S & MCG_S_IREFST_MASK)) break; // jump out early if IREFST clears before loop finishes
        LDR      R2,??DataTable17  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BMI      ??fei_fbe_20
// 1438   }
// 1439   //if (MCG_S & MCG_S_IREFST_MASK) return 0x11; // check bit is really clear and return with error if not set
// 1440   
// 1441 // Wait for clock status bits to show clock source is ext ref clk
// 1442   for (i = 0 ; i < 2000 ; i++)
??fei_fbe_21:
        MOVS     R1,#+0
        B        ??fei_fbe_22
??fei_fbe_23:
        ADDS     R1,R1,#+1
??fei_fbe_22:
        MOVS     R2,#+250
        LSLS     R2,R2,#+3        ;; #+2000
        SXTH     R1,R1
        CMP      R1,R2
        BGE      ??fei_fbe_24
// 1443   {
// 1444     if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x2) break; // jump out early if CLKST shows EXT CLK slected before loop finishes
        LDR      R2,??DataTable17  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+2
        BNE      ??fei_fbe_23
// 1445   }
// 1446   //if (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2) return 0x1A; // check EXT CLK is really selected and return with error if not
// 1447  
// 1448 // Now in FBE  
// 1449 // It is recommended that the clock monitor is enabled when using an external clock as the clock source/reference.
// 1450 // It is enabled here but can be removed if this is not required.
// 1451  // MCG_C6 |= MCG_C6_CME0_MASK;
// 1452   MCG_C6 |= MCG_C6_CME0_MASK;
??fei_fbe_24:
        LDR      R1,??DataTable17_2  ;; 0x40064005
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+32
        ORRS     R2,R2,R1
        LDR      R1,??DataTable17_2  ;; 0x40064005
        STRB     R2,[R1, #+0]
// 1453   
// 1454   return crystal_val; // MCGOUT frequency equals external clock frequency
??fei_fbe_2:
        POP      {R4,R5,PC}       ;; return
// 1455 } // fei_fbe

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_3:
        DC32     0x2faf081

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_4:
        DC32     0x7530

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_5:
        DC32     0x9c41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_6:
        DC32     0x2d2a7f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_7:
        DC32     0x1e84801

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_8:
        DC32     0x7a1201
// 1456 
// 1457 
// 1458 /********************************************************************/
// 1459 /* Functon name : fei_fee
// 1460  *
// 1461  * Mode transition: FEI to FEE mode
// 1462  *
// 1463  * This function transitions the MCG from FEI mode to FEE mode. This is
// 1464  * achieved by setting the MCG_C2[LP] bit. There is no status bit to 
// 1465  * check so 0 is always returned if the function was called with the MCG
// 1466  * in FBI mode. The MCGCLKOUT frequency does not change
// 1467  *
// 1468  * Parameters: crystal_val - external clock frequency in Hz
// 1469  *             hgo_val     - selects whether low power or high gain mode is selected
// 1470  *                           for the crystal oscillator. This has no meaning if an 
// 1471  *                           external clock is used.
// 1472  *             erefs_val   - selects external clock (=0) or crystal osc (=1)
// 1473  *
// 1474  * Return value : MCGCLKOUT frequency (Hz) or error code
// 1475  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1476 int fei_fee(int crystal_val, unsigned char hgo_val, unsigned char erefs_val)
// 1477 {
fei_fee:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
// 1478   unsigned char frdiv_val;
// 1479   unsigned char temp_reg;
// 1480  // short i;
// 1481   int mcg_out, fll_ref_freq, i;
// 1482   
// 1483 // check if in FEI mode
// 1484 
// 1485 	if (!((((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) == 0x0) && // check CLKS mux has selcted FLL output
// 1486 		(MCG_S & MCG_S_IREFST_MASK))) 								// check PLLS mux has selected FLL
        LDR      R0,??DataTable18_7  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BNE      ??fei_fee_0
        LDR      R0,??DataTable18_7  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI      ??fei_fee_1
// 1487 
// 1488     {
// 1489         return 0x1;                                                     // return error code
??fei_fee_0:
        MOVS     R0,#+1
        B        ??fei_fee_2
// 1490     }
// 1491 
// 1492 // check external frequency is less than the maximum frequency
// 1493   if  (crystal_val > 50000000) {return 0x21;}
??fei_fee_1:
        LDR      R0,??fll_freq_0  ;; 0x2faf081
        CMP      R5,R0
        BLT      ??fei_fee_3
        MOVS     R0,#+33
        B        ??fei_fee_2
// 1494   
// 1495  //check crystal frequency is within spec. if crystal osc is being used
// 1496   if (erefs_val)
??fei_fee_3:
        UXTB     R2,R2
        CMP      R2,#+0
        BEQ      ??fei_fee_4
// 1497   {
// 1498   if (
// 1499        ((crystal_val > 40000) && (crystal_val < 3000000)) ||
// 1500       (crystal_val > 32000000)) {return 0x22;} // return error if one of the available crystal options is not available
        LDR      R0,??DataTable18_8  ;; 0x9c41
        SUBS     R0,R5,R0
        LDR      R3,??DataTable18_9  ;; 0x2d2a7f
        CMP      R0,R3
        BCC      ??fei_fee_5
        LDR      R0,??DataTable18_10  ;; 0x1e84801
        CMP      R5,R0
        BLT      ??fei_fee_4
??fei_fee_5:
        MOVS     R0,#+34
        B        ??fei_fee_2
// 1501   }
// 1502 
// 1503 // make sure HGO will never be greater than 1. Could return an error instead if desired.  
// 1504   if (hgo_val > 0)
??fei_fee_4:
        UXTB     R1,R1
        CMP      R1,#+1
        BCC      ??fei_fee_6
// 1505   {
// 1506     hgo_val = 1; // force hgo_val to 1 if > 0
        MOVS     R1,#+1
// 1507   }
// 1508 
// 1509   OSC0_CR = OSC_CR_ERCLKEN_MASK
// 1510 	  |OSC_CR_EREFSTEN_MASK
// 1511 	  |OSC_CR_SC16P_MASK;
??fei_fee_6:
        LDR      R0,??DataTable18_11  ;; 0x40065000
        MOVS     R3,#+161
        STRB     R3,[R0, #+0]
// 1512 
// 1513 // configure the MCG_C2 register
// 1514 // the RANGE value is determined by the external frequency. Since the RANGE parameter affects the FRDIV divide value
// 1515 // it still needs to be set correctly even if the oscillator is not being used
// 1516   temp_reg = MCG_C2;
        LDR      R0,??DataTable18_12  ;; 0x40064001
        LDRB     R3,[R0, #+0]
// 1517   temp_reg &= ~(MCG_C2_RANGE0_MASK | MCG_C2_HGO0_MASK | MCG_C2_EREFS0_MASK); // clear fields before writing new values
        MOVS     R0,R3
        MOVS     R3,#+195
        ANDS     R3,R3,R0
// 1518   if (crystal_val <= 40000)
        LDR      R0,??DataTable18_8  ;; 0x9c41
        CMP      R5,R0
        BGE      ??fei_fee_7
// 1519   {
// 1520     temp_reg |= (MCG_C2_RANGE0(0) | (hgo_val << MCG_C2_HGO0_SHIFT) | (erefs_val << MCG_C2_EREFS0_SHIFT));
        MOVS     R4,R3
        UXTB     R1,R1
        LSLS     R0,R1,#+3
        UXTB     R2,R2
        LSLS     R3,R2,#+2
        ORRS     R3,R3,R0
        ORRS     R3,R3,R4
        B        ??fei_fee_8
// 1521   }
// 1522   else if (crystal_val <= 8000000)
??fei_fee_7:
        LDR      R0,??DataTable18_13  ;; 0x7a1201
        CMP      R5,R0
        BGE      ??fei_fee_9
// 1523   {
// 1524     temp_reg |= (MCG_C2_RANGE0(1) | (hgo_val << MCG_C2_HGO0_SHIFT) | (erefs_val << MCG_C2_EREFS0_SHIFT));
        MOVS     R4,R3
        UXTB     R1,R1
        LSLS     R0,R1,#+3
        UXTB     R2,R2
        LSLS     R1,R2,#+2
        ORRS     R1,R1,R0
        MOVS     R3,#+16
        ORRS     R3,R3,R1
        ORRS     R3,R3,R4
        B        ??fei_fee_8
// 1525   }
// 1526   else
// 1527   {
// 1528     temp_reg |= (MCG_C2_RANGE0(2) | (hgo_val << MCG_C2_HGO0_SHIFT) | (erefs_val << MCG_C2_EREFS0_SHIFT));
??fei_fee_9:
        MOVS     R4,R3
        UXTB     R1,R1
        LSLS     R0,R1,#+3
        UXTB     R2,R2
        LSLS     R1,R2,#+2
        ORRS     R1,R1,R0
        MOVS     R3,#+32
        ORRS     R3,R3,R1
        ORRS     R3,R3,R4
// 1529   }
// 1530   MCG_C2 = temp_reg;
??fei_fee_8:
        LDR      R0,??DataTable18_12  ;; 0x40064001
        STRB     R3,[R0, #+0]
// 1531   // if the external oscillator is used need to wait for OSCINIT to set
// 1532    if (erefs_val)
        UXTB     R2,R2
        CMP      R2,#+0
        BEQ      ??fei_fee_10
// 1533   {
// 1534 	for (i = 0 ; i < 20000000 ; i++)
        MOVS     R1,#+0
        B        ??fei_fee_11
??fei_fee_12:
        ADDS     R1,R1,#+1
??fei_fee_11:
        LDR      R0,??DataTable19  ;; 0x1312d00
        CMP      R1,R0
        BGE      ??fei_fee_13
// 1535 	{
// 1536 	  if (MCG_S & MCG_S_OSCINIT0_MASK) break; // jump out early if OSCINIT sets before loop finishes
        LDR      R0,??DataTable18_7  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL      ??fei_fee_12
// 1537 	}
// 1538 	if (!(MCG_S & MCG_S_OSCINIT0_MASK)) return 0x23; // check bit is really set and return with error if not set
??fei_fee_13:
        LDR      R0,??DataTable18_7  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BMI      ??fei_fee_10
        MOVS     R0,#+35
        B        ??fei_fee_2
// 1539   }
// 1540 
// 1541 // determine FRDIV based on reference clock frequency
// 1542 // since the external frequency has already been checked only the maximum frequency for each FRDIV value needs to be compared here.
// 1543   if (crystal_val <= 1250000) {frdiv_val = 0;}
??fei_fee_10:
        LDR      R0,??DataTable18  ;; 0x1312d1
        CMP      R5,R0
        BGE      ??fei_fee_14
        MOVS     R4,#+0
        B        ??fei_fee_15
// 1544   else if (crystal_val <= 2500000) {frdiv_val = 1;}
??fei_fee_14:
        LDR      R0,??DataTable18_1  ;; 0x2625a1
        CMP      R5,R0
        BGE      ??fei_fee_16
        MOVS     R4,#+1
        B        ??fei_fee_15
// 1545   else if (crystal_val <= 5000000) {frdiv_val = 2;}
??fei_fee_16:
        LDR      R0,??DataTable18_2  ;; 0x4c4b41
        CMP      R5,R0
        BGE      ??fei_fee_17
        MOVS     R4,#+2
        B        ??fei_fee_15
// 1546   else if (crystal_val <= 10000000) {frdiv_val = 3;}
??fei_fee_17:
        LDR      R0,??DataTable18_3  ;; 0x989681
        CMP      R5,R0
        BGE      ??fei_fee_18
        MOVS     R4,#+3
        B        ??fei_fee_15
// 1547   else if (crystal_val <= 20000000) {frdiv_val = 4;}
??fei_fee_18:
        LDR      R0,??DataTable18_4  ;; 0x1312d01
        CMP      R5,R0
        BGE      ??fei_fee_19
        MOVS     R4,#+4
        B        ??fei_fee_15
// 1548   else {frdiv_val = 5;}
??fei_fee_19:
        MOVS     R4,#+5
// 1549    
// 1550   // The FLL ref clk divide value depends on FRDIV and the RANGE value
// 1551   if (((MCG_C2 & MCG_C2_RANGE0_MASK) >> MCG_C2_RANGE0_SHIFT) > 0)
??fei_fee_15:
        LDR      R0,??DataTable18_12  ;; 0x40064001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSRS     R0,R0,#+4
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BEQ      ??fei_fee_20
// 1552   {
// 1553     fll_ref_freq = ((crystal_val) / (32 << frdiv_val));
        MOVS     R0,R5
        MOVS     R1,#+32
        LSLS     R1,R1,R4
        BL       __aeabi_idiv
        B        ??fei_fee_21
// 1554   }
// 1555   else
// 1556   {
// 1557     fll_ref_freq = ((crystal_val) / (1 << frdiv_val));
??fei_fee_20:
        MOVS     R0,R5
        MOVS     R1,#+1
        LSLS     R1,R1,R4
        BL       __aeabi_idiv
// 1558   }
// 1559    if( crystal_val == 32768 )
??fei_fee_21:
        MOVS     R1,#+128
        LSLS     R1,R1,#+8        ;; #+32768
        CMP      R5,R1
        BNE      ??fei_fee_22
// 1560    {
// 1561       MCG_C4 |= MCG_C4_DMX32_MASK | MCG_C4_DRST_DRS(1);
        LDR      R1,??DataTable19_1  ;; 0x40064003
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+160
        ORRS     R2,R2,R1
        LDR      R1,??DataTable19_1  ;; 0x40064003
        STRB     R2,[R1, #+0]
// 1562    }
// 1563   
// 1564 // Check resulting FLL frequency 
// 1565   mcg_out = fll_freq(fll_ref_freq); // FLL reference frequency calculated from ext ref freq and FRDIV
??fei_fee_22:
        BL       fll_freq
// 1566   if (mcg_out < 0x5B) {return mcg_out;} // If error code returned, return the code to calling function
        CMP      R0,#+91
        BLT      ??fei_fee_2
// 1567   
// 1568 // Select external oscilator and Reference Divider and clear IREFS to start ext osc
// 1569 // If IRCLK is required it must be enabled outside of this driver, existing state will be maintained
// 1570 // CLKS=0, FRDIV=frdiv_val, IREFS=0, IRCLKEN=0, IREFSTEN=0
// 1571   temp_reg = MCG_C1;
??fei_fee_23:
        LDR      R1,??DataTable18_5  ;; 0x40064000
        LDRB     R3,[R1, #+0]
// 1572   temp_reg &= ~(MCG_C1_CLKS_MASK | MCG_C1_FRDIV_MASK | MCG_C1_IREFS_MASK); // Clear values in these fields
        LSLS     R3,R3,#+30       ;; ZeroExtS R3,R3,#+30,#+30
        LSRS     R3,R3,#+30
// 1573   temp_reg |= (MCG_C1_CLKS(0) | MCG_C1_FRDIV(frdiv_val)); // Set the required CLKS and FRDIV values
        MOVS     R2,R3
        LSLS     R1,R4,#+3
        MOVS     R3,#+56
        ANDS     R3,R3,R1
        ORRS     R3,R3,R2
// 1574   MCG_C1 = temp_reg;
        LDR      R1,??DataTable18_5  ;; 0x40064000
        STRB     R3,[R1, #+0]
// 1575 
// 1576 // wait for Reference clock Status bit to clear
// 1577   for (i = 0 ; i < 20000 ; i++)
        MOVS     R1,#+0
        B        ??fei_fee_24
??fei_fee_25:
        ADDS     R1,R1,#+1
??fei_fee_24:
        LDR      R2,??DataTable19_2  ;; 0x4e20
        CMP      R1,R2
        BGE      ??fei_fee_26
// 1578   {
// 1579     if (!(MCG_S & MCG_S_IREFST_MASK)) break; // jump out early if IREFST clears before loop finishes
        LDR      R2,??DataTable18_7  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BMI      ??fei_fee_25
// 1580   }
// 1581   if (MCG_S & MCG_S_IREFST_MASK) return 0x11; // check bit is really clear and return with error if not set
??fei_fee_26:
        LDR      R1,??DataTable18_7  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL      ??fei_fee_27
        MOVS     R0,#+17
        B        ??fei_fee_2
// 1582   
// 1583 // Now in FBE  
// 1584 // It is recommended that the clock monitor is enabled when using an external clock as the clock source/reference.
// 1585 // It is enabled here but can be removed if this is not required.
// 1586   MCG_C6 |= MCG_C6_CME0_MASK;
??fei_fee_27:
        LDR      R1,??DataTable19_3  ;; 0x40064005
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+32
        ORRS     R2,R2,R1
        LDR      R1,??DataTable19_3  ;; 0x40064005
        STRB     R2,[R1, #+0]
// 1587   
// 1588   return mcg_out; // MCGOUT frequency equals FLL frequency
??fei_fee_2:
        POP      {R1,R4,R5,PC}    ;; return
// 1589 } // fei_fee

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     0x1312d1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     0x2625a1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     0x4c4b41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     0x989681

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     0x1312d01

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     0x40064000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     0x2710

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DC32     0x9c41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_9:
        DC32     0x2d2a7f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_10:
        DC32     0x1e84801

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_11:
        DC32     0x40065000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_12:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_13:
        DC32     0x7a1201
// 1590 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1591 int fll_freq(int fll_ref)
// 1592 {
fll_freq:
        PUSH     {LR}
        MOVS     R1,R0
// 1593   int fll_freq_hz;
// 1594   
// 1595   if (MCG_C4 & MCG_C4_DMX32_MASK) // if DMX32 set
        LDR      R2,??DataTable19_1  ;; 0x40064003
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+24
        BPL      ??fll_freq_1
// 1596   {
// 1597     switch ((MCG_C4 & MCG_C4_DRST_DRS_MASK) >> MCG_C4_DRST_DRS_SHIFT) // determine multiplier based on DRS
        LDR      R2,??DataTable19_1  ;; 0x40064003
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+5
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+0
        BEQ      ??fll_freq_2
        CMP      R2,#+2
        BEQ      ??fll_freq_3
        BCC      ??fll_freq_4
        CMP      R2,#+3
        BEQ      ??fll_freq_5
        B        ??fll_freq_6
// 1598     {
// 1599     case 0:
// 1600       fll_freq_hz = (fll_ref * 732);
??fll_freq_2:
        MOVS     R0,#+183
        LSLS     R0,R0,#+2        ;; #+732
        MULS     R1,R0,R1
        MOVS     R0,R1
// 1601       if (fll_freq_hz < 20000000) {return 0x33;}
        LDR      R1,??DataTable19  ;; 0x1312d00
        CMP      R0,R1
        BGE      ??fll_freq_7
        MOVS     R0,#+51
        B        ??fll_freq_8
// 1602       else if (fll_freq_hz > 25000000) {return 0x34;}
??fll_freq_7:
        LDR      R1,??DataTable19_4  ;; 0x17d7841
        CMP      R0,R1
        BLT      ??fll_freq_9
        MOVS     R0,#+52
        B        ??fll_freq_8
// 1603       break;
??fll_freq_9:
        B        ??fll_freq_6
// 1604     case 1:
// 1605       fll_freq_hz = (fll_ref * 1464);
??fll_freq_4:
        MOVS     R0,#+183
        LSLS     R0,R0,#+3        ;; #+1464
        MULS     R1,R0,R1
        MOVS     R0,R1
// 1606       if (fll_freq_hz < 40000000) {return 0x35;}
        LDR      R1,??DataTable19_5  ;; 0x2625a00
        CMP      R0,R1
        BGE      ??fll_freq_10
        MOVS     R0,#+53
        B        ??fll_freq_8
// 1607       else if (fll_freq_hz > 50000000) {return 0x36;}
??fll_freq_10:
        LDR      R1,??fll_freq_0  ;; 0x2faf081
        CMP      R0,R1
        BLT      ??fll_freq_11
        MOVS     R0,#+54
        B        ??fll_freq_8
// 1608       break;
??fll_freq_11:
        B        ??fll_freq_6
// 1609     case 2:
// 1610       fll_freq_hz = (fll_ref * 2197);
??fll_freq_3:
        LDR      R0,??DataTable19_6  ;; 0x895
        MULS     R1,R0,R1
        MOVS     R0,R1
// 1611       if (fll_freq_hz < 60000000) {return 0x37;}
        LDR      R1,??DataTable19_7  ;; 0x3938700
        CMP      R0,R1
        BGE      ??fll_freq_12
        MOVS     R0,#+55
        B        ??fll_freq_8
// 1612       else if (fll_freq_hz > 75000000) {return 0x38;}
??fll_freq_12:
        LDR      R1,??DataTable19_8  ;; 0x47868c1
        CMP      R0,R1
        BLT      ??fll_freq_13
        MOVS     R0,#+56
        B        ??fll_freq_8
// 1613       break;
??fll_freq_13:
        B        ??fll_freq_6
// 1614     case 3:
// 1615       fll_freq_hz = (fll_ref * 2929);
??fll_freq_5:
        LDR      R0,??DataTable19_9  ;; 0xb71
        MULS     R1,R0,R1
        MOVS     R0,R1
// 1616       if (fll_freq_hz < 80000000) {return 0x39;}
        LDR      R1,??DataTable19_10  ;; 0x4c4b400
        CMP      R0,R1
        BGE      ??fll_freq_14
        MOVS     R0,#+57
        B        ??fll_freq_8
// 1617       else if (fll_freq_hz > 100000000) {return 0x3A;}
??fll_freq_14:
        LDR      R1,??DataTable19_11  ;; 0x5f5e101
        CMP      R0,R1
        BLT      ??fll_freq_15
        MOVS     R0,#+58
        B        ??fll_freq_8
// 1618       break;
??fll_freq_15:
        B        ??fll_freq_6
// 1619     }
// 1620   }
// 1621   else // if DMX32 = 0
// 1622   {
// 1623     switch ((MCG_C4 & MCG_C4_DRST_DRS_MASK) >> MCG_C4_DRST_DRS_SHIFT) // determine multiplier based on DRS
??fll_freq_1:
        LDR      R2,??DataTable19_1  ;; 0x40064003
        LDRB     R2,[R2, #+0]
        UXTB     R2,R2
        LSRS     R2,R2,#+5
        LSLS     R2,R2,#+30       ;; ZeroExtS R2,R2,#+30,#+30
        LSRS     R2,R2,#+30
        CMP      R2,#+0
        BEQ      ??fll_freq_16
        CMP      R2,#+2
        BEQ      ??fll_freq_17
        BCC      ??fll_freq_18
        CMP      R2,#+3
        BEQ      ??fll_freq_19
        B        ??fll_freq_6
// 1624     {
// 1625     case 0:
// 1626       fll_freq_hz = (fll_ref * 640);
??fll_freq_16:
        MOVS     R0,#+160
        LSLS     R0,R0,#+2        ;; #+640
        MULS     R1,R0,R1
        MOVS     R0,R1
// 1627       if (fll_freq_hz < 20000000) {return 0x33;}
        LDR      R1,??DataTable19  ;; 0x1312d00
        CMP      R0,R1
        BGE      ??fll_freq_20
        MOVS     R0,#+51
        B        ??fll_freq_8
// 1628       else if (fll_freq_hz > 25000000) {return 0x34;}
??fll_freq_20:
        LDR      R1,??DataTable19_4  ;; 0x17d7841
        CMP      R0,R1
        BLT      ??fll_freq_21
        MOVS     R0,#+52
        B        ??fll_freq_8
// 1629       break;
??fll_freq_21:
        B        ??fll_freq_6
// 1630     case 1:
// 1631       fll_freq_hz = (fll_ref * 1280);
??fll_freq_18:
        MOVS     R0,#+160
        LSLS     R0,R0,#+3        ;; #+1280
        MULS     R1,R0,R1
        MOVS     R0,R1
// 1632       if (fll_freq_hz < 40000000) {return 0x35;}
        LDR      R1,??DataTable19_5  ;; 0x2625a00
        CMP      R0,R1
        BGE      ??fll_freq_22
        MOVS     R0,#+53
        B        ??fll_freq_8
// 1633       else if (fll_freq_hz > 50000000) {return 0x36;}
??fll_freq_22:
        LDR      R1,??fll_freq_0  ;; 0x2faf081
        CMP      R0,R1
        BLT      ??fll_freq_23
        MOVS     R0,#+54
        B        ??fll_freq_8
// 1634       break;
??fll_freq_23:
        B        ??fll_freq_6
// 1635     case 2:
// 1636       fll_freq_hz = (fll_ref * 1920);
??fll_freq_17:
        MOVS     R0,#+240
        LSLS     R0,R0,#+3        ;; #+1920
        MULS     R1,R0,R1
        MOVS     R0,R1
// 1637       if (fll_freq_hz < 60000000) {return 0x37;}
        LDR      R1,??DataTable19_7  ;; 0x3938700
        CMP      R0,R1
        BGE      ??fll_freq_24
        MOVS     R0,#+55
        B        ??fll_freq_8
// 1638       else if (fll_freq_hz > 75000000) {return 0x38;}
??fll_freq_24:
        LDR      R1,??DataTable19_8  ;; 0x47868c1
        CMP      R0,R1
        BLT      ??fll_freq_25
        MOVS     R0,#+56
        B        ??fll_freq_8
        DATA
??fll_freq_0:
        DC32     0x2faf081
        THUMB
// 1639       break;
??fll_freq_25:
        B        ??fll_freq_6
// 1640     case 3:
// 1641       fll_freq_hz = (fll_ref * 2560);
??fll_freq_19:
        MOVS     R0,#+160
        LSLS     R0,R0,#+4        ;; #+2560
        MULS     R1,R0,R1
        MOVS     R0,R1
// 1642       if (fll_freq_hz < 80000000) {return 0x39;}
        LDR      R1,??DataTable19_10  ;; 0x4c4b400
        CMP      R0,R1
        BGE      ??fll_freq_26
        MOVS     R0,#+57
        B        ??fll_freq_8
// 1643       else if (fll_freq_hz > 100000000) {return 0x3A;}
??fll_freq_26:
        LDR      R1,??DataTable19_11  ;; 0x5f5e101
        CMP      R0,R1
        BLT      ??fll_freq_27
        MOVS     R0,#+58
        B        ??fll_freq_8
// 1644       break;
// 1645     }
// 1646   }    
// 1647   return fll_freq_hz;
??fll_freq_27:
??fll_freq_6:
??fll_freq_8:
        POP      {PC}             ;; return
// 1648 } // fll_freq

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     0x1312d00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     0x40064003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_2:
        DC32     0x4e20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_3:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_4:
        DC32     0x17d7841

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_5:
        DC32     0x2625a00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_6:
        DC32     0x895

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_7:
        DC32     0x3938700

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_8:
        DC32     0x47868c1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_9:
        DC32     0xb71

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_10:
        DC32     0x4c4b400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_11:
        DC32     0x5f5e101

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
//     2 bytes in section .bss
// 4 856 bytes in section .text
// 
// 4 856 bytes of CODE memory
//     2 bytes of DATA memory
//
//Errors: none
//Warnings: none
