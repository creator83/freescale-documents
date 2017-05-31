///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:28 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\projects\DualChannel_Experiment\Ex2_Single /
//                    Channel_CMP.c                                           /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\projects\DualChannel_Experiment\Ex2_Single /
//                    Channel_CMP.c" -D IAR -D FRDM -D EX2 -lCN               /
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
//                    st\Ex2_SingleChannel_CMP.s                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Ex2_SingleChannel_CMP

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN enable_irq
        EXTERN fei_fbi

        PUBLIC IO_config
        PUBLIC Run_RAM_Loop
        PUBLIC initialize_CMP
        PUBLIC initialize_LPTMR
        PUBLIC main

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\projects\DualChannel_Experiment\Ex2_SingleChannel_CMP.c
//    1 /*
//    2  * File:		KL04_ref_design_demo.c
//    3  * Purpose:		Main process
//    4  *
//    5  */
//    6 
//    7 #include "common.h"
//    8 #include "Ex2_SingleChannel_CMP.h"
//    9 #include "smc.h"
//   10 
//   11 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   12 int main (void)
//   13 {
main:
        PUSH     {R7,LR}
//   14   //uint32 temp32;
//   15   //uint16 i;
//   16   //uint8 temp8;
//   17   int tempint;
//   18         
//   19   // Configure the part to allow VLLS3 and VLPR modes.  
//   20   SMC_PMPROT = (SMC_PMPROT_AVLP_MASK
//   21                 | SMC_PMPROT_ALLS_MASK
//   22                 | SMC_PMPROT_AVLLS_MASK);
        LDR      R0,??DataTable2  ;; 0x4007e000
        MOVS     R1,#+42
        STRB     R1,[R0, #+0]
//   23   
//   24   // Move to FBI mode using the 4MHz internal clock (FIRC)
//   25   tempint = fei_fbi(4000000, 1);
        MOVS     R1,#+1
        LDR      R0,??DataTable2_1  ;; 0x3d0900
        BL       fei_fbi
//   26 
//   27   // If the clock frequency is not 2MHz, stop the program as there was an error. 
//   28   if(tempint != 2000000)
        LDR      R1,??DataTable2_2  ;; 0x1e8480
        CMP      R0,R1
        BEQ      ??main_0
//   29       while(1);
??main_1:
        B        ??main_1
//   30             
//   31   // Turn off the clock monitors
//   32   MCG_C6 &= ~MCG_C6_CME0_MASK;
??main_0:
        LDR      R0,??DataTable2_3  ;; 0x40064005
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+223
        ANDS     R1,R1,R0
        LDR      R0,??DataTable2_3  ;; 0x40064005
        STRB     R1,[R0, #+0]
//   33   // Move to BLPx mode
//   34   MCG_C2 |= MCG_C2_LP_MASK;
        LDR      R0,??DataTable2_4  ;; 0x40064001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_4  ;; 0x40064001
        STRB     R1,[R0, #+0]
//   35               
//   36   
//   37             
//   38   // Enable clock gates
//   39   // Enable the CMP clock gating
//   40   SIM_SCGC4 |= SIM_SCGC4_CMP_MASK;
        LDR      R0,??DataTable2_5  ;; 0x40048034
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+12       ;; #+524288
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_5  ;; 0x40048034
        STR      R1,[R0, #+0]
//   41     
//   42   // Enable the clock gate to the LPTMR
//   43   SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;
        LDR      R0,??DataTable3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3  ;; 0x40048038
        STR      R1,[R0, #+0]
//   44   
//   45   // initialize the I/O
//   46   IO_config();
        BL       IO_config
//   47   
//   48   // Initialize the CMP first
//   49   initialize_CMP();
        BL       initialize_CMP
//   50   
//   51   // Initialize the LPTMR
//   52   initialize_LPTMR();
        BL       initialize_LPTMR
//   53   
//   54   // Jump to RAM Loop
//   55   Run_RAM_Loop();
        BL       Run_RAM_Loop
//   56   
//   57 }
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//   58 /********************************************************************/
//   59 
//   60 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 void initialize_LPTMR(void)
//   62 {
//   63     // Disable the LPTMR first.  For this app, the default control values are acceptable. 
//   64     LPTMR0_CSR = 0x00;
initialize_LPTMR:
        LDR      R0,??DataTable3_1  ;; 0x40040000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   65     
//   66     // Set the PSR to a known state
//   67     LPTMR0_PSR = 0x00;
        LDR      R0,??DataTable2_6  ;; 0x40040004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   68     
//   69     // Setup the PSR to use the prescaler, and select the appropriate clock. 
//   70     LPTMR0_PSR |= (LPTMR_PSR_PCS(1) | LPTMR_PSR_PBYP_MASK);  // If using the LPO.  
        LDR      R0,??DataTable2_6  ;; 0x40040004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+5
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_6  ;; 0x40040004
        STR      R1,[R0, #+0]
//   71     
//   72     // Set the Compare register for a 9 ms interval. 
//   73     LPTMR0_CMR = LPTMR_CMR_COMPARE(9);
        LDR      R0,??DataTable2_7  ;; 0x40040008
        MOVS     R1,#+9
        STR      R1,[R0, #+0]
//   74     
//   75     // Write to the TCF bit to clear the TCF just in case.  
//   76     LPTMR0_CSR = LPTMR_CSR_TCF_MASK;
        LDR      R0,??DataTable3_1  ;; 0x40040000
        MOVS     R1,#+128
        STR      R1,[R0, #+0]
//   77 }
        BX       LR               ;; return
//   78 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 void initialize_CMP(void)
//   80 {
initialize_CMP:
        PUSH     {R7,LR}
//   81     // Set CMP0_CR1 to a known state
//   82     CMP0_CR1 = 0x00;
        LDR      R0,??DataTable3_2  ;; 0x40073001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   83     
//   84     // Set CMP Filter Count and Hysteresis control to 0.  
//   85     //  Filter should be disabled to allow for low lag time.   
//   86     CMP0_CR0 = 0x00;
        LDR      R0,??DataTable2_8  ;; 0x40073000
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   87     
//   88     // Now configure CMP0_CR1 (but do not enable it!)
//   89     CMP0_CR1 |= (CMP_CR1_TRIGM_MASK);   // Enable the CMP Trigger mode
        LDR      R0,??DataTable3_2  ;; 0x40073001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_2  ;; 0x40073001
        STRB     R1,[R0, #+0]
//   90     
//   91     // Configure the rising-edge interrupt enable bit. 
//   92     CMP0_SCR |= CMP_SCR_IER_MASK;  // Look for a rising edge first!
        LDR      R0,??DataTable2_9  ;; 0x40073003
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_9  ;; 0x40073003
        STRB     R1,[R0, #+0]
//   93     
//   94     // Configure the 6-bit DAC
//   95     //  We want to use the Vin1in supply and to set the output voltage to 1/2 Vin
//   96     //  DACout = (Vin/64) * (VOSEL[5:0] + 1), therefore 31 will produce DACout = 1/2 * Vin
//   97     CMP0_DACCR = (CMP_DACCR_DACEN_MASK
//   98                   | CMP_DACCR_VOSEL(31));
        LDR      R0,??DataTable2_10  ;; 0x40073004
        MOVS     R1,#+159
        STRB     R1,[R0, #+0]
//   99     
//  100     // Select the appropriate Mux control
//  101     //  
//  102     //  We want to know when V0 > 50% Vcc, therefore, set the inverted input to
//  103     //  be the DAC output.  Select the non-inverted input to be V0. 
//  104     
//  105     CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V0) | CMP_MUXCR_MSEL(CMP_DACIN_6B));
        LDR      R0,??DataTable2_11  ;; 0x40073005
        MOVS     R1,#+15
        STRB     R1,[R0, #+0]
//  106     
//  107     // Configure the LLWU to wakeup from the CMP 
//  108     LLWU_ME = LLWU_ME_WUME1_MASK ;     // Enable the CMP as an LLWU Wakeup source
        LDR      R0,??DataTable2_12  ;; 0x4007c002
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  109     
//  110     // Enable LLWU IRQ
//  111     enable_irq(7);
        MOVS     R0,#+7
        BL       enable_irq
//  112     
//  113     // Enable the CMP
//  114     CMP0_CR1 |= CMP_CR1_EN_MASK;
        LDR      R0,??DataTable3_2  ;; 0x40073001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_2  ;; 0x40073001
        STRB     R1,[R0, #+0]
//  115 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x4007e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x3d0900

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x1e8480

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x40040004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x40040008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x40073000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x40073003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x40073004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x40073005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x4007c002
//  116 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  117 void IO_config(void)
//  118 {       
//  119     // setup outputs PTA12 - PTB6
//  120     
//  121     // Configure PTA12 as an output and initialize this output high.  
//  122     GPIOA_PDDR |= 0x1000;
IO_config:
        LDR      R0,??DataTable3_3  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_3  ;; 0x400ff014
        STR      R1,[R0, #+0]
//  123     GPIOA_PSOR |= 0x1000;
        LDR      R0,??DataTable3_4  ;; 0x400ff004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_4  ;; 0x400ff004
        STR      R1,[R0, #+0]
//  124     
//  125     
//  126     // Configure PTB6 as an output and initialize this output low.  
//  127     FGPIOB_PDDR |= 0x40;
        LDR      R0,??DataTable3_5  ;; 0xf80ff054
        LDR      R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_5  ;; 0xf80ff054
        STR      R1,[R0, #+0]
//  128     FGPIOB_PCOR |= 0x40;
        LDR      R0,??DataTable3_6  ;; 0xf80ff048
        LDR      R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_6  ;; 0xf80ff048
        STR      R1,[R0, #+0]
//  129     
//  130     
//  131      // Setup inputs (PTB5 & PTB1)
//  132     PORTB_PCR5 = PORT_PCR_MUX(0);
        LDR      R0,??DataTable3_7  ;; 0x4004a014
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  133     PORTB_PCR1 = PORT_PCR_MUX(0);
        LDR      R0,??DataTable3_8  ;; 0x4004a004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  134     
//  135     
//  136   // Disable all unused pins and configure GPIO outputs (leave Debug pins alone)
//  137     
//  138   //PORTA_PCR0  = (PORT_PCR_MUX(0x0)); // SWD CLK signal
//  139   //PORTA_PCR1  = (PORT_PCR_MUX(0x0)); // Reset pin
//  140   //PORTA_PCR2  = (PORT_PCR_MUX(0x0)); // SWD DIO signal
//  141   //PORTA_PCR3  = (PORT_PCR_MUX(0x0)); // EXTAL pin
//  142   //PORTA_PCR4  = (PORT_PCR_MUX(0x0)); // XTAL pin
//  143   PORTA_PCR5  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_9  ;; 0x40049014
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  144   PORTA_PCR6  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_10  ;; 0x40049018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  145   PORTA_PCR7  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_11  ;; 0x4004901c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  146   PORTA_PCR8  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_12  ;; 0x40049020
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  147   PORTA_PCR9  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_13  ;; 0x40049024
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  148   PORTA_PCR10 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_14  ;; 0x40049028
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  149   PORTA_PCR11 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_15  ;; 0x4004902c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  150   PORTA_PCR12 = (PORT_PCR_MUX(0x1));  // PTA12 is OUT0
        LDR      R0,??DataTable3_16  ;; 0x40049030
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  151   PORTA_PCR13 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_17  ;; 0x40049034
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  152   PORTA_PCR14 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_18  ;; 0x40049038
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  153   PORTA_PCR15 = (PORT_PCR_MUX(0x1));
        LDR      R0,??DataTable3_19  ;; 0x4004903c
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  154   PORTA_PCR16 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_20  ;; 0x40049040
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  155   PORTA_PCR17 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_21  ;; 0x40049044
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  156   PORTA_PCR18 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_22  ;; 0x40049048
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  157   PORTA_PCR19 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_23  ;; 0x4004904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  158   PORTA_PCR20 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_24  ;; 0x40049050
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  159   PORTA_PCR21 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_25  ;; 0x40049054
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  160   PORTA_PCR22 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_26  ;; 0x40049058
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  161   PORTA_PCR23 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_27  ;; 0x4004905c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  162   PORTA_PCR24 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_28  ;; 0x40049060
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  163   PORTA_PCR25 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_29  ;; 0x40049064
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  164   PORTA_PCR26 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_30  ;; 0x40049068
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  165   PORTA_PCR27 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_31  ;; 0x4004906c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  166   PORTA_PCR28 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_32  ;; 0x40049070
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  167   PORTA_PCR29 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_33  ;; 0x40049074
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  168   PORTA_PCR30 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_34  ;; 0x40049078
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  169   PORTA_PCR31 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_35  ;; 0x4004907c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  170   
//  171   PORTB_PCR0  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_36  ;; 0x4004a000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  172   PORTB_PCR1  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_8  ;; 0x4004a004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  173   PORTB_PCR2  = (PORT_PCR_MUX(0x0)); 
        LDR      R0,??DataTable3_37  ;; 0x4004a008
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  174   PORTB_PCR3  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_38  ;; 0x4004a00c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  175   PORTB_PCR4  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_39  ;; 0x4004a010
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  176   PORTB_PCR5  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_7  ;; 0x4004a014
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  177   PORTB_PCR6  = (PORT_PCR_MUX(0x1));  // PTB6 is OUT1
        LDR      R0,??DataTable3_40  ;; 0x4004a018
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  178   PORTB_PCR7  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_41  ;; 0x4004a01c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  179   PORTB_PCR8  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_42  ;; 0x4004a020
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  180   PORTB_PCR9  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_43  ;; 0x4004a024
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  181   PORTB_PCR10 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_44  ;; 0x4004a028
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  182   PORTB_PCR11 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_45  ;; 0x4004a02c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  183   PORTB_PCR12 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_46  ;; 0x4004a030
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  184   PORTB_PCR13 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_47  ;; 0x4004a034
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  185   PORTB_PCR14 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_48  ;; 0x4004a038
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  186   PORTB_PCR15 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_49  ;; 0x4004a03c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  187   PORTB_PCR16 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_50  ;; 0x4004a040
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  188   PORTB_PCR17 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_51  ;; 0x4004a044
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  189   PORTB_PCR18 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_52  ;; 0x4004a048
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  190   PORTB_PCR19 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_53  ;; 0x4004a04c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  191   PORTB_PCR20 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_54  ;; 0x4004a050
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  192   PORTB_PCR21 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_55  ;; 0x4004a054
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  193   PORTB_PCR22 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_56  ;; 0x4004a058
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  194   PORTB_PCR23 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_57  ;; 0x4004a05c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  195   PORTB_PCR24 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_58  ;; 0x4004a060
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  196   PORTB_PCR25 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_59  ;; 0x4004a064
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  197   PORTB_PCR26 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_60  ;; 0x4004a068
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  198   PORTB_PCR27 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_61  ;; 0x4004a06c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  199   PORTB_PCR28 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_62  ;; 0x4004a070
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  200   PORTB_PCR29 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_63  ;; 0x4004a074
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  201   PORTB_PCR30 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_64  ;; 0x4004a078
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  202   PORTB_PCR31 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_65  ;; 0x4004a07c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  203 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x40073001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x400ff014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x400ff004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0xf80ff054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0xf80ff048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x4004a014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x40049014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x4004901c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     0x40049020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x40049024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0x40049028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     0x4004902c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     0x40049034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     0x40049038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     0x4004903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     0x40049040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     0x40049044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     0x40049048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     0x4004904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_24:
        DC32     0x40049050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_25:
        DC32     0x40049054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_26:
        DC32     0x40049058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_27:
        DC32     0x4004905c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_28:
        DC32     0x40049060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_29:
        DC32     0x40049064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_30:
        DC32     0x40049068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_31:
        DC32     0x4004906c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_32:
        DC32     0x40049070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_33:
        DC32     0x40049074

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_34:
        DC32     0x40049078

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_35:
        DC32     0x4004907c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_36:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_37:
        DC32     0x4004a008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_38:
        DC32     0x4004a00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_39:
        DC32     0x4004a010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_40:
        DC32     0x4004a018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_41:
        DC32     0x4004a01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_42:
        DC32     0x4004a020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_43:
        DC32     0x4004a024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_44:
        DC32     0x4004a028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_45:
        DC32     0x4004a02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_46:
        DC32     0x4004a030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_47:
        DC32     0x4004a034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_48:
        DC32     0x4004a038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_49:
        DC32     0x4004a03c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_50:
        DC32     0x4004a040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_51:
        DC32     0x4004a044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_52:
        DC32     0x4004a048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_53:
        DC32     0x4004a04c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_54:
        DC32     0x4004a050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_55:
        DC32     0x4004a054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_56:
        DC32     0x4004a058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_57:
        DC32     0x4004a05c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_58:
        DC32     0x4004a060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_59:
        DC32     0x4004a064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_60:
        DC32     0x4004a068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_61:
        DC32     0x4004a06c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_62:
        DC32     0x4004a070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_63:
        DC32     0x4004a074

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_64:
        DC32     0x4004a078

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_65:
        DC32     0x4004a07c
//  204 

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  205 void Run_RAM_Loop(void)
//  206 {   
//  207     // Turn off the Flash!!
//  208     SIM_FCFG1 |= SIM_FCFG1_FLASHDIS_MASK;
Run_RAM_Loop:
        LDR      R0,??Run_RAM_Loop_0  ;; 0x4004804c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??Run_RAM_Loop_0  ;; 0x4004804c
        STR      R1,[R0, #+0]
//  209             
//  210     // Write the PMC control register to enter LLS
//  211     SMC_PMCTRL |= (SMC_PMCTRL_STOPM(0x3));
        LDR      R0,??Run_RAM_Loop_0+0x4  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+3
        ORRS     R1,R1,R0
        LDR      R0,??Run_RAM_Loop_0+0x4  ;; 0x4007e001
        STRB     R1,[R0, #+0]
//  212     
//  213     // Set the SLEEPDEEP bit and the SLEEPONEXIT bit.  The SLEEP-ON-EXIT feature
//  214     //  will ensure that the part is always in LLS except for when a comparison
//  215     //  is being made and will save cycles by eliminating the need to stack
//  216     //  and unstack registers between comparisons.  
//  217     SCB_SCR = (SCB_SCR_SLEEPDEEP_MASK | SCB_SCR_SLEEPONEXIT_MASK);
        LDR      R0,??Run_RAM_Loop_0+0x8  ;; 0xe000ed10
        MOVS     R1,#+6
        STR      R1,[R0, #+0]
//  218         
//  219     // Finally, enable the LPTMR
//  220     LPTMR0_CSR |= LPTMR_CSR_TEN_MASK;  // Use this setting if using the LPTMR interrupt method
        LDR      R0,??Run_RAM_Loop_0+0xC  ;; 0x40040000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??Run_RAM_Loop_0+0xC  ;; 0x40040000
        STR      R1,[R0, #+0]
//  221     
//  222     CMP0_SCR |= (CMP_SCR_CFR_MASK | CMP_SCR_CFF_MASK);
        LDR      R0,??Run_RAM_Loop_0+0x10  ;; 0x40073003
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+6
        ORRS     R1,R1,R0
        LDR      R0,??Run_RAM_Loop_0+0x10  ;; 0x40073003
        STRB     R1,[R0, #+0]
//  223     // Clear pending interrupts in the NVIC by writing a 1!
//  224     NVIC_ICPR = 0xFFFFFFFF;
        LDR      R0,??Run_RAM_Loop_0+0x14  ;; 0xe000e280
        MOVS     R1,#+0
        MVNS     R1,R1            ;; #-1
        STR      R1,[R0, #+0]
//  225         
//  226     // Execute the WFI instruction to enter LLS mode
//  227     
//  228 #ifndef KEIL
//  229 	asm("WFI");
        WFI
//  230 #else
//  231 	__wfi();
//  232 #endif
//  233         
//  234      // Inifinite while loop just in case the part returns to Main from the
//  235      //  ISR.  However, this loop should never be entered.     
//  236      while(1)
??Run_RAM_Loop_1:
        B        ??Run_RAM_Loop_1
        Nop      
        DATA
??Run_RAM_Loop_0:
        DC32     0x4004804c
        DC32     0x4007e001
        DC32     0xe000ed10
        DC32     0x40040000
        DC32     0x40073003
        DC32     0xe000e280
//  237      {}
//  238 }

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
// 950 bytes in section .text
//  92 bytes in section .textrw
// 
// 1 042 bytes of CODE memory
//
//Errors: none
//Warnings: none
