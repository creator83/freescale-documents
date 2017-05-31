///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:31 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\cpu\sysinit.c                              /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\cpu\sysinit.c" -D IAR -D FRDM -D EX2 -lCN  /
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
//                    st\sysinit.s                                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME sysinit

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_idiv
        EXTERN __aeabi_uidiv
        EXTERN enable_irq

        PUBLIC clk_out_init
        PUBLIC core_clk_khz
        PUBLIC enable_abort_button
        PUBLIC mcg_clk_hz
        PUBLIC mcg_clk_khz
        PUBLIC periph_clk_khz
        PUBLIC pll_clk_khz
        PUBLIC sysinit
        PUBLIC uart0_clk_khz

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\cpu\sysinit.c
//    1 /*
//    2  * File:        sysinit.c
//    3  * Purpose:     Kinetis Configuration
//    4  *              Initializes processor to a default state
//    5  *
//    6  * Notes:
//    7  *
//    8  */
//    9 
//   10 #include "common.h"
//   11 #include "sysinit.h"
//   12 #include "uart.h"
//   13 #include "rtc.h"
//   14 
//   15 /********************************************************************/
//   16 
//   17 /* Actual system clock frequency */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 int mcg_clk_hz;
mcg_clk_hz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 int mcg_clk_khz;
mcg_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 int core_clk_khz;
core_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 int periph_clk_khz;
periph_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 int pll_clk_khz;
pll_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 int uart0_clk_khz;
uart0_clk_khz:
        DS8 4
//   24 
//   25 
//   26 
//   27 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void sysinit (void)
//   29 {
sysinit:
        PUSH     {LR}
//   30         /* Enable all of the port clocks. These have to be enabled to configure
//   31          * pin muxing options, so most code will need all of these on anyway.
//   32          */
//   33         SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//   34                       | SIM_SCGC5_PORTB_MASK
//   35                        );
        LDR      R0,??DataTable2  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        LSLS     R1,R1,#+3        ;; #+1536
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2  ;; 0x40048038
        STR      R1,[R0, #+0]
//   36         
//   37         // releases hold with ACKISO:  Only has an effect if recovering from VLLS1, VLLS2, or VLLS3
//   38         // if ACKISO is set you must clear ackiso before calling pll_init 
//   39         //    or pll init hangs waiting for OSC to initialize
//   40         // if osc enabled in low power modes - enable it first before ack
//   41         // if I/O needs to be maintained without glitches enable outputs and modules first before ack.
//   42         if (PMC_REGSC &  PMC_REGSC_ACKISO_MASK)
        LDR      R0,??DataTable2_1  ;; 0x4007d002
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL      ??sysinit_0
//   43         PMC_REGSC |= PMC_REGSC_ACKISO_MASK;
        LDR      R0,??DataTable2_1  ;; 0x4007d002
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_1  ;; 0x4007d002
        STRB     R1,[R0, #+0]
//   44 
//   45 #if defined(NO_PLL_INIT)
//   46         mcg_clk_hz = 21000000; //FEI mode
??sysinit_0:
        LDR      R0,??DataTable2_2
        LDR      R1,??DataTable2_3  ;; 0x1406f40
        STR      R1,[R0, #+0]
//   47         
//   48  //       SIM_SOPT2 &= !SIM_SOPT2_PLLFLLSEL_MASK; // clear PLLFLLSEL to select the FLL for this clock source
//   49         
//   50         uart0_clk_khz = (mcg_clk_hz / 1000); // the UART0 clock frequency will equal the FLL frequency
        LDR      R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        MOVS     R1,#+250
        LSLS     R1,R1,#+2        ;; #+1000
        BL       __aeabi_idiv
        LDR      R1,??DataTable2_4
        STR      R0,[R1, #+0]
//   51        
//   52 #else 
//   53        /* Ramp up the system clock */
//   54        /* Set the system dividers */
//   55       
//   56         SIM_CLKDIV1 = ( 0
//   57                         | SIM_CLKDIV1_OUTDIV1(0)
//   58                         | SIM_CLKDIV1_OUTDIV4(1) );
//   59  
//   60       // only for demo, reset rtc,user can remove it
//   61       rtc_reset();
//   62    
//   63       mcg_clk_hz =  fei_fee(CLK0_FREQ_HZ,HIGH_GAIN,CLK0_TYPE);
//   64       
//   65       if (mcg_clk_hz < 0x100)
//   66          while(1);
//   67 
//   68        uart0_clk_khz = mcg_clk_hz; // UART0 clock frequency will equal half the PLL frequency
//   69 #endif      
//   70 
//   71 	/*
//   72          * Use the value obtained from the pll_init function to define variables
//   73 	 * for the core clock in kHz and also the peripheral clock. These
//   74 	 * variables can be used by other functions that need awareness of the
//   75 	 * system frequency.
//   76 	 */
//   77         mcg_clk_khz = mcg_clk_hz / 1000;
        LDR      R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        MOVS     R1,#+250
        LSLS     R1,R1,#+2        ;; #+1000
        BL       __aeabi_idiv
        LDR      R1,??DataTable2_5
        STR      R0,[R1, #+0]
//   78   	    core_clk_khz = mcg_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV1_MASK) >> 28)+ 1);
        LDR      R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable2_6  ;; 0x40048044
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+28
        ADDS     R1,R1,#+1
        BL       __aeabi_uidiv
        LDR      R1,??DataTable2_7
        STR      R0,[R1, #+0]
//   79         periph_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV4_MASK) >> 16)+ 1);
        LDR      R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable2_6  ;; 0x40048044
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+29       ;; ZeroExtS R1,R1,#+29,#+29
        LSRS     R1,R1,#+29
        ADDS     R1,R1,#+1
        BL       __aeabi_uidiv
        LDR      R1,??DataTable2_8
        STR      R0,[R1, #+0]
//   80         
//   81         /* Enable pin interrupt for the abort button - PTA4 */
//   82         /* This pin could also be used as the NMI interrupt, but since the NMI
//   83          * is level sensitive each button press will cause multiple interrupts.
//   84          * Using the GPIO interrupt instead means we can configure for an edge
//   85          * sensitive interrupt instead = one interrupt per button press.
//   86          */
//   87 //        enable_abort_button();
//   88         
//   89        // clk_out_init();
//   90         
//   91   	/* Enable the pins for the selected SCI */
//   92 #ifdef DEBUG_PRINT
//   93 #ifdef USE_UART0
//   94 #ifdef UART_PIN_PTB_1_2_
//   95         /* Enable the SCI1_TXD function on PTC4 */
//   96   	PORTB_PCR1 = PORT_PCR_MUX(0x2); // LPSCI is alt3 function for this pin
//   97   		
//   98   	/* Enable the SCI1_RXD function on PTC3 */
//   99   	PORTB_PCR2 = PORT_PCR_MUX(0x2); // LPSCI is alt3 function for this pin 
//  100 #else
//  101         
//  102         /* Enable the SCI1_TXD function on PTC4 */
//  103   	PORTB_PCR3 = PORT_PCR_MUX(0x3); // LPSCI is alt3 function for this pin
//  104   		
//  105   	/* Enable the SCI1_RXD function on PTC3 */
//  106   	PORTB_PCR4 = PORT_PCR_MUX(0x3); // LPSCI is alt3 function for this pin
//  107 #endif         
//  108         SIM_SOPT2 |= SIM_SOPT2_UART0SRC(1); // select the FLLFLLCLK as UART0 clock source
//  109         
//  110         uart0_init (TERM_PORT,uart0_clk_khz,TERMINAL_BAUD);
//  111 #else
//  112 
//  113   	if (TERM_PORT == UART1_BASE_PTR)
//  114   	{
//  115                  /* Enable the SCI1_TXD function on PTC4 */
//  116   		PORTC_PCR4 = PORT_PCR_MUX(0x3); // SCI is alt3 function for this pin
//  117   		
//  118   		/* Enable the SCI1_RXD function on PTC3 */
//  119   		PORTC_PCR3 = PORT_PCR_MUX(0x3); // SCI is alt3 function for this pin
//  120   	}
//  121         
//  122         if (TERM_PORT == UART2_BASE_PTR)
//  123   	{
//  124                  /* Enable the SCI2_TXD function on PTD3 */
//  125   		PORTD_PCR3 = PORT_PCR_MUX(0x3); // SCI is alt3 function for this pin
//  126   		
//  127   		/* Enable the SCI2_RXD function on PTD2 */
//  128   		PORTD_PCR2 = PORT_PCR_MUX(0x3); // SCI is alt3 function for this pin
//  129   	}
//  130         
//  131   	SCI_init (TERM_PORT, periph_clk_khz, TERMINAL_BAUD);
//  132 #endif
//  133 #endif
//  134 }
        POP      {PC}             ;; return
//  135 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  136 void enable_abort_button(void)
//  137 {
enable_abort_button:
        PUSH     {R7,LR}
//  138     /* Configure the PTA4 pin for its GPIO function */
//  139     PORTA_PCR4 = PORT_PCR_MUX(0x1); // GPIO is alt1 function for this pin
        LDR      R0,??DataTable2_9  ;; 0x40049010
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  140     
//  141     /* Configure the PTA4 pin for rising edge interrupts */
//  142     PORTA_PCR4 |= PORT_PCR_IRQC(0x9); 
        LDR      R0,??DataTable2_9  ;; 0x40049010
        LDR      R0,[R0, #+0]
        MOVS     R1,#+144
        LSLS     R1,R1,#+12       ;; #+589824
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_9  ;; 0x40049010
        STR      R1,[R0, #+0]
//  143     
//  144     /* Enable the associated IRQ in the NVIC */
//  145     enable_irq(30);      
        MOVS     R0,#+30
        BL       enable_irq
//  146 }
        POP      {R0,PC}          ;; return
//  147 /********************************************************************/
//  148 
//  149 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  150 void clk_out_init(void)
//  151 {
//  152  	/* Enable the FB_CLKOUT function on PTC3 (alt5 function) */
//  153 	PORTA_PCR15 = ( PORT_PCR_MUX(0x3));
clk_out_init:
        LDR      R0,??DataTable2_10  ;; 0x4004903c
        MOVS     R1,#+192
        LSLS     R1,R1,#+2        ;; #+768
        STR      R1,[R0, #+0]
//  154         
//  155         /* Select the CLKOUT in the SMI_SOPT2 mux */
//  156         SIM_SOPT2 |= SIM_SOPT2_CLKOUTSEL(4);
        LDR      R0,??DataTable2_11  ;; 0x40048004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_11  ;; 0x40048004
        STR      R1,[R0, #+0]
//  157 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x4007d002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     mcg_clk_hz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x1406f40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     uart0_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     mcg_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     core_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     periph_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x40049010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x4004903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x40048004

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
//  24 bytes in section .bss
// 222 bytes in section .text
// 
// 222 bytes of CODE memory
//  24 bytes of DATA memory
//
//Errors: none
//Warnings: none
