///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:29 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\llwu\llwu.c                        /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\llwu\llwu.c" -D IAR -D FRDM -D     /
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
//                    st\llwu.s                                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME llwu

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        PUBLIC llwu_configure
        PUBLIC llwu_configure_filter
        PUBLIC llwu_isr

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\drivers\llwu\llwu.c
//    1 /*!
//    2  * \file    llwu.c
//    3  * \brief   common LLWU routines
//    4  *
//    5  * This file defines the functions/interrupt handlers/macros used for LLWU to be used as wakeup source.
//    6  * And some common initializations.
//    7  *
//    8  * \version $Revision: 1.0 $
//    9  * \author  Philip Drake(rxaa60)
//   10  ***/
//   11 
//   12 #include "common.h"
//   13 #include "llwu.h"
//   14 #include "mcg.h"
//   15 
//   16 // Must include the correct file depending on which example is being run. 
//   17 #if (defined(EX1))
//   18 #include "Ex1_ADC_Example.h"
//   19 #include "adc.h"
//   20 
//   21 #elif (defined(EX2))
//   22 #include "Ex2_SingleChannel_CMP.h"
//   23 
//   24 #elif (defined(EX3))
//   25 #include "Ex3_DualChannel_CMP.h"
//   26 
//   27 #elif (defined(EX4))
//   28 #include "Ex4_12BitDAC_CMP.h"
//   29 
//   30 #else
//   31 #endif
//   32 
//   33 
//   34 extern int re_init_clk;
//   35 extern int clock_freq_hz;
//   36 extern uint16 RTC_Alarm; 
//   37 
//   38 /* function: llwu_configure
//   39 
//   40    description: Set up the LLWU for wakeup the MCU from LLS and VLLSx modes 
//   41    from the selected pin or module.
//   42    
//   43    inputs:
//   44    pin_en - unsigned integer, bit position indicates the pin is enabled.  
//   45             More than one bit can be set to enable more than one pin at a time.  
//   46    
//   47    rise_fall - 0x00 = External input disabled as wakeup
//   48                0x01 - External input enabled as rising edge detection
//   49                0x02 - External input enabled as falling edge detection
//   50                0x03 - External input enablge as any edge detection
//   51    module_en - unsigned char, bit position indicates the module is enabled.  
//   52                More than one bit can be set to enabled more than one module                   
//   53    
//   54    for example:  if bit 0 and 1 need to be enabled as rising edge detect call this  routine with
//   55    pin_en = 0x0003 and rise_fall = 0x02
//   56    
//   57    Note: to set up one set of pins for rising and another for falling, 2 calls to this 
//   58          function are required, 1st for rising then the second for falling.
//   59    
//   60 */
//   61 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void llwu_configure(unsigned int pin_en, unsigned char rise_fall, unsigned char module_en ) {
llwu_configure:
        PUSH     {R4,R5,LR}
//   63     uint8 temp;
//   64     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR      R3,??DataTable1  ;; 0x40048034
        LDR      R3,[R3, #+0]
        MOVS     R4,#+128
        LSLS     R4,R4,#+21       ;; #+268435456
        ORRS     R4,R4,R3
        LDR      R3,??DataTable1  ;; 0x40048034
        STR      R4,[R3, #+0]
//   65 //   used on rev 1.4 of P2
//   66     temp = LLWU_PE1;
        LDR      R3,??DataTable1_1  ;; 0x4007c000
        LDRB     R3,[R3, #+0]
//   67     if( pin_en & 0x0001)
        LSLS     R4,R0,#+31
        BPL      ??llwu_configure_0
//   68     {
//   69         temp |= LLWU_PE1_WUPE0(rise_fall);
        MOVS     R4,R3
        LSLS     R3,R1,#+30       ;; ZeroExtS R3,R1,#+30,#+30
        LSRS     R3,R3,#+30
        ORRS     R3,R3,R4
//   70 #ifdef DEBUG_PRINT
//   71        printf(" LLWU configured pins PTA4 is LLWU wakeup source \n");
//   72 #endif
//   73        LLWU_F1 |= LLWU_F1_WUF0_MASK;   // write one to clear the flag
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        LDRB     R4,[R4, #+0]
        MOVS     R5,#+1
        ORRS     R5,R5,R4
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        STRB     R5,[R4, #+0]
//   74     }
//   75     if( pin_en & 0x0002)
??llwu_configure_0:
        LSLS     R4,R0,#+30
        BPL      ??llwu_configure_1
//   76     {
//   77         temp |= LLWU_PE1_WUPE1(rise_fall);
        MOVS     R5,R3
        LSLS     R4,R1,#+2
        MOVS     R3,#+12
        ANDS     R3,R3,R4
        ORRS     R3,R3,R5
//   78 #ifdef DEBUG_PRINT
//   79         printf(" LLWU configured pins PTA5 is wakeup source \n");
//   80 #endif
//   81         LLWU_F1 |= LLWU_F1_WUF1_MASK;   // write one to clear the flag
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        LDRB     R4,[R4, #+0]
        MOVS     R5,#+2
        ORRS     R5,R5,R4
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        STRB     R5,[R4, #+0]
//   82     }
//   83     if( pin_en & 0x0004)
??llwu_configure_1:
        LSLS     R4,R0,#+29
        BPL      ??llwu_configure_2
//   84     {
//   85         temp |= LLWU_PE1_WUPE2(rise_fall);
        MOVS     R5,R3
        LSLS     R4,R1,#+4
        MOVS     R3,#+48
        ANDS     R3,R3,R4
        ORRS     R3,R3,R5
//   86 #ifdef DEBUG_PRINT
//   87         printf(" LLWU configured pins PTA6 is LLWU wakeup source \n");
//   88 #endif
//   89         LLWU_F1 |= LLWU_F1_WUF2_MASK;   // write one to clear the flag
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        LDRB     R4,[R4, #+0]
        MOVS     R5,#+4
        ORRS     R5,R5,R4
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        STRB     R5,[R4, #+0]
//   90     }
//   91     if( pin_en & 0x0008)
??llwu_configure_2:
        LSLS     R4,R0,#+28
        BPL      ??llwu_configure_3
//   92     {
//   93         temp |= LLWU_PE1_WUPE3(rise_fall);
        MOVS     R4,R3
        LSLS     R3,R1,#+6
        ORRS     R3,R3,R4
//   94 #ifdef DEBUG_PRINT
//   95         printf(" LLWU configured pins PTA7 is LLWU wakeup source \n");
//   96 #endif
//   97         LLWU_F1 |= LLWU_F1_WUF3_MASK;   // write one to clear the flag
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        LDRB     R4,[R4, #+0]
        MOVS     R5,#+8
        ORRS     R5,R5,R4
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        STRB     R5,[R4, #+0]
//   98     }
//   99     LLWU_PE1 = temp;
??llwu_configure_3:
        LDR      R4,??DataTable1_1  ;; 0x4007c000
        STRB     R3,[R4, #+0]
//  100 
//  101     temp = LLWU_PE2;
        LDR      R3,??DataTable1_3  ;; 0x4007c001
        LDRB     R3,[R3, #+0]
//  102     if( pin_en & 0x0010)
        LSLS     R4,R0,#+27
        BPL      ??llwu_configure_4
//  103     {
//  104         temp |= LLWU_PE2_WUPE4(rise_fall);
        MOVS     R4,R3
        LSLS     R3,R1,#+30       ;; ZeroExtS R3,R1,#+30,#+30
        LSRS     R3,R3,#+30
        ORRS     R3,R3,R4
//  105 #ifdef DEBUG_PRINT
//  106         printf(" LLWU configured pins PTB0 is LLWU wakeup source \n");
//  107 #endif
//  108         LLWU_F1 |= LLWU_F1_WUF4_MASK;   // write one to clear the flag
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        LDRB     R4,[R4, #+0]
        MOVS     R5,#+16
        ORRS     R5,R5,R4
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        STRB     R5,[R4, #+0]
//  109     }
//  110     if( pin_en & 0x0020)
??llwu_configure_4:
        LSLS     R4,R0,#+26
        BPL      ??llwu_configure_5
//  111     {
//  112         temp |= LLWU_PE2_WUPE5(rise_fall);
        MOVS     R5,R3
        LSLS     R4,R1,#+2
        MOVS     R3,#+12
        ANDS     R3,R3,R4
        ORRS     R3,R3,R5
//  113 #ifdef DEBUG_PRINT
//  114         printf(" LLWU configured pins PTB2 is LLWU wakeup source \n");
//  115 #endif
//  116         LLWU_F1 |= LLWU_F1_WUF5_MASK;   // write one to clear the flag
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        LDRB     R4,[R4, #+0]
        MOVS     R5,#+32
        ORRS     R5,R5,R4
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        STRB     R5,[R4, #+0]
//  117     }
//  118     if( pin_en & 0x0040)
??llwu_configure_5:
        LSLS     R4,R0,#+25
        BPL      ??llwu_configure_6
//  119     {
//  120         temp |= LLWU_PE2_WUPE6(rise_fall);
        MOVS     R5,R3
        LSLS     R4,R1,#+4
        MOVS     R3,#+48
        ANDS     R3,R3,R4
        ORRS     R3,R3,R5
//  121 #ifdef DEBUG_PRINT
//  122         printf(" LLWU configured pins PTB4 is LLWU wakeup source \n");
//  123 #endif
//  124         LLWU_F1 |= LLWU_F1_WUF6_MASK;   // write one to clear the flag
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        LDRB     R4,[R4, #+0]
        MOVS     R5,#+64
        ORRS     R5,R5,R4
        LDR      R4,??DataTable1_2  ;; 0x4007c003
        STRB     R5,[R4, #+0]
//  125     }
//  126     if( pin_en & 0x0080)
??llwu_configure_6:
        LSLS     R0,R0,#+24
        BPL      ??llwu_configure_7
//  127     {
//  128         temp |= LLWU_PE2_WUPE7(rise_fall);
        MOVS     R0,R3
        LSLS     R3,R1,#+6
        ORRS     R3,R3,R0
//  129 #ifdef DEBUG_PRINT
//  130         printf(" LLWU configured pins PTA0 is LLWU wakeup source \n");
//  131 #endif
//  132         LLWU_F1 |= LLWU_F1_WUF7_MASK;   // write one to clear the flag
        LDR      R0,??DataTable1_2  ;; 0x4007c003
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable1_2  ;; 0x4007c003
        STRB     R1,[R0, #+0]
//  133     }
//  134     LLWU_PE2 = temp;
??llwu_configure_7:
        LDR      R0,??DataTable1_3  ;; 0x4007c001
        STRB     R3,[R0, #+0]
//  135 
//  136     if (module_en == 0){
        UXTB     R2,R2
        CMP      R2,#+0
        BNE      ??llwu_configure_8
//  137       LLWU_ME = 0;
        LDR      R0,??DataTable1_4  ;; 0x4007c002
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B        ??llwu_configure_9
//  138     }else  {
//  139     LLWU_ME |= module_en;  //Set up more modules to wakeup up
??llwu_configure_8:
        LDR      R0,??DataTable1_4  ;; 0x4007c002
        LDRB     R0,[R0, #+0]
        ORRS     R2,R2,R0
        LDR      R0,??DataTable1_4  ;; 0x4007c002
        STRB     R2,[R0, #+0]
//  140      }
//  141         
//  142       //function ends
//  143 }
??llwu_configure_9:
        POP      {R4,R5,PC}       ;; return
//  144 
//  145 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  146 void llwu_configure_filter(unsigned int wu_pin_num, unsigned char filter_en, unsigned char rise_fall ) 
//  147 {
llwu_configure_filter:
        PUSH     {R4,R5,LR}
//  148    //wu_pin_num is the pin number to be written to FILTSEL.  wu_pin_num is not the same as pin_en. 
//  149     uint8 temp;
//  150     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR      R3,??DataTable1  ;; 0x40048034
        LDR      R3,[R3, #+0]
        MOVS     R4,#+128
        LSLS     R4,R4,#+21       ;; #+268435456
        ORRS     R4,R4,R3
        LDR      R3,??DataTable1  ;; 0x40048034
        STR      R4,[R3, #+0]
//  151 
//  152 #ifdef DEBUG_PRINT
//  153     printf("\nEnabling Filter %x on WU Pin %x for WU sense %x \n",filter_en, wu_pin_num, rise_fall);
//  154 #endif   
//  155      temp = 0;
        MOVS     R3,#+0
//  156      //first clear filter values and clear flag by writing a 1
//  157      LLWU_FILT1 = LLWU_FILT1_FILTF_MASK;
        LDR      R4,??DataTable1_5  ;; 0x4007c005
        MOVS     R5,#+128
        STRB     R5,[R4, #+0]
//  158      LLWU_FILT2 = LLWU_FILT2_FILTF_MASK;
        LDR      R4,??DataTable1_6  ;; 0x4007c006
        MOVS     R5,#+128
        STRB     R5,[R4, #+0]
//  159      
//  160      if(filter_en == 1)
        UXTB     R1,R1
        CMP      R1,#+1
        BNE      ??llwu_configure_filter_0
//  161      {
//  162     	 //clear the flag bit and set the others
//  163          temp |= (LLWU_FILT1_FILTF_MASK) | (LLWU_FILT1_FILTE(rise_fall) | LLWU_FILT1_FILTSEL(wu_pin_num));         
        MOVS     R4,R3
        LSLS     R1,R2,#+5
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        ORRS     R0,R0,R1
        MOVS     R3,#+128
        ORRS     R3,R3,R0
        ORRS     R3,R3,R4
//  164          LLWU_FILT1 = temp;
        LDR      R0,??DataTable1_5  ;; 0x4007c005
        STRB     R3,[R0, #+0]
        B        ??llwu_configure_filter_1
//  165          
//  166      }else if (filter_en == 2)
??llwu_configure_filter_0:
        UXTB     R1,R1
        CMP      R1,#+2
        BNE      ??llwu_configure_filter_1
//  167      {
//  168     	 //clear the flag bit and set the others
//  169     	 temp |= (LLWU_FILT2_FILTF_MASK) | (LLWU_FILT2_FILTE(rise_fall) | LLWU_FILT2_FILTSEL(wu_pin_num));         
        MOVS     R4,R3
        LSLS     R1,R2,#+5
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        ORRS     R0,R0,R1
        MOVS     R3,#+128
        ORRS     R3,R3,R0
        ORRS     R3,R3,R4
//  170          LLWU_FILT2 = temp;
        LDR      R0,??DataTable1_6  ;; 0x4007c006
        STRB     R3,[R0, #+0]
//  171      }else
//  172      {
//  173 #ifdef DEBUG_PRINT
//  174     	 printf("\nError - invalid filter number\n"); 
//  175 #endif
//  176      }
//  177 }    
??llwu_configure_filter_1:
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x4007c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x4007c003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x4007c001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x4007c002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x4007c005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x4007c006
//  178     
//  179 //Interrupt handler for LLWU 

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  180 void llwu_isr(void){
llwu_isr:
        PUSH     {LR}
//  181 #if (defined(EX1))
//  182     uint16 V0_result;
//  183     uint32 temp32;
//  184     
//  185     // The ADC compare function and hardware averaging functions should be 
//  186     //  enabled.  The ADC should also not be running in the low power mode 
//  187     //  as we are attempting to use a mode lower than VLPS.  
//  188     
//  189     // Sample V0
//  190     TriggerADC(CHANNELV0);
//  191     V0_result = ReadADCPoll();    
//  192         
//  193     if (V0_result > V0_THRESH)
//  194         FGPIOA_PSOR = 0x1000;
//  195     else
//  196         FGPIOA_PCOR = 0x1000;
//  197     
//  198     
//  199     LPTMR0_CSR =  (LPTMR_CSR_TCF_MASK 
//  200                    | LPTMR_CSR_TEN_MASK
//  201                    | LPTMR_CSR_TIE_MASK);   // write 1 to TCF to clear the LPT timer compare flag
//  202     
//  203     //wait for write to complete to  before returning 
//  204     temp32 = LPTMR0_CSR;
//  205     
//  206     NVIC_ICPR = 0x10010000;  // Clear LPTMR interrupt in NVIC
//  207         
//  208     
//  209 #elif (defined(EX2))
//  210     uint8_t SCR_ch1, SCR_ch2;
//  211     
//  212     /****************************************************************/
//  213     /****************  EXPERIMENT  **********************************/
//  214     // First store the SCR register value
//  215     SCR_ch1 = CMP0_SCR;
        LDR      R0,??llwu_isr_0  ;; 0x40073003
        LDRB     R0,[R0, #+0]
//  216     
//  217     // Disable the Trigger mode
//  218     CMP0_CR1 &= ~CMP_CR1_TRIGM_MASK;
        LDR      R1,??llwu_isr_0+0x4  ;; 0x40073001
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+223
        ANDS     R2,R2,R1
        LDR      R1,??llwu_isr_0+0x4  ;; 0x40073001
        STRB     R2,[R1, #+0]
//  219     
//  220     // Now select V1
//  221     CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V1) | CMP_MUXCR_MSEL(CMP_DACIN_6B));
        LDR      R1,??llwu_isr_0+0x8  ;; 0x40073005
        MOVS     R2,#+31
        STRB     R2,[R1, #+0]
//  222     
//  223     // Store the new SCR value.  This ensures a read and ensures that the new channel has been selected. 
//  224     SCR_ch2 = CMP0_SCR;
        LDR      R1,??llwu_isr_0  ;; 0x40073003
        LDRB     R1,[R1, #+0]
//  225     
//  226     // Read the output and make decision
//  227     //if (CMP0_SCR & CMP_SCR_COUT_MASK)
//  228     if (SCR_ch2 & CMP_SCR_COUT_MASK)
        LSLS     R1,R1,#+31
        BPL      ??llwu_isr_1
//  229     {
//  230         FGPIOB_PSOR = 0x40;
        LDR      R1,??llwu_isr_0+0xC  ;; 0xf80ff044
        MOVS     R2,#+64
        STR      R2,[R1, #+0]
        B        ??llwu_isr_2
//  231     }
//  232     else
//  233     {
//  234         FGPIOB_PCOR = 0x40;
??llwu_isr_1:
        LDR      R1,??llwu_isr_0+0x10  ;; 0xf80ff048
        MOVS     R2,#+64
        STR      R2,[R1, #+0]
//  235     }
//  236     
//  237     
//  238     //if ((CMP0_SCR & CMP_SCR_CFR_MASK) == CMP_SCR_CFR_MASK)  // Comment out for the experiment
//  239     if ((SCR_ch1 & CMP_SCR_CFR_MASK) == CMP_SCR_CFR_MASK)
??llwu_isr_2:
        UXTB     R0,R0
        LSLS     R0,R0,#+29
        BPL      ??llwu_isr_3
//  240     {
//  241         CMP0_SCR = (CMP_SCR_CFR_MASK | CMP_SCR_IEF_MASK);   
        LDR      R0,??llwu_isr_0  ;; 0x40073003
        MOVS     R1,#+12
        STRB     R1,[R0, #+0]
//  242         FGPIOA_PSOR = 0x1000;
        LDR      R0,??llwu_isr_0+0x14  ;; 0xf80ff004
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        STR      R1,[R0, #+0]
        B        ??llwu_isr_4
//  243     }
//  244     else
//  245     {
//  246         CMP0_SCR = (CMP_SCR_CFF_MASK | CMP_SCR_IER_MASK);
??llwu_isr_3:
        LDR      R0,??llwu_isr_0  ;; 0x40073003
        MOVS     R1,#+18
        STRB     R1,[R0, #+0]
//  247         FGPIOA_PCOR = 0x1000;
        LDR      R0,??llwu_isr_0+0x18  ;; 0xf80ff008
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        STR      R1,[R0, #+0]
//  248     }
//  249     
//  250     // Now enable the trigger mode
//  251     CMP0_CR1 |= CMP_CR1_TRIGM_MASK;
??llwu_isr_4:
        LDR      R0,??llwu_isr_0+0x4  ;; 0x40073001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        LDR      R0,??llwu_isr_0+0x4  ;; 0x40073001
        STRB     R1,[R0, #+0]
//  252     
//  253     // Now select V0 before returning
//  254     CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V0) | CMP_MUXCR_MSEL(CMP_DACIN_6B));
        LDR      R0,??llwu_isr_0+0x8  ;; 0x40073005
        MOVS     R1,#+15
        STRB     R1,[R0, #+0]
//  255     
//  256     
//  257 #elif (defined(EX3))
//  258 
//  259     uint32 temp32, i;
//  260     
//  261     LPTMR0_CSR =  (LPTMR_CSR_TCF_MASK 
//  262                    | LPTMR_CSR_TEN_MASK
//  263                    | LPTMR_CSR_TIE_MASK);   // write 1 to TCF to clear the LPT timer compare flagint
//  264     
//  265     NVIC_ICPR = 0x10010000;  // Clear LPTMR interrupt in NVIC
//  266     
//  267     // Move to VLPR mode
//  268     SMC_PMCTRL = ((SMC_PMCTRL & ~SMC_PMCTRL_RUNM_MASK) | SMC_PMCTRL_RUNM(2));
//  269     
//  270     // Turn on the comparator
//  271     CMP0_CR1 = CMP_CR1_EN_MASK;
//  272   
//  273     // Turn on the DAC and set the voltage reference voltage appropriately.  
//  274     CMP0_DACCR = (CMP_DACCR_DACEN_MASK
//  275                   | CMP_DACCR_VOSEL(31));
//  276     
//  277     // Read the CMP control registers to ensure that the writes occurred.  
//  278     temp32 = (CMP0_CR1 | CMP0_DACCR);
//  279     
//  280     // Select V0 as the plus input and the reference voltage as the minu input.   
//  281     CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V0) | CMP_MUXCR_MSEL(7));
//  282     
//  283     // Reset semaphore i
//  284     i = 0;
//  285     
//  286     // WAIT!!  Must meet the settling time of 40 us here (decimal 17)!!
//  287     while(i<12)
//  288         i++;
//  289     
//  290     // Read the output and make decision
//  291     if (CMP0_SCR & CMP_SCR_COUT_MASK)
//  292     {
//  293         FGPIOA_PSOR = 0x1000;
//  294     }
//  295     else
//  296     {
//  297         FGPIOA_PCOR = 0x1000;
//  298     }
//  299     
//  300     // Now select V1
//  301     CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V1) | CMP_MUXCR_MSEL(CMP_DACIN));
//  302     
//  303     // Read the output and make decision
//  304     if (CMP0_SCR & CMP_SCR_COUT_MASK)
//  305     {
//  306         FGPIOB_PSOR = 0x40;
//  307     }
//  308     else
//  309     {
//  310         FGPIOB_PCOR = 0x40;
//  311     }
//  312     
//  313     // Ensure DAC is off before leaving ISR
//  314     CMP0_DACCR = 0x00;
//  315     
//  316     // Ensure CMP is off before leaving ISR
//  317     CMP0_CR1 = 0x00;
//  318     
//  319 #elif (defined(EX4))
//  320     
//  321     // Move to VLPR mode
//  322     //SMC_PMCTRL = SMC_PMCTRL_RUNM(2);
//  323         
//  324     if ((CMP0_SCR & CMP_SCR_CFR_MASK) == CMP_SCR_CFR_MASK)
//  325     {
//  326         CMP0_SCR = (CMP_SCR_CFR_MASK | CMP_SCR_IEF_MASK);   
//  327         FGPIOA_PSOR = 0x1000;
//  328     }
//  329     else if ((CMP0_SCR & CMP_SCR_CFF_MASK) == CMP_SCR_CFF_MASK)
//  330     {
//  331         CMP0_SCR = (CMP_SCR_CFF_MASK | CMP_SCR_IER_MASK);
//  332         FGPIOA_PCOR = 0x1000;
//  333     }
//  334 #else
//  335     
//  336 #endif
//  337 }
        POP      {PC}             ;; return
        Nop      
        DATA
??llwu_isr_0:
        DC32     0x40073003
        DC32     0x40073001
        DC32     0x40073005
        DC32     0xf80ff044
        DC32     0xf80ff048
        DC32     0xf80ff004
        DC32     0xf80ff008

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
// 368 bytes in section .text
// 132 bytes in section .textrw
// 
// 500 bytes of CODE memory
//
//Errors: none
//Warnings: none
