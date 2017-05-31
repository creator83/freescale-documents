///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    25/Jan/2013  14:41:36 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\Code                    /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\src\p /
//                    rojects\KL04_ref_design_demo\KL04_ref_design_demo.c     /
//    Command line =  "D:\Profiles\B38350\My Documents\Code                   /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\src\p /
//                    rojects\KL04_ref_design_demo\KL04_ref_design_demo.c"    /
//                    -D IAR -D KL04_REF_DESIGN -lCN "D:\Profiles\B38350\My   /
//                    Documents\Code Repositories\KL05\KL04_SC_TEMP\dummy_bac /
//                    kup\dummy\build\iar\KL04_ref_design_demo\FLASH_32KB\Lis /
//                    t\" -lB "D:\Profiles\B38350\My Documents\Code           /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\FLASH_32KB\List\" -o          /
//                    "D:\Profiles\B38350\My Documents\Code                   /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\FLASH_32KB\Obj\" --no_cse     /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=Cortex-M0+ -e --fpu=None          /
//                    --dlib_config "C:\Program Files\IAR Systems\Embedded    /
//                    Workbench 6.4\arm\INC\c\DLib_Config_Normal.h" -I        /
//                    "D:\Profiles\B38350\My Documents\Code                   /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\projects\KL04_re /
//                    f_design_demo\" -I "D:\Profiles\B38350\My               /
//                    Documents\Code Repositories\KL05\KL04_SC_TEMP\dummy_bac /
//                    kup\dummy\build\iar\KL04_ref_design_demo\..\..\..\src\c /
//                    ommon\" -I "D:\Profiles\B38350\My Documents\Code        /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\cpu\" -I         /
//                    "D:\Profiles\B38350\My Documents\Code                   /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\cpu\headers\"    /
//                    -I "D:\Profiles\B38350\My Documents\Code                /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\drivers\llwu\"   /
//                    -I "D:\Profiles\B38350\My Documents\Code                /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\drivers\adc\"    /
//                    -I "D:\Profiles\B38350\My Documents\Code                /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\drivers\lptmr\"  /
//                    -I "D:\Profiles\B38350\My Documents\Code                /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\drivers\mcg\"    /
//                    -I "D:\Profiles\B38350\My Documents\Code                /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\drivers\pmc\"    /
//                    -I "D:\Profiles\B38350\My Documents\Code                /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\drivers\rcm\"    /
//                    -I "D:\Profiles\B38350\My Documents\Code                /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\drivers\rtc\"    /
//                    -I "D:\Profiles\B38350\My Documents\Code                /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\drivers\smc\"    /
//                    -I "D:\Profiles\B38350\My Documents\Code                /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\drivers\uart\"   /
//                    -I "D:\Profiles\B38350\My Documents\Code                /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\drivers\wdog\"   /
//                    -I "D:\Profiles\B38350\My Documents\Code                /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\drivers\uart\"   /
//                    -I "D:\Profiles\B38350\My Documents\Code                /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\..\..\src\platforms\" -I   /
//                    "D:\Profiles\B38350\My Documents\Code                   /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\..\" -Ol --use_c++_inline     /
//    List file    =  D:\Profiles\B38350\My Documents\Code                    /
//                    Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\build /
//                    \iar\KL04_ref_design_demo\FLASH_32KB\List\KL04_ref_desi /
//                    gn_demo.s                                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME KL04_ref_design_demo

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN Bgap_V
        EXTERN ReadADCPoll
        EXTERN TriggerADC
        EXTERN __aeabi_idiv
        EXTERN enable_irq
        EXTERN enter_vlls3
        EXTERN fei_fbe
        EXTERN fei_fbi
        EXTERN lptmr_init
        EXTERN test_mode

        PUBLIC Alarm_Test
        PUBLIC CMP0_IRQHandler
        PUBLIC CMP0_flag
        PUBLIC Drive_Test
        PUBLIC IO_config
        PUBLIC LPTMR_IRQHandler
        PUBLIC LPTMR_flag
        PUBLIC RF_Test
        PUBLIC RTC_Alarm
        PUBLIC RTC_Alarm_IRQHandler
        PUBLIC RTC_refresh_rate
        PUBLIC Run_Drive_Test_Loop
        PUBLIC Standby_Test
        PUBLIC TPM0_IRQHandler
        PUBLIC TPM0_flag
        PUBLIC TPM1_IRQHandler
        PUBLIC TPM1_flag
        PUBLIC V0_result
        PUBLIC V1_result
        PUBLIC VLLS3_recovery
        PUBLIC demo_rtc_init
        PUBLIC main

// D:\Profiles\B38350\My Documents\Code Repositories\KL05\KL04_SC_TEMP\dummy_backup\dummy\src\projects\KL04_ref_design_demo\KL04_ref_design_demo.c
//    1 /*
//    2  * File:		KL04_ref_design_demo.c
//    3  * Purpose:		Main process
//    4  *
//    5  */
//    6 
//    7 #include "common.h"
//    8 #include "KL04_ref_design_demo.h"
//    9 #include "smc.h"
//   10 #include "adc.h"
//   11 #include "BME.h"
//   12 
//   13 extern uint16 test_mode, Bgap_V;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   14 uint16 VLLS3_recovery = FALSE, RTC_Alarm = FALSE;
VLLS3_recovery:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
RTC_Alarm:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   15 uint16 TPM0_flag = FALSE, TPM1_flag = FALSE, LPTMR_flag = FALSE, CMP0_flag = FALSE;
TPM0_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
TPM1_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
LPTMR_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
CMP0_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   16 uint16 V0_result, V1_result, RTC_refresh_rate;
V0_result:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
V1_result:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
RTC_refresh_rate:
        DS8 2
//   17 
//   18 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   19 int main (void)
//   20 {
main:
        PUSH     {R7,LR}
//   21   char ch;
//   22   uint32 i;
//   23         
//   24   FGPIOA_PCOR |= 0x8000;
        LDR      R0,??DataTable1  ;; 0xf80ff008
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+8        ;; #+32768
        ORRS     R1,R1,R0
        LDR      R0,??DataTable1  ;; 0xf80ff008
        STR      R1,[R0, #+0]
//   25 #ifdef TEST_BOARD
//   26   PORTA_PCR12 = PORT_PCR_MUX(1);
//   27   PORTB_PCR6 = PORT_PCR_MUX(1);
//   28   
//   29   GPIOA_PDDR |= 0x1000;
//   30   GPIOA_PSOR |= 0x1000;
//   31   
//   32   GPIOB_PDDR |= 0x40;
//   33   GPIOB_PCOR |= 0x40;
//   34   
//   35 while(1)
//   36    {
//   37        //A12
//   38        GPIOA_PTOR = 0x1000;
//   39        // B6
//   40        GPIOB_PTOR = 0x40;
//   41        for(i=0; i< 0x3FFFFF; i++)
//   42        {}
//   43        //A12
//   44        GPIOA_PTOR = 0x1000;
//   45        // B6
//   46        GPIOB_PTOR = 0x40;
//   47        for(i=0; i< 0x3FFFFF; i++)
//   48        {}
//   49    }
//   50 
//   51 #endif
//   52   
//   53   switch (test_mode)  {
        LDR      R0,??DataTable2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??main_0
        CMP      R0,#+2
        BEQ      ??main_1
        BCC      ??main_2
        CMP      R0,#+3
        BNE      ??main_3
//   54     case 3:
//   55       Standby_Test();
??main_4:
        BL       Standby_Test
//   56       break;
        B        ??main_5
//   57     case 2:
//   58       Alarm_Test();
??main_1:
        BL       Alarm_Test
//   59       break;
        B        ??main_5
//   60     case 1:
//   61       Drive_Test();
??main_2:
        BL       Drive_Test
//   62       break;
        B        ??main_5
//   63     case 0:
//   64       RF_Test();
??main_0:
        BL       RF_Test
//   65       break;
        B        ??main_5
//   66     default:
//   67       // Turn on both OUT0 and OUT1 GPIO to indicate error state
//   68       break;
//   69   }
//   70 }
??main_3:
??main_5:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//   71 /********************************************************************/
//   72 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   73 void demo_rtc_init(uint8 time)
//   74 {
demo_rtc_init:
        PUSH     {R7,LR}
//   75     uint32 i;
//   76 
//   77   // enable the clock to SRTC module register space
//   78   SIM_SCGC6 |= SIM_SCGC6_RTC_MASK;
        LDR      R1,??DataTable1_1  ;; 0x4004803c
        LDR      R1,[R1, #+0]
        MOVS     R2,#+128
        LSLS     R2,R2,#+22       ;; #+536870912
        ORRS     R2,R2,R1
        LDR      R1,??DataTable1_1  ;; 0x4004803c
        STR      R2,[R1, #+0]
//   79   
//   80   // Configure the LLWU to wakeup from the RTC Alarm interrupt 
//   81   LLWU_ME = LLWU_ME_WUME5_MASK;
        LDR      R1,??DataTable1_2  ;; 0x4007c002
        MOVS     R2,#+32
        STRB     R2,[R1, #+0]
//   82   
//   83   /*Only POR has an effect on the SRTC, RESET to the part does not, so you must manually reset the SRTC to make sure everything is in a known state*/
//   84   /*clear the software reset bit*/
//   85   RTC_CR  = RTC_CR_SWR_MASK;
        LDR      R1,??DataTable1_3  ;; 0x4003d010
        MOVS     R2,#+1
        STR      R2,[R1, #+0]
//   86   RTC_CR  &= ~RTC_CR_SWR_MASK;
        LDR      R1,??DataTable1_3  ;; 0x4003d010
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        BICS     R1,R1,R2
        LDR      R2,??DataTable1_3  ;; 0x4003d010
        STR      R1,[R2, #+0]
//   87   
//   88   // service the COP to provide enough time for OSC initialization
//   89   SIM_SRVCOP = 0x55;
        LDR      R1,??DataTable1_4  ;; 0x40048104
        MOVS     R2,#+85
        STR      R2,[R1, #+0]
//   90   SIM_SRVCOP = 0xAA;
        LDR      R1,??DataTable1_4  ;; 0x40048104
        MOVS     R2,#+170
        STR      R2,[R1, #+0]
//   91   /*Enable the oscillator*/
//   92   RTC_CR |= RTC_CR_OSCE_MASK;
        LDR      R1,??DataTable1_3  ;; 0x4003d010
        LDR      R1,[R1, #+0]
        MOVS     R2,#+128
        LSLS     R2,R2,#+1        ;; #+256
        ORRS     R2,R2,R1
        LDR      R1,??DataTable1_3  ;; 0x4003d010
        STR      R2,[R1, #+0]
//   93   // wait for the OSCINIT bit to set to indicate oscillator is running
//   94   while (!(MCG_S & MCG_S_OSCINIT0_MASK));  
??demo_rtc_init_0:
        LDR      R1,??DataTable1_5  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+30
        BPL      ??demo_rtc_init_0
//   95   
//   96   // service the COP once more as 32kHz OSC can take a while
//   97   SIM_SRVCOP = 0x55;
        LDR      R1,??DataTable1_4  ;; 0x40048104
        MOVS     R2,#+85
        STR      R2,[R1, #+0]
//   98   SIM_SRVCOP = 0xAA;
        LDR      R1,??DataTable1_4  ;; 0x40048104
        MOVS     R2,#+170
        STR      R2,[R1, #+0]
//   99   
//  100   for(i=0; i<1000; i++);
        MOVS     R1,#+0
        B        ??demo_rtc_init_1
??demo_rtc_init_2:
        ADDS     R1,R1,#+1
??demo_rtc_init_1:
        MOVS     R2,#+250
        LSLS     R2,R2,#+2        ;; #+1000
        CMP      R1,R2
        BCC      ??demo_rtc_init_2
//  101   
//  102   //RTC_IER = RTC_IER_TSIE_MASK;
//  103   RTC_IER = RTC_IER_TAIE_MASK;
        LDR      R1,??DataTable1_6  ;; 0x4003d01c
        MOVS     R2,#+4
        STR      R2,[R1, #+0]
//  104   
//  105   RTC_TSR = 0x0;
        LDR      R1,??DataTable1_7  ;; 0x4003d000
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//  106   
//  107   if (time == 5)
        UXTB     R0,R0
        CMP      R0,#+5
        BNE      ??demo_rtc_init_3
//  108   {
//  109       // Set time alarm register
//  110       RTC_TAR = RTC_TSR + RTC_VAL_5S;
        LDR      R0,??DataTable1_7  ;; 0x4003d000
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR      R1,??DataTable1_8  ;; 0x4003d008
        STR      R0,[R1, #+0]
        B        ??demo_rtc_init_4
//  111   }
//  112   else if (time == 4)
??demo_rtc_init_3:
        UXTB     R0,R0
        CMP      R0,#+4
        BNE      ??demo_rtc_init_5
//  113   {
//  114       // Set time alarm register
//  115       RTC_TAR = RTC_TSR + RTC_VAL_4S;
        LDR      R0,??DataTable1_7  ;; 0x4003d000
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+4
        LDR      R1,??DataTable1_8  ;; 0x4003d008
        STR      R0,[R1, #+0]
        B        ??demo_rtc_init_4
//  116   }
//  117   else
//  118   {
//  119       // Set time alarm register
//  120       RTC_TAR = RTC_TSR + RTC_VAL_1S;
??demo_rtc_init_5:
        LDR      R0,??DataTable1_7  ;; 0x4003d000
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable1_8  ;; 0x4003d008
        STR      R0,[R1, #+0]
//  121   }
//  122 
//  123   // Enable RTC Alarm interrupt vector
//  124   enable_irq(20);
??demo_rtc_init_4:
        MOVS     R0,#+20
        BL       enable_irq
//  125   
//  126   // Enable Global interrupts. 
//  127   EnableInterrupts;
        CPSIE i
//  128     
//  129   //Enable the counter
//  130   RTC_SR |= RTC_SR_TCE_MASK;
        LDR      R0,??DataTable2_1  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_1  ;; 0x4003d014
        STR      R1,[R0, #+0]
//  131 
//  132 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0xf80ff008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x4007c002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x4003d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x40048104

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x4003d01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     0x4003d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x4003d008
//  133 
//  134 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void IO_config(void)
//  136 {       
//  137 #ifdef TOWER
//  138   // setup outputs
//  139   PORTA_PCR12 = (PORT_PCR_MUX(0x2));
//  140   PORTB_PCR8  = (PORT_PCR_MUX(0x2)); 
//  141   // setup inputs
//  142   PORTA_PCR7  = (PORT_PCR_MUX(0x1) | PORT_PCR_PE_MASK | PORT_PCR_PS_MASK );
//  143   PORTB_PCR14 = (PORT_PCR_MUX(0x1) | PORT_PCR_PE_MASK | PORT_PCR_PS_MASK );  
//  144   // setup ADC channels 
//  145   PORTA_PCR9  = (PORT_PCR_MUX(0x0));
//  146   PORTA_PCR10 = (PORT_PCR_MUX(0x0));
//  147 #else
//  148   // setup inputs
//  149   // Configure switchess as GPIO inputs with pullups and interrupts disabled
//  150   PORTA_PCR7  = (PORT_PCR_MUX(0x1)); // INT0  
IO_config:
        LDR      R0,??DataTable2_2  ;; 0x4004901c
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  151   PORTB_PCR0  = (PORT_PCR_MUX(0x1)); // INT1 
        LDR      R0,??DataTable2_3  ;; 0x4004a000
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  152   // setup ADC channels
//  153   //PORTA_PCR0  = (PORT_PCR_MUX(0x0));
//  154   //PORTA_PCR1  = (PORT_PCR_MUX(0x0));
//  155   //PORTA_PCR2  = (PORT_PCR_MUX(0x0));
//  156   //PORTA_PCR3  = (PORT_PCR_MUX(0x0));
//  157   //PORTA_PCR4  = (PORT_PCR_MUX(0x0));
//  158   PORTA_PCR5  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_4  ;; 0x40049014
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  159   PORTA_PCR6  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_5  ;; 0x40049018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  160   PORTA_PCR8  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_6  ;; 0x40049020
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  161   PORTA_PCR9  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_7  ;; 0x40049024
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  162   PORTA_PCR10 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_8  ;; 0x40049028
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  163   PORTA_PCR11 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_9  ;; 0x4004902c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  164   PORTA_PCR12 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_10  ;; 0x40049030
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  165   PORTA_PCR13 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_11  ;; 0x40049034
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  166   PORTA_PCR14 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_12  ;; 0x40049038
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  167   PORTA_PCR15 = (PORT_PCR_MUX(0x1));
        LDR      R0,??DataTable2_13  ;; 0x4004903c
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  168   PORTA_PCR16 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_14  ;; 0x40049040
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  169   PORTA_PCR17 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_15  ;; 0x40049044
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  170   PORTA_PCR18 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_16  ;; 0x40049048
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  171   PORTA_PCR19 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_17  ;; 0x4004904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  172   PORTA_PCR20 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_18  ;; 0x40049050
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  173   PORTA_PCR21 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_19  ;; 0x40049054
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  174   PORTA_PCR22 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_20  ;; 0x40049058
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  175   PORTA_PCR23 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_21  ;; 0x4004905c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  176   PORTA_PCR24 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_22  ;; 0x40049060
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  177   PORTA_PCR25 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_23  ;; 0x40049064
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  178   PORTA_PCR26 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_24  ;; 0x40049068
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  179   PORTA_PCR27 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_25  ;; 0x4004906c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  180   PORTA_PCR28 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_26  ;; 0x40049070
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  181   PORTA_PCR29 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_27  ;; 0x40049074
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  182   PORTA_PCR30 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_28  ;; 0x40049078
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  183   PORTA_PCR31 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_29  ;; 0x4004907c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  184   
//  185   FGPIOA_PDDR |= 0x8000;
        LDR      R0,??DataTable2_30  ;; 0xf80ff014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+8        ;; #+32768
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_30  ;; 0xf80ff014
        STR      R1,[R0, #+0]
//  186   
//  187   //PORTB_PCR0  = (PORT_PCR_MUX(0x1));
//  188   PORTB_PCR1  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_31  ;; 0x4004a004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  189   PORTB_PCR2  = (PORT_PCR_MUX(0x1)); // LLWU pin wakeup.  LLWU_P5
        LDR      R0,??DataTable2_32  ;; 0x4004a008
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  190   PORTB_PCR3  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_33  ;; 0x4004a00c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  191   PORTB_PCR4  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_34  ;; 0x4004a010
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  192   PORTB_PCR5  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_35  ;; 0x4004a014
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  193   PORTB_PCR6  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_36  ;; 0x4004a018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  194   PORTB_PCR7  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_37  ;; 0x4004a01c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  195   PORTB_PCR8  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_38  ;; 0x4004a020
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  196   PORTB_PCR9  = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_39  ;; 0x4004a024
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  197   PORTB_PCR10 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_40  ;; 0x4004a028
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  198   PORTB_PCR11 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_41  ;; 0x4004a02c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  199   PORTB_PCR12 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_42  ;; 0x4004a030
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  200   PORTB_PCR13 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_43  ;; 0x4004a034
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  201   PORTB_PCR14 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_44  ;; 0x4004a038
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  202   PORTB_PCR15 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_45  ;; 0x4004a03c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  203   PORTB_PCR16 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_46  ;; 0x4004a040
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  204   PORTB_PCR17 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_47  ;; 0x4004a044
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  205   PORTB_PCR18 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable2_48  ;; 0x4004a048
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  206   PORTB_PCR19 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3  ;; 0x4004a04c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  207   PORTB_PCR20 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_1  ;; 0x4004a050
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  208   PORTB_PCR21 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_2  ;; 0x4004a054
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  209   PORTB_PCR22 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_3  ;; 0x4004a058
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  210   PORTB_PCR23 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_4  ;; 0x4004a05c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  211   PORTB_PCR24 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_5  ;; 0x4004a060
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  212   PORTB_PCR25 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_6  ;; 0x4004a064
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  213   PORTB_PCR26 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_7  ;; 0x4004a068
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  214   PORTB_PCR27 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_8  ;; 0x4004a06c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  215   PORTB_PCR28 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_9  ;; 0x4004a070
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  216   PORTB_PCR29 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_10  ;; 0x4004a074
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  217   PORTB_PCR30 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_11  ;; 0x4004a078
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  218   PORTB_PCR31 = (PORT_PCR_MUX(0x0));
        LDR      R0,??DataTable3_12  ;; 0x4004a07c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  219   
//  220   PORTB_PCR2 |= PORT_PCR_PE_MASK;
        LDR      R0,??DataTable2_32  ;; 0x4004a008
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable2_32  ;; 0x4004a008
        STR      R1,[R0, #+0]
//  221   
//  222   FGPIOB_PDDR &= ~(0x4);
        LDR      R0,??DataTable3_13  ;; 0xf80ff054
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        BICS     R0,R0,R1
        LDR      R1,??DataTable3_13  ;; 0xf80ff054
        STR      R0,[R1, #+0]
//  223   
//  224   LLWU_PE2 = LLWU_PE2_WUPE5(2);
        LDR      R0,??DataTable4  ;; 0x4007c001
        MOVS     R1,#+8
        STRB     R1,[R0, #+0]
//  225   
//  226   
//  227 #endif
//  228 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     test_mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x4003d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x4004901c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40049014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x40049020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x40049024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x40049028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x4004902c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x40049034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x40049038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x4004903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     0x40049040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     0x40049044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     0x40049048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     0x4004904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     0x40049050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     0x40049054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     0x40049058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     0x4004905c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     0x40049060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     0x40049064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     0x40049068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     0x4004906c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_26:
        DC32     0x40049070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_27:
        DC32     0x40049074

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_28:
        DC32     0x40049078

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_29:
        DC32     0x4004907c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_30:
        DC32     0xf80ff014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_31:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_32:
        DC32     0x4004a008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_33:
        DC32     0x4004a00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_34:
        DC32     0x4004a010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_35:
        DC32     0x4004a014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_36:
        DC32     0x4004a018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_37:
        DC32     0x4004a01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_38:
        DC32     0x4004a020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_39:
        DC32     0x4004a024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_40:
        DC32     0x4004a028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_41:
        DC32     0x4004a02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_42:
        DC32     0x4004a030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_43:
        DC32     0x4004a034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_44:
        DC32     0x4004a038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_45:
        DC32     0x4004a03c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_46:
        DC32     0x4004a040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_47:
        DC32     0x4004a044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_48:
        DC32     0x4004a048
//  229 
//  230 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  231 void Standby_Test(void)
//  232 {
//  233     uint16 temp16, temp16_2, temp16_3;
//  234     uint32 temp32, i;
//  235     
//  236     while(1)
//  237     {
//  238     
//  239         while (RTC_Alarm == FALSE);
Standby_Test:
??Standby_Test_0:
??Standby_Test_1:
        LDR      R0,??DataTable4_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??Standby_Test_1
//  240         RTC_Alarm = FALSE;
        LDR      R0,??DataTable4_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  241         
//  242         // The ADC registers should be configured at POR or at LLWU recovery
//  243         //  after a VLLS3 recovery.  Therefore, we simply need to start a conversion
//  244         
//  245         // Sample V0
//  246         TriggerADC(CHANNELV0);
        MOVS     R0,#+1
        BL       TriggerADC
//  247         V0_result = ReadADCPoll();
        BL       ReadADCPoll
        LDR      R1,??DataTable4_2
        STRH     R0,[R1, #+0]
//  248         
//  249         temp16 = (V0_result * TPM_1024US_VAL) / ADC_MAX_VAL12;
        LDR      R0,??DataTable4_2
        LDRH     R1,[R0, #+0]
        MOVS     R0,#+255
        LSLS     R0,R0,#+3        ;; #+2040
        MULS     R0,R1,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        BL       __aeabi_idiv
        MOVS     R4,R0
//  250         
//  251         if (temp16 > TPM_1024US_VAL)
        LDR      R0,??DataTable4_3  ;; 0x7f9
        UXTH     R4,R4
        CMP      R4,R0
        BCC      ??Standby_Test_2
//  252             temp16 = TPM_1024US_VAL;
        MOVS     R4,#+255
        LSLS     R4,R4,#+3        ;; #+2040
//  253         if (temp16 < 1)
??Standby_Test_2:
        UXTH     R4,R4
        CMP      R4,#+1
        BCS      ??Standby_Test_3
//  254             temp16 = 1;
        MOVS     R4,#+1
//  255         
//  256         // Sample V1
//  257         TriggerADC(CHANNELV1);
??Standby_Test_3:
        MOVS     R0,#+5
        BL       TriggerADC
//  258         V1_result = ReadADCPoll();
        BL       ReadADCPoll
        LDR      R1,??DataTable4_4
        STRH     R0,[R1, #+0]
//  259         
//  260         temp16_2 = (V1_result * TPM_1024US_VAL) / (Bgap_V + (Bgap_V / 5));
        LDR      R0,??DataTable4_5
        LDRH     R5,[R0, #+0]
        LDR      R0,??DataTable4_5
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        BL       __aeabi_idiv
        ADDS     R1,R5,R0
        LDR      R0,??DataTable4_4
        LDRH     R2,[R0, #+0]
        MOVS     R0,#+255
        LSLS     R0,R0,#+3        ;; #+2040
        MULS     R0,R2,R0
        BL       __aeabi_idiv
//  261         
//  262         if (temp16_2 > TPM_1024US_VAL)
        LDR      R1,??DataTable4_3  ;; 0x7f9
        UXTH     R0,R0
        CMP      R0,R1
        BCC      ??Standby_Test_4
//  263             temp16_2 = TPM_1024US_VAL;
        MOVS     R0,#+255
        LSLS     R0,R0,#+3        ;; #+2040
//  264         if (temp16_2 < 1)
??Standby_Test_4:
        UXTH     R0,R0
        CMP      R0,#+1
        BCS      ??Standby_Test_5
//  265             temp16_2 = 1;
        MOVS     R0,#+1
//  266         
//  267         
//  268         TPM1_SC = 0x00;
??Standby_Test_5:
        LDR      R1,??DataTable5  ;; 0x40039000
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//  269         TPM0_SC = 0x00;
        LDR      R1,??DataTable5_1  ;; 0x40038000
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//  270         // Reset the Count values for the TPM, as it is being used in a normal counter mode.
//  271         //   This only resets the counter!!  It does not reset the pulse width!  
//  272         TPM1_CNT = 0x00;
        LDR      R1,??DataTable4_6  ;; 0x40039004
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//  273         TPM0_CNT = 0x00;
        LDR      R1,??DataTable5_2  ;; 0x40038004
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//  274         
//  275         /////////////////////////////////////////////////////////////////////////////////
//  276         // Write the appropriate pulse widths by writing the CnV registers!!
//  277         /////////////////////////////////////////////////////////////////////////////////
//  278         // The pulse width is determined by the ADC result
//  279         //  For Out0, PW = (ADC result/ ADC max) * 1024us.  
//  280        //   For a TPM configured for Output compare mode when the match clears the channel,
//  281         //  and assuming the TPM is using the slow irc (32.768 kHz), then 
//  282         //  1024us = 33 ticks.  
//  283         
//  284         TPM1_C0V = temp16;
        LDR      R1,??DataTable5_3  ;; 0x40039010
        UXTH     R4,R4
        STR      R4,[R1, #+0]
//  285         
//  286         // The pulse width is determined by the ADC result
//  287         //  For Out1, PW = (ADC result/ 1.2V) * 1024us.  
//  288         //  For a TPM configured for Output compare mode when the match clears the channel,
//  289         //  and assuming the TPM is using the slow irc (32.768 kHz), then 
//  290         //  1024us = 33,555 ticks.
//  291         //
//  292         //  Also, the Bandgap buffer is typically 1.0V.  The bandgap buffer can 
//  293         //  be used as an input to the ADC.  Therefore, to get 1.2V in terms of
//  294         //  ADC units, we must first measure the bandgap voltage and assume this 
//  295         //  is 1.0V.  This value is stored in the variable BGAP_V.  Then, use 
//  296         //  the equation 1.0 + (1.0 / 5) to get 1.2 in terms of ADC units.  
//  297         
//  298         TPM0_C3V = temp16_2;
        LDR      R1,??DataTable5_4  ;; 0x40038028
        UXTH     R0,R0
        STR      R0,[R1, #+0]
//  299      
//  300         // Set the GPIO high as they are manually controlled and cleared in the 
//  301         //   TPM IRQ
//  302         if (temp16 > 1)
        UXTH     R4,R4
        CMP      R4,#+2
        BCC      ??Standby_Test_6
//  303            FGPIOA_PSOR |= 0x1000;
        LDR      R1,??DataTable5_5  ;; 0xf80ff004
        LDR      R1,[R1, #+0]
        MOVS     R2,#+128
        LSLS     R2,R2,#+5        ;; #+4096
        ORRS     R2,R2,R1
        LDR      R1,??DataTable5_5  ;; 0xf80ff004
        STR      R2,[R1, #+0]
//  304   
//  305         if (temp16_2 > 1)
??Standby_Test_6:
        UXTH     R0,R0
        CMP      R0,#+2
        BCC      ??Standby_Test_7
//  306            FGPIOB_PSOR |= 0x40;
        LDR      R0,??DataTable5_6  ;; 0xf80ff044
        LDR      R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_6  ;; 0xf80ff044
        STR      R1,[R0, #+0]
//  307         
//  308         // Configure channel 0 control register for software compare
//  309         TPM0_SC = (uint32_t)((TPM0_SC & (uint32_t)~(uint32_t)(
//  310              TPM_SC_TOF_MASK |
//  311              TPM_SC_TOIE_MASK |
//  312              TPM_SC_CPWMS_MASK |
//  313              TPM_SC_CMOD(0x01) |
//  314              TPM_SC_PS(0x07)
//  315             )) | (uint32_t)(
//  316              TPM_SC_CMOD(0x01)
//  317             ));
??Standby_Test_7:
        LDR      R0,??DataTable5_1  ;; 0x40038000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+239
        BICS     R0,R0,R1
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_1  ;; 0x40038000
        STR      R1,[R0, #+0]
//  318         
//  319         TPM1_SC = (uint32_t)((TPM0_SC & (uint32_t)~(uint32_t)(
//  320              TPM_SC_TOF_MASK |
//  321              TPM_SC_TOIE_MASK |
//  322              TPM_SC_CPWMS_MASK |
//  323              TPM_SC_CMOD(0x01) |
//  324              TPM_SC_PS(0x07)
//  325             )) | (uint32_t)(
//  326              TPM_SC_CMOD(0x01)
//  327             ));   
        LDR      R0,??DataTable5_1  ;; 0x40038000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+239
        BICS     R0,R0,R1
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5  ;; 0x40039000
        STR      R1,[R0, #+0]
//  328         
//  329         // Wait for the TPM to finish before returning to low power mode. 
//  330         while ((TPM0_flag == FALSE) || (TPM1_flag == FALSE));
??Standby_Test_8:
        LDR      R0,??DataTable5_7
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??Standby_Test_8
        LDR      R0,??DataTable5_8
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??Standby_Test_8
//  331         TPM0_flag = FALSE;
        LDR      R0,??DataTable5_7
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  332         TPM1_flag = FALSE;
        LDR      R0,??DataTable5_8
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  333         
//  334         // Clear pending interrupts before entering low power modes!
//  335         
//  336         // Clear module specific. 
//  337         if((TPM1_C0SC & TPM_CnSC_CHF_MASK) == TPM_CnSC_CHF_MASK)
        LDR      R0,??DataTable5_9  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL      ??Standby_Test_9
//  338         {
//  339             TPM1_C0SC |= TPM_CnSC_CHF_MASK;
        LDR      R0,??DataTable5_9  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_9  ;; 0x4003900c
        STR      R1,[R0, #+0]
//  340         }
//  341         if((TPM0_C3SC & TPM_CnSC_CHF_MASK) == TPM_CnSC_CHF_MASK)
??Standby_Test_9:
        LDR      R0,??DataTable5_10  ;; 0x40038024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL      ??Standby_Test_10
//  342         {
//  343             TPM0_C3SC |= TPM_CnSC_CHF_MASK;
        LDR      R0,??DataTable5_10  ;; 0x40038024
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_10  ;; 0x40038024
        STR      R1,[R0, #+0]
//  344         }
//  345         
//  346         // Clear NVIC pending interrupts!
//  347         NVIC_ICPR = 0xFFFFFFFF;
??Standby_Test_10:
        LDR      R0,??DataTable5_11  ;; 0xe000e280
        MOVS     R1,#+0
        MVNS     R1,R1            ;; #-1
        STR      R1,[R0, #+0]
//  348         
//  349         // Enter VLLS3 here
//  350         enter_vlls3();
        BL       enter_vlls3
        B        ??Standby_Test_0
//  351         
//  352         /*SMC_PMCTRL = (SMC_PMCTRL & (SMC_PMCTRL_RUNM_MASK |
//  353                                 SMC_PMCTRL_STOPM(0x4)));
//  354         
//  355         SCB_SCR |= SCB_SCR_SLEEPDEEP_MASK;
//  356         
//  357 #ifndef KEIL
//  358 	asm("WFI");
//  359 #else
//  360 	__wfi();
//  361 #endif    */    
//  362     
//  363     }
//  364 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x4004a04c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x4004a050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x4004a054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x4004a058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x4004a05c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x4004a060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x4004a064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x4004a068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x4004a06c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x4004a070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x4004a074

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x4004a078

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     0x4004a07c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0xf80ff054
//  365 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  366 void Alarm_Test(void)
//  367 {
//  368     SIM_COPC = 0x00;                             // Disable Watchdog
Alarm_Test:
        LDR      R0,??DataTable5_12  ;; 0x40048100
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  369     fei_fbe(32768, LOW_POWER, CRYSTAL);          // Move CLK from FEI to FBE mode for TPM0
        MOVS     R2,#+1
        MOVS     R1,#+0
        MOVS     R0,#+128
        LSLS     R0,R0,#+8        ;; #+32768
        BL       fei_fbe
//  370   
//  371     SIM_SCGC5|=SIM_SCGC5_PORTA_MASK;             // Enable PortA clock
        LDR      R0,??DataTable5_13  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_13  ;; 0x40048038
        STR      R1,[R0, #+0]
//  372     SIM_SCGC5|=SIM_SCGC5_PORTB_MASK;             // Enable PortB clock
        LDR      R0,??DataTable5_13  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+3        ;; #+1024
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_13  ;; 0x40048038
        STR      R1,[R0, #+0]
//  373     SIM_SCGC6|=SIM_SCGC6_TPM0_MASK;              // Enable TPM0 module  
        LDR      R0,??DataTable5_14  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+17       ;; #+16777216
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_14  ;; 0x4004803c
        STR      R1,[R0, #+0]
//  374     SIM_SCGC6|=SIM_SCGC6_TPM1_MASK;              // Enable TPM1 module  
        LDR      R0,??DataTable5_14  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+18       ;; #+33554432
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_14  ;; 0x4004803c
        STR      R1,[R0, #+0]
//  375     SIM_SCGC5|=SIM_SCGC5_LPTMR_MASK;             // Enable LPTMR clock 
        LDR      R0,??DataTable5_13  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_13  ;; 0x40048038
        STR      R1,[R0, #+0]
//  376     PORTA_PCR12=PORT_PCR_MUX(1);                 // Set Pin A12 to GPIO function OUT0
        LDR      R0,??DataTable5_15  ;; 0x40049030
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  377     GPIOA_PDDR|=(1<<12);                         // Make the GPIO A12 an output to use with LPTMR for 1Hz Out0
        LDR      R0,??DataTable5_16  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_16  ;; 0x400ff014
        STR      R1,[R0, #+0]
//  378 
//  379     SIM_SOPT2=TPM0CLK_MCGFLLCLK;                 // TPM0 Input Clock is MCGFLLCLK
        LDR      R0,??DataTable5_17  ;; 0x40048004
        MOVS     R1,#+128
        LSLS     R1,R1,#+17       ;; #+16777216
        STR      R1,[R0, #+0]
//  380  
//  381     //Out1 200KHz Wave
//  382     PORTB_PCR6=PORT_PCR_MUX(2);                  // Set Pin B6 to TPM0CH3 function OUT1
        LDR      R0,??DataTable5_18  ;; 0x4004a018
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        STR      R1,[R0, #+0]
//  383     TPM0_SC=TPM0_ENABLE;                         // busclk/1=47.68ns per count; TPM on=0x08, off=0x00
        LDR      R0,??DataTable5_1  ;; 0x40038000
        MOVS     R1,#+8
        STR      R1,[R0, #+0]
//  384     TPM0_C3SC=TPM0_EDGE_ALIGN_PWM;               // edge-aligned PWM
        LDR      R0,??DataTable5_10  ;; 0x40038024
        MOVS     R1,#+40
        STR      R1,[R0, #+0]
//  385     TPM0_MOD=TPM0_MODULO-1;                      // Frequency is 200kHz 
        LDR      R0,??DataTable5_19  ;; 0x40038008
        MOVS     R1,#+104
        STR      R1,[R0, #+0]
//  386     TPM0_C3V=TPM0_CHANNEL>>1;                    // half of the above to produce 50% duty cycle PWM 
        LDR      R0,??DataTable5_4  ;; 0x40038028
        MOVS     R1,#+52
        STR      R1,[R0, #+0]
//  387 
//  388 
//  389     //Out0 1Hz Square Wave
//  390     lptmr_init(COUNT, ERCLK32K);                 // count value 16384, input clk ERCLK32K, 16384/32768=0.5Hz timout, 
        MOVS     R1,#+2
        MOVS     R0,#+128
        LSLS     R0,R0,#+7        ;; #+16384
        BL       lptmr_init
//  391 
//  392     while(1);                                    // loop forever
??Alarm_Test_0:
        B        ??Alarm_Test_0
//  393 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x4007c001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     RTC_Alarm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     V0_result

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x7f9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     V1_result

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     Bgap_V

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x40039004
//  394 
//  395 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  396 // Drive Test
//  397 //
//  398 // Description:
//  399 //  This test samples both inputs (V0 and V1) using the CMP module with the DAC
//  400 //  providing a 50% VDD reference.  The outputs (OUT0 and OUT1) simply follow their
//  401 //  respective inputs.
//  402 //  
//  403 //  The target power consumption for this test is ~4uA average.  Currently we
//  404 //  are seeing 261uA in LLS
//  405 //  The breakdown
//  406 //  according to the datasheet is as follows:
//  407 //
//  408 //  RTC adder: 0.357uA
//  409 //  LPTMR adder:  ???
//  410 //
//  411 // Implementing VLPR mode using the FIRC, we are seeing 222uA.
//  412 // 
//  413 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  414 void Drive_Test(void)
//  415 {
Drive_Test:
        PUSH     {R7,LR}
//  416     uint32 temp32;
//  417     uint16 i;
//  418     uint8 temp8;
//  419     
//  420     // Must use LLS mode in this case. 
//  421     
//  422     // Configure CMP0
//  423     
//  424     // CMP0 should be configured to trigger the TPM.  We also want to take 
//  425     //  advantage of the CMP pulse capabilities to reduce current consumption.
//  426     //  
//  427     // CMP triggering is a 2-stage process that uses the LPTMR to first 
//  428     //  trigger a wake-up event to the CMP and DAC.  Then a second trigger is 
//  429     //  asserted which performs the CMP capture event.  The first trigger is
//  430     //  asserted when the TCF flage of the LPTMR is set, while the second 
//  431     //  trigger is asserted at 1/2 the Prescaler output period (if the LPTMR 
//  432     //  prescaler is enabled) or 1/2 the prescaler clock period (if the LPTMR
//  433     //  prescaler is by-passed).  
//  434     
//  435 #ifdef DEBUG_TOWER
//  436     // setup outputs PTB8 - PTB9
//  437     PORTB_PCR8 = (PORT_PCR_MUX(0x1));
//  438     
//  439     FGPIOB_PDDR |= 0x100;
//  440     FGPIOB_PSOR |= 0x100;
//  441     
//  442     PORTB_PCR9  = (PORT_PCR_MUX(0x1));
//  443     
//  444     FGPIOB_PDDR |= 0x200;
//  445     FGPIOB_PCOR |= 0x200;
//  446     
//  447     // Setup inputs PTB5 - PTBA12
//  448     PORTB_PCR5 = PORT_PCR_MUX(0);
//  449     PORTA_PCR12 = PORT_PCR_MUX(0);
//  450 #else
//  451     // setup outputs PTA12 - PTB6
//  452     PORTA_PCR12 = (PORT_PCR_MUX(0x1));
        LDR      R0,??DataTable5_15  ;; 0x40049030
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  453     
//  454     GPIOA_PDDR |= 0x1000;
        LDR      R0,??DataTable5_16  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_16  ;; 0x400ff014
        STR      R1,[R0, #+0]
//  455     GPIOA_PSOR |= 0x1000;
        LDR      R0,??DataTable5_20  ;; 0x400ff004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_20  ;; 0x400ff004
        STR      R1,[R0, #+0]
//  456     
//  457     PORTB_PCR6  = (PORT_PCR_MUX(0x1));
        LDR      R0,??DataTable5_18  ;; 0x4004a018
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  458     
//  459     FGPIOB_PDDR |= 0x40;
        LDR      R0,??DataTable5_21  ;; 0xf80ff054
        LDR      R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_21  ;; 0xf80ff054
        STR      R1,[R0, #+0]
//  460     FGPIOB_PCOR |= 0x40;
        LDR      R0,??DataTable5_22  ;; 0xf80ff048
        LDR      R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_22  ;; 0xf80ff048
        STR      R1,[R0, #+0]
//  461     
//  462      // Setup inputs PTB5 - PTB1
//  463     PORTB_PCR5 = PORT_PCR_MUX(0);
        LDR      R0,??DataTable5_23  ;; 0x4004a014
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  464     PORTB_PCR1 = PORT_PCR_MUX(0);
        LDR      R0,??DataTable5_24  ;; 0x4004a004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  465 #endif
//  466     
//  467     
//  468     /*
//  469     // Set CMP Filter Count and Hysteresis control to 0.  
//  470     //  Filter should be disabled to allow for low lag time.   
//  471     CMP0_CR0 = 0x00;
//  472     
//  473     // Set CMP0_CR1 to a known state
//  474     CMP0_CR1 = 0x00;
//  475     
//  476     // Now configure CMP0_CR1 (but do not enable it!)
//  477     //CMP0_CR1 |= (CMP_CR1_PMODE_MASK | CMP_CR1_TRIGM_MASK);
//  478     //CMP0_CR1 |= (CMP_CR1_TRIGM_MASK);   // Comment this line out if using the LPTMR interrupt method
//  479     CMP0_CR1 &= ~(CMP_CR1_PMODE_MASK);
//  480     //CMP0_CR1 |= CMP_CR1_TRIGM_MASK;  // Set if using triggered mode!
//  481     //CMP0_SCR |= (CMP_SCR_IER_MASK | CMP_SCR_IEF_MASK);  // Set these if using triggered mode!
//  482     
//  483     // Configure the 6-bit DAC
//  484     //  We want to use the Vin1in supply and to set the output voltage to 1/2 Vin
//  485     //  DACout = (Vin/64) * (VOSEL[5:0] + 1), therefore 31 will produce DACout = 1/2 * Vin
//  486     CMP0_DACCR = (CMP_DACCR_DACEN_MASK
//  487                   | CMP_DACCR_VOSEL(31));
//  488     
//  489     // Select the appropriate Mux control
//  490     //  
//  491     //  We want to know when V0 > 50% Vcc, therefore, set the inverted input to
//  492     //  be the DAC output.  Select the non-inverted input to be V0. 
//  493     
//  494     CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V0) | CMP_MUXCR_MSEL(CMP_DACIN));
//  495     
//  496     // Start with looking for the rising edge.  
//  497     //CMP0_SCR = (CMP_SCR_IER_MASK);
//  498     
//  499     CMP0_flag = FALSE; 
//  500     
//  501     CMP0_CR1 |= CMP_CR1_EN_MASK;
//  502     */
//  503     // Setup the LPTMR to trigger a sample every 2 ms.  There will be a 10 ms pulse
//  504     //  every 5s.  We want to be sure that we catch the pulse. 
//  505     
//  506     // Also, the timer increments need to be selected appropriately for the CMP
//  507     //  and DAC to settle.  According to the datasheet, this settling requires
//  508     //  40us.  One period of a 32.768 kHz wave is approximately 30 us.  Therefore,
//  509     //  the prescaler will need to be used and 1/2 of the prescaler output will
//  510     //  will need to be >40us. In other words, the prescaler output must be 
//  511     //  4 times the input clock.
//  512   
//  513     // However, if we use the LPO, we can still achieve our goal using a 1 kHz
//  514     //  clock.    
//  515        
//  516     // Disable the LPTMR first.  For this app, the default control values are acceptable. 
//  517     LPTMR0_CSR = 0x00;
        LDR      R0,??DataTable5_25  ;; 0x40040000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  518     
//  519     // Set the PSR to a known state
//  520     LPTMR0_PSR = 0x00;
        LDR      R0,??DataTable5_26  ;; 0x40040004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  521     
//  522     // Setup the PSR to use the prescaler, and select the appropriate clock. 
//  523     LPTMR0_PSR |= (LPTMR_PSR_PCS(1) | LPTMR_PSR_PBYP_MASK);  // If using the LPO.  
        LDR      R0,??DataTable5_26  ;; 0x40040004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+5
        ORRS     R1,R1,R0
        LDR      R0,??DataTable5_26  ;; 0x40040004
        STR      R1,[R0, #+0]
//  524     // LPTMR0_PSR |= (LPTMR_PSR_PCS(2)
//  525     //                | LPTMR_PSR_PRESCALE(1));
//  526     
//  527     
//  528     // Set the Compare register for a 9 ms interval. 
//  529     LPTMR0_CMR = LPTMR_CMR_COMPARE(9);
        LDR      R0,??DataTable5_27  ;; 0x40040008
        MOVS     R1,#+9
        STR      R1,[R0, #+0]
//  530     // LPTMR0_CMR = 17;  // If using the 32.768 kHz ER32KCLK
//  531     
//  532     LPTMR0_CSR = LPTMR_CSR_TCF_MASK;
        LDR      R0,??DataTable5_25  ;; 0x40040000
        MOVS     R1,#+128
        STR      R1,[R0, #+0]
//  533     
//  534     // Configure the LLWU to wakeup from the LPTMR interrupt 
//  535     LLWU_ME = LLWU_ME_WUME0_MASK ;     // Use this setting if using the LPTMR interrupt method
        LDR      R0,??DataTable5_28  ;; 0x4007c002
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  536     //LLWU_ME = LLWU_ME_WUME1_MASK ;     // Use this setting if using the CMP0 interrupt method
//  537     
//  538     // Enable LLWU IRQ
//  539     enable_irq(7);
        MOVS     R0,#+7
        BL       enable_irq
//  540     // Enable LPTMR IRQ (IRQ no. 28)
//  541     //enable_irq(28);   
//  542     // Set LPTMR IRQ to lower priority (higher number)
//  543     //set_irq_priority(28, 1);
//  544     // Use this interrupt if using the LPTMR interrupt method. 
//  545     // Enable CMP0 interrupt
//  546     //enable_irq(16);
//  547     
//  548     // Must disable CMP BEFORE entering LLS;  UNLESS using triggered mode!
//  549     //CMP0_CR1 &= ~CMP_CR1_EN_MASK;    // Must comment this out if using the CMP method
//  550     //CMP0_DACCR &= ~CMP_DACCR_DACEN_MASK;
//  551         
//  552         
//  553     
//  554     //LPTMR0_CSR |= (LPTMR_CSR_TEN_MASK);
//  555   
//  556     /*while(1)
//  557     {
//  558         enter_lls();
//  559     }*/
//  560     //PORTA_PCR15 = PORT_PCR_MUX(3);
//  561     //SIM_SOPT2 = 0x01000050;
//  562     
//  563     /*SMC_PMCTRL |= (SMC_PMCTRL_STOPM(0x3));
//  564         
//  565     SCB_SCR |= SCB_SCR_SLEEPDEEP_MASK;
//  566     
//  567     
//  568         
//  569         // Clear any pending interrupts before entering LLS!  Otherwise,
//  570         //  you may end up with a STOP ABORT condition.  
//  571         
//  572         // Clear module specific flags.  
//  573         //if((LPTMR0_CSR & LPTMR_CSR_TCF_MASK) == LPTMR_CSR_TCF_MASK)
//  574        // {
//  575             LPTMR0_CSR |=  LPTMR_CSR_TCF_MASK;   // write 1 to TCF to clear the LPT timer compare flag
//  576             //LPTMR0_CSR |= (LPTMR_CSR_TEN_MASK);
//  577             //wait for write to complete to  before returning 
//  578             temp32 = LPTMR0_CSR;
//  579         //}
//  580             
//  581             CMP0_SCR |= (CMP_SCR_CFR_MASK | CMP_SCR_CFF_MASK);
//  582         // Clear pending interrupts in the NVIC by writing a 1!
//  583         NVIC_ICPR = 0xFFFFFFFF;
//  584       */  
//  585     
//  586     FGPIOA_PDDR &= ~0x80;
        LDR      R0,??DataTable6  ;; 0xf80ff014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        BICS     R0,R0,R1
        LDR      R1,??DataTable6  ;; 0xf80ff014
        STR      R0,[R1, #+0]
//  587     FGPIOB_PDDR &= ~0x01;
        LDR      R0,??DataTable5_21  ;; 0xf80ff054
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        BICS     R0,R0,R1
        LDR      R1,??DataTable5_21  ;; 0xf80ff054
        STR      R0,[R1, #+0]
//  588     
//  589     PORTA_PCR7 = PORT_PCR_MUX(1);
        LDR      R0,??DataTable6_1  ;; 0x4004901c
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  590     PORTB_PCR0 = PORT_PCR_MUX(1);
        LDR      R0,??DataTable6_2  ;; 0x4004a000
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        STR      R1,[R0, #+0]
//  591     
//  592     //LLWU_PE2 |= LLWU_PE2_WUPE4(2);
//  593     //LLWU_PE1 |= LLWU_PE1_WUPE3(2);
//  594     
//  595    /* // ** Replacing with the BME equivalent ** //
//  596     SMC_PMCTRL |= (SMC_PMCTRL_STOPM(0x3));
//  597     
//  598     //SCB_SCR = (SCB_SCR_SLEEPDEEP_MASK | SCB_SCR_SLEEPONEXIT_MASK);
//  599     SCB_SCR = (SCB_SCR_SLEEPDEEP_MASK);
//  600         
//  601     //FGPIOA_PCOR |= 0x8000;
//  602     while(1)
//  603     {
//  604 #ifndef KEIL
//  605         asm("WFI");
//  606 #else
//  607 	__wfi();
//  608 #endif    
//  609     }*/
//  610         // Call Drive Test infinite loop
//  611         Run_Drive_Test_Loop();
        BL       Run_Drive_Test_Loop
//  612     
//  613 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x40038004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x40039010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x40038028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0xf80ff004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0xf80ff044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     TPM0_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     TPM1_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x4003900c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x40038024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0xe000e280

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     0x40048100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DC32     0x400ff014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_17:
        DC32     0x40048004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_18:
        DC32     0x4004a018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_19:
        DC32     0x40038008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_20:
        DC32     0x400ff004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_21:
        DC32     0xf80ff054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_22:
        DC32     0xf80ff048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_23:
        DC32     0x4004a014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_24:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_25:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_26:
        DC32     0x40040004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_27:
        DC32     0x40040008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_28:
        DC32     0x4007c002
//  614 

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  615 void Run_Drive_Test_Loop(void)
//  616 {
//  617     uint32 temp32;
//  618     
//  619     // Turn off the Flash!!
//  620     SIM_FCFG1 |= SIM_FCFG1_FLASHDIS_MASK;
Run_Drive_Test_Loop:
        LDR      R0,??DataTable157  ;; 0x4004804c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable157  ;; 0x4004804c
        STR      R1,[R0, #+0]
//  621     //SIM_SCGC6 &= ~SIM_SCGC6_FTF_MASK;
//  622     
//  623     // Finally, enable the LPTMR
//  624     LPTMR0_CSR |= (LPTMR_CSR_TIE_MASK | LPTMR_CSR_TEN_MASK);  // Use this setting if using the LPTMR interrupt method
        LDR      R0,??DataTable157_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+65
        ORRS     R1,R1,R0
        LDR      R0,??DataTable157_1  ;; 0x40040000
        STR      R1,[R0, #+0]
//  625     
//  626         
//  627     //SMC_PMCTRL = SMC_PMCTRL_RUNM(2);
//  628     
//  629     
//  630    
//  631         /*if((RTC_SR & RTC_SR_TAF_MASK) == 0x04)
//  632         {
//  633             RTC_TAR = RTC_TSR + RTC_refresh_rate;
//  634         }*/	
//  635         
//  636         // Enter LLS mode. 
//  637         //enter_lls();
//  638         
//  639             
//  640             // ** Replacing with the BME equivalent ** //
//  641         SMC_PMCTRL |= (SMC_PMCTRL_STOPM(0x3));
        LDR      R0,??DataTable157_2  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+3
        ORRS     R1,R1,R0
        LDR      R0,??DataTable157_2  ;; 0x4007e001
        STRB     R1,[R0, #+0]
//  642             //BME_BFI_B(&SMC_PMCTRL, 3<<SMC_PMCTRL_STOPM_SHIFT, SMC_PMCTRL_STOPM_SHIFT, 3);
//  643             
//  644         //temp32 = SMC_PMCTRL;
//  645         
//  646         //SCB_SCR = (SCB_SCR_SLEEPDEEP_MASK | SCB_SCR_SLEEPONEXIT_MASK);
//  647         SCB_SCR = (SCB_SCR_SLEEPDEEP_MASK);
        LDR      R0,??DataTable157_3  ;; 0xe000ed10
        MOVS     R1,#+4
        STR      R1,[R0, #+0]
//  648         
//  649         //FGPIOA_PCOR |= 0x8000;
//  650          while(1)
//  651         {
//  652 #ifndef KEIL
//  653 	asm("WFI");
??Run_Drive_Test_Loop_0:
        WFI
        B        ??Run_Drive_Test_Loop_0
//  654 #else
//  655 	__wfi();
//  656 #endif
//  657         
//  658         
//  659     }
//  660 }
//  661 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  662 void RF_Test(void)
//  663 {
//  664     int i;
//  665 
//  666     // Set RTC alarm to wake up every 5 seconds
//  667     RTC_refresh_rate = 4; // Set to equal desired rate - 1
RF_Test:
        LDR      R0,??DataTable6_3
        MOVS     R1,#+4
        STRH     R1,[R0, #+0]
//  668     // Enter BLPI mode using the fast IRC    
//  669     i = fei_fbi(4000000, 1);
        MOVS     R1,#+1
        LDR      R0,??DataTable6_4  ;; 0x3d0900
        BL       fei_fbi
        MOVS     R4,R0
//  670     // Set LP bit to disable the FLL and enter BLPI
//  671     MCG_C2 |= MCG_C2_LP_MASK;
        LDR      R0,??DataTable6_5  ;; 0x40064001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable6_5  ;; 0x40064001
        STRB     R1,[R0, #+0]
//  672     // Set EREFS0 to allow the OSCERCLK to be enabled
//  673     MCG_C2 |= MCG_C2_EREFS0_MASK;
        LDR      R0,??DataTable6_5  ;; 0x40064001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable6_5  ;; 0x40064001
        STRB     R1,[R0, #+0]
//  674     // Now enable OSCERCLK
//  675     OSC0_CR |= OSC_CR_ERCLKEN_MASK;
        LDR      R0,??DataTable6_6  ;; 0x40065000
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable6_6  ;; 0x40065000
        STRB     R1,[R0, #+0]
//  676     
//  677     // enable the TPM1 Interrupt 
//  678     enable_irq(18);
        MOVS     R0,#+18
        BL       enable_irq
//  679     
//  680     // Clear alarm flag and re-arm the RTC Alarm by adding 5 seconds to the present time
//  681     RTC_TAR = (RTC_TSR + 5);
        LDR      R0,??DataTable6_7  ;; 0x4003d000
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR      R1,??DataTable6_8  ;; 0x4003d008
        STR      R0,[R1, #+0]
//  682     
//  683     // Set up LLWU from the RTC Alarm
//  684     LLWU_ME = LLWU_F3_MWUF5_MASK;
        LDR      R0,??DataTable6_9  ;; 0x4007c002
        MOVS     R1,#+32
        STRB     R1,[R0, #+0]
//  685     
//  686     // Setup inputs
//  687     PORTB_PCR5 = PORT_PCR_MUX(0);  // V0
        LDR      R0,??DataTable6_10  ;; 0x4004a014
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  688     PORTB_PCR1 = PORT_PCR_MUX(0); //  V1
        LDR      R0,??DataTable6_11  ;; 0x4004a004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  689     
//  690     // setup outputs
//  691     PORTA_PCR12 = (PORT_PCR_MUX(0x2)); // TPM1_CH0 - Out0
        LDR      R0,??DataTable6_12  ;; 0x40049030
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        STR      R1,[R0, #+0]
//  692     PORTB_PCR6  = (PORT_PCR_MUX(0x2)); // TPM0_CH3 - Out1
        LDR      R0,??DataTable6_13  ;; 0x4004a018
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        STR      R1,[R0, #+0]
//  693   
//  694     // Enable the CMP clock gating
//  695     SIM_SCGC4 |= SIM_SCGC4_CMP_MASK;
        LDR      R0,??DataTable6_14  ;; 0x40048034
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+12       ;; #+524288
        ORRS     R1,R1,R0
        LDR      R0,??DataTable6_14  ;; 0x40048034
        STR      R1,[R0, #+0]
//  696     // Enable the TPM0 and TPM1 clock gating
//  697     SIM_SCGC6 |= SIM_SCGC6_TPM0_MASK | SIM_SCGC6_TPM1_MASK;
        LDR      R0,??DataTable6_15  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        LSLS     R1,R1,#+18       ;; #+50331648
        ORRS     R1,R1,R0
        LDR      R0,??DataTable6_15  ;; 0x4004803c
        STR      R1,[R0, #+0]
//  698     
//  699     // Set CMP Filter Count and Hysteresis control to 0.  
//  700     //  Filter should be disabled to allow for low lag time.   
//  701     CMP0_CR0 = 0x00;
        LDR      R0,??DataTable6_16  ;; 0x40073000
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  702     
//  703     // Set CMP0_CR1 to a known state
//  704     CMP0_CR1 = 0x00;
        LDR      R0,??DataTable7  ;; 0x40073001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  705     
//  706     // Select the appropriate Mux control
//  707     //  
//  708     //  We want to know when V0 >= V1, therefore, set the inverted input to
//  709     //  be V1.  Select the non-inverted input to be V0. 
//  710     
//  711     CMP0_MUXCR = 0x00;
        LDR      R0,??DataTable6_17  ;; 0x40073005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  712     CMP0_MUXCR |= (CMP_MUXCR_PSEL(1) | CMP_MUXCR_MSEL(3));
        LDR      R0,??DataTable6_17  ;; 0x40073005
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+11
        ORRS     R1,R1,R0
        LDR      R0,??DataTable6_17  ;; 0x40073005
        STRB     R1,[R0, #+0]
//  713     
//  714     // select OSCERCLK as the TPM clock source    
//  715     SIM_SOPT2 |= SIM_SOPT2_TPMSRC(2); // assumes default reset state to begin with
        LDR      R0,??DataTable6_18  ;; 0x40048004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+18       ;; #+33554432
        ORRS     R1,R1,R0
        LDR      R0,??DataTable6_18  ;; 0x40048004
        STR      R1,[R0, #+0]
//  716     
//  717     // Move to VLPR mode
//  718     if ((SMC_PMSTAT & SMC_PMSTAT_PMSTAT_MASK) != 4)
        LDR      R0,??DataTable7_1  ;; 0x4007e003
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSLS     R0,R0,#+25       ;; ZeroExtS R0,R0,#+25,#+25
        LSRS     R0,R0,#+25
        CMP      R0,#+4
        BEQ      ??RF_Test_0
//  719     {
//  720         SMC_PMCTRL = SMC_PMCTRL_RUNM(2);
        LDR      R0,??DataTable7_2  ;; 0x4007e001
        MOVS     R1,#+64
        STRB     R1,[R0, #+0]
        B        ??RF_Test_0
//  721     }  
//  722     
//  723     // Now enter the main loop
//  724     while (1)
//  725     {     
//  726       // enable the comparator
//  727       CMP0_CR1 |= CMP_CR1_EN_MASK;
//  728       // Enable OSCERCLK
//  729       OSC0_CR |= OSC_CR_ERCLKEN_MASK;
//  730       
//  731       // configure TPM1 but do not enable just yet
//  732       TPM1_SC = 0x0;          // Make sure clock is disabled 
//  733       TPM1_CNT = 0x00000000;  // Clear counter.
//  734       TPM1_CONF = 0xC0;       // Allow counters to run in debug
//  735       TPM1_C0SC = 0x000000E8; // Edge aligned PWM, output compare, enable Channel interrupt 
//  736       TPM1_C0V = 0x00000146;  // Set pulse width, 327 cycles of 32.768kHz  = 9.979ms
//  737       TPM1_MOD = 0x000003F0;  // Set MOD to be greater than Value register   
//  738                                                   
//  739       // Configure TPM0 but do not enable just yet
//  740       TPM0_SC = 0x0;          // Make sure clock is disabled 
//  741       TPM0_CNT = 0x00000000;  // Clear counter.
//  742       TPM0_CONF = 0xC0;       // Allow counters to run in debug
//  743       TPM0_C3SC = 0x000000A8; // Edge aligned PWM, output compare
//  744       TPM0_C3V = 0x00000146;  // Set pulse width, 327 cycles of 32.768kHz  = 9.979ms
//  745       TPM0_MOD = 0x000003F0;  // Set MOD to be greater than Value register
//  746       
//  747       // Wait additional delay to ensure comparator is stable
//  748       for (i=0 ; i <17; i++);
//  749       
//  750       // Check CMP result to determine if Out1 should be toggled
//  751       if (CMP0_SCR & CMP_SCR_COUT_MASK)
//  752       {
//  753         // trigger both TPMs for Out0 and Out1 
//  754         TPM0_SC = 0x00000008;  // enable TPM clock
//  755         TPM1_SC = 0x00000088;  // enable TPM clock and clear TOF
//  756       }
//  757       else
//  758       {
//  759         // Trigger just the TPM1 for Out0
//  760         TPM1_SC = 0x00000088;  // enable TPM clock and clear TOF
??RF_Test_1:
        LDR      R0,??DataTable9  ;; 0x40039000
        MOVS     R1,#+136
        STR      R1,[R0, #+0]
//  761       }
//  762       // Turn off CMP to save current
//  763       CMP0_CR1 &= ~CMP_CR1_EN_MASK;
??RF_Test_2:
        LDR      R0,??DataTable7  ;; 0x40073001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+254
        ANDS     R1,R1,R0
        LDR      R0,??DataTable7  ;; 0x40073001
        STRB     R1,[R0, #+0]
//  764       
//  765       // enter vlps while pulse is active to reduce Idd, TPM CHF interrupt will exit VLPS      
//  766       SMC_PMCTRL &= ~SMC_PMCTRL_STOPM_MASK; 
        LDR      R0,??DataTable7_2  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+248
        ANDS     R1,R1,R0
        LDR      R0,??DataTable7_2  ;; 0x4007e001
        STRB     R1,[R0, #+0]
//  767       SMC_PMCTRL |=  SMC_PMCTRL_STOPM(0x2); 
        LDR      R0,??DataTable7_2  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable7_2  ;; 0x4007e001
        STRB     R1,[R0, #+0]
//  768       // wait for write to complete to SMC before stopping core 
//  769       i = SMC_PMCTRL;
        LDR      R0,??DataTable7_2  ;; 0x4007e001
        LDRB     R4,[R0, #+0]
        UXTB     R4,R4
//  770   
//  771       SCB_SCR |= SCB_SCR_SLEEPDEEP_MASK;
        LDR      R0,??DataTable8  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8  ;; 0xe000ed10
        STR      R1,[R0, #+0]
//  772 #ifdef CMSIS
//  773       //  Set the SLEEPDEEP bit to enable deep sleep mode (STOP)       
//  774       __wfi();
//  775 #else      
//  776       asm("WFI");
        WFI
//  777 #endif
//  778   
//  779       // Turn off unused clock sources to save current once TPM pulse ends
//  780       OSC0_CR &= ~OSC_CR_ERCLKEN_MASK;
        LDR      R0,??DataTable6_6  ;; 0x40065000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25       ;; ZeroExtS R0,R0,#+25,#+25
        LSRS     R0,R0,#+25
        LDR      R1,??DataTable6_6  ;; 0x40065000
        STRB     R0,[R1, #+0]
//  781     
//  782       // now that all tasks are complete enter LLS for additional current savings
//  783       SMC_PMCTRL &= ~SMC_PMCTRL_STOPM_MASK; 
        LDR      R0,??DataTable7_2  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+248
        ANDS     R1,R1,R0
        LDR      R0,??DataTable7_2  ;; 0x4007e001
        STRB     R1,[R0, #+0]
//  784       SMC_PMCTRL |=  SMC_PMCTRL_STOPM(0x3); 
        LDR      R0,??DataTable7_2  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+3
        ORRS     R1,R1,R0
        LDR      R0,??DataTable7_2  ;; 0x4007e001
        STRB     R1,[R0, #+0]
//  785       // wait for write to complete to SMC before stopping core   
//  786       i = SMC_PMCTRL;
        LDR      R0,??DataTable7_2  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        MOVS     R4,R0
//  787       // Now execute the stop instruction to go into LLS 
//  788       SCB_SCR |= SCB_SCR_SLEEPDEEP_MASK;
        LDR      R0,??DataTable8  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8  ;; 0xe000ed10
        STR      R1,[R0, #+0]
//  789 #ifdef CMSIS
//  790       // Set the SLEEPDEEP bit to enable deep sleep mode (STOP)       
//  791       __wfi();
//  792 #else      
//  793       asm("WFI");
        WFI
??RF_Test_0:
        LDR      R0,??DataTable7  ;; 0x40073001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable7  ;; 0x40073001
        STRB     R1,[R0, #+0]
        LDR      R0,??DataTable6_6  ;; 0x40065000
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable6_6  ;; 0x40065000
        STRB     R1,[R0, #+0]
        LDR      R0,??DataTable9  ;; 0x40039000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_1  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_2  ;; 0x40039084
        MOVS     R1,#+192
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_3  ;; 0x4003900c
        MOVS     R1,#+232
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_4  ;; 0x40039010
        MOVS     R1,#+163
        LSLS     R1,R1,#+1        ;; #+326
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_5  ;; 0x40039008
        MOVS     R1,#+252
        LSLS     R1,R1,#+2        ;; #+1008
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_6  ;; 0x40038000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_7  ;; 0x40038004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_8  ;; 0x40038084
        MOVS     R1,#+192
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_9  ;; 0x40038024
        MOVS     R1,#+168
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_10  ;; 0x40038028
        MOVS     R1,#+163
        LSLS     R1,R1,#+1        ;; #+326
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_11  ;; 0x40038008
        MOVS     R1,#+252
        LSLS     R1,R1,#+2        ;; #+1008
        STR      R1,[R0, #+0]
        MOVS     R4,#+0
        B        ??RF_Test_3
??RF_Test_4:
        ADDS     R4,R4,#+1
??RF_Test_3:
        CMP      R4,#+17
        BLT      ??RF_Test_4
        LDR      R0,??DataTable9_12  ;; 0x40073003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??RF_Test_1
        LDR      R0,??DataTable9_6  ;; 0x40038000
        MOVS     R1,#+8
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9  ;; 0x40039000
        MOVS     R1,#+136
        STR      R1,[R0, #+0]
        B        ??RF_Test_2
//  794 #endif
//  795 
//  796     }
//  797 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0xf80ff014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x4004901c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     RTC_refresh_rate

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x3d0900

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x40065000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x4003d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x4003d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0x4007c002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0x4004a014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0x4004a018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     0x40073000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     0x40073005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     0x40048004
//  798 
//  799 ////////////////////////////////////////////////////////////////////////////////////////
//  800 // LPTMR IRQ Handler
//  801 /////////////////////////////////////////////////////////////////////////////////////////

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  802 void LPTMR_IRQHandler(void)
//  803 {
LPTMR_IRQHandler:
        PUSH     {LR}
//  804     uint32 temp32, i;
//  805     
//  806     //FGPIOA_PSOR |= 0x8000;   // This sets the clkout pin and is used purely for power profiling
//  807     
//  808     // Move to VLPR mode
//  809     /*if ((SMC_PMSTAT & SMC_PMSTAT_PMSTAT_MASK) != 4)
//  810     {
//  811         SMC_PMCTRL = SMC_PMCTRL_RUNM(2);
//  812     }*/
//  813     
//  814     if (test_mode == 1)
        LDR      R0,??DataTable157_4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??LPTMR_IRQHandler_0
//  815     {
//  816     /*
//  817     // First ensure that V0 has been selected. Note that the CMP should already be off at this step.  
//  818     CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V0) | CMP_MUXCR_MSEL(7));
//  819     
//  820     // Now perform conversion
//  821     CMP0_CR1 |= CMP_CR1_EN_MASK;
//  822     
//  823     // Reset semaphore i
//  824     i = 0;
//  825     // WAIT!!  Must meet the settling time of 40 us here!
//  826     while(i<80)
//  827     //while(i<2)   // Use this if using the external crystal
//  828         i++;
//  829     
//  830     // Read the output and make decision
//  831     if (CMP0_SCR & CMP_SCR_COUT_MASK)
//  832     {
//  833 #ifdef DEBUG_TOWER
//  834         FGPIOB_PSOR |= 0x100;
//  835 #else
//  836         FGPIOA_PSOR |= 0x1000;
//  837 #endif
//  838     }
//  839     else
//  840     {
//  841 #ifdef DEBUG_TOWER
//  842         FGPIOB_PCOR |= 0x100;
//  843 #else
//  844         FGPIOA_PCOR |= 0x1000;
//  845 #endif
//  846     }
//  847     
//  848     // Now select V1
//  849     CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V1) | CMP_MUXCR_MSEL(CMP_DACIN));
//  850     
//  851     // Read the output and make decision
//  852     if (CMP0_SCR & CMP_SCR_COUT_MASK)
//  853     {
//  854 #ifdef DEBUG_TOWER
//  855         FGPIOB_PSOR |= 0x200;
//  856 #else
//  857         FGPIOB_PSOR |= 0x40;
//  858 #endif
//  859     }
//  860     else
//  861     {
//  862 #ifdef DEBUG_TOWER
//  863         FGPIOB_PCOR |= 0x200;
//  864 #else
//  865         FGPIOB_PCOR |= 0x40;
//  866 #endif
//  867     }
//  868     
//  869     CMP0_CR1 &= ~CMP_CR1_EN_MASK;   // Ensure CMP is off before leaving ISR
//  870     
//  871     LPTMR0_CSR |=  LPTMR_CSR_TCF_MASK;   // write 1 to TCF to clear the LPT timer compare flag
//  872     //LPTMR0_CSR |= (LPTMR_CSR_TEN_MASK);  // Enable the timer
//  873     //wait for write to complete to  before returning 
//  874     temp32 = LPTMR0_CSR;*/
//  875         
//  876         while(1)
//  877         {
//  878             FGPIOA_PCOR = 0x1000;
??LPTMR_IRQHandler_1:
        LDR      R0,??DataTable157_5  ;; 0xf80ff008
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        STR      R1,[R0, #+0]
//  879             FGPIOB_PTOR = 0x40;
        LDR      R0,??DataTable157_6  ;; 0xf80ff04c
        MOVS     R1,#+64
        STR      R1,[R0, #+0]
        B        ??LPTMR_IRQHandler_1
//  880         }
//  881     }
//  882     else if (test_mode == 2)
??LPTMR_IRQHandler_0:
        LDR      R0,??DataTable157_4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BNE      ??LPTMR_IRQHandler_2
//  883     {
//  884         GPIOA_PTOR|=(1<<12);                       // Toggle A12 GPIO at 1Hz for OUT0 
        LDR      R0,??DataTable157_7  ;; 0x400ff00c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        ORRS     R1,R1,R0
        LDR      R0,??DataTable157_7  ;; 0x400ff00c
        STR      R1,[R0, #+0]
//  885         LPTMR0_CSR |=  LPTMR_CSR_TCF_MASK;         // write 1 to TCF to clear the LPT timer compare flag
        LDR      R0,??DataTable157_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable157_1  ;; 0x40040000
        STR      R1,[R0, #+0]
//  886         LPTMR0_CSR |= (LPTMR_CSR_TEN_MASK);
        LDR      R0,??DataTable157_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable157_1  ;; 0x40040000
        STR      R1,[R0, #+0]
//  887         /*wait for write to complete to  before returning */  
//  888         temp32 = LPTMR0_CSR;                       // dummy read
        LDR      R0,??DataTable157_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        B        ??LPTMR_IRQHandler_3
//  889     }
//  890     else if (test_mode == 3)
??LPTMR_IRQHandler_2:
        LDR      R0,??DataTable157_4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+3
        BNE      ??LPTMR_IRQHandler_3
//  891     {
//  892         LPTMR_flag = TRUE;
        LDR      R0,??DataTable157_8
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
//  893         LPTMR0_CSR |=  LPTMR_CSR_TCF_MASK;   // write 1 to TCF to clear the LPT timer compare flag
        LDR      R0,??DataTable157_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable157_1  ;; 0x40040000
        STR      R1,[R0, #+0]
//  894         LPTMR0_CSR |= (LPTMR_CSR_TEN_MASK);
        LDR      R0,??DataTable157_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable157_1  ;; 0x40040000
        STR      R1,[R0, #+0]
//  895         /*wait for write to complete to  before returning */  
//  896         temp32 = LPTMR0_CSR;
        LDR      R0,??DataTable157_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
//  897     }
//  898     else
//  899     {}
//  900     
//  901     //FGPIOA_PCOR |= 0x8000;  // This clears the clkout pin and is used purely for power profiling
//  902 }
??LPTMR_IRQHandler_3:
        POP      {PC}             ;; return
//  903 
//  904 
//  905 
//  906 
//  907 //////////////////////////////////////////////////////////////////////////////////////////////////////
//  908 // CMP0 IRQ Handler
//  909 /////////////////////
//  910 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  911 void CMP0_IRQHandler(void)
//  912 {
CMP0_IRQHandler:
        PUSH     {LR}
//  913     uint32 temp32, i, j;
//  914     
//  915     FGPIOA_PSOR |= 0x8000;  // This sets the clkout pin and is used purely for power profiling
        LDR      R1,??DataTable9_13  ;; 0xf80ff004
        LDR      R1,[R1, #+0]
        MOVS     R2,#+128
        LSLS     R2,R2,#+8        ;; #+32768
        ORRS     R2,R2,R1
        LDR      R1,??DataTable9_13  ;; 0xf80ff004
        STR      R2,[R1, #+0]
//  916     
//  917     LPTMR0_CSR &= ~(LPTMR_CSR_TEN_MASK);
        LDR      R1,??DataTable9_14  ;; 0x40040000
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        BICS     R1,R1,R2
        LDR      R2,??DataTable9_14  ;; 0x40040000
        STR      R1,[R2, #+0]
//  918     
//  919     // Move to VLPR mode
//  920     if ((SMC_PMSTAT & SMC_PMSTAT_PMSTAT_MASK) != 4)
        LDR      R1,??DataTable7_1  ;; 0x4007e003
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSLS     R1,R1,#+25       ;; ZeroExtS R1,R1,#+25,#+25
        LSRS     R1,R1,#+25
        CMP      R1,#+4
        BEQ      ??CMP0_IRQHandler_0
//  921     {
//  922         SMC_PMCTRL = SMC_PMCTRL_RUNM(2);
        LDR      R1,??DataTable7_2  ;; 0x4007e001
        MOVS     R2,#+64
        STRB     R2,[R1, #+0]
//  923     }
//  924     
//  925     if ((CMP0_SCR & CMP_SCR_CFR_MASK) == CMP_SCR_CFR_MASK)
??CMP0_IRQHandler_0:
        LDR      R1,??DataTable9_12  ;; 0x40073003
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSLS     R1,R1,#+29
        BPL      ??CMP0_IRQHandler_1
//  926     {
//  927         j = 0;
        MOVS     R0,#+0
//  928         
//  929         CMP0_SCR = (CMP_SCR_CFR_MASK | CMP_SCR_IEF_MASK);
        LDR      R1,??DataTable9_12  ;; 0x40073003
        MOVS     R2,#+12
        STRB     R2,[R1, #+0]
//  930         
//  931 #ifdef DEBUG_TOWER
//  932         FGPIOB_PSOR |= 0x100;
//  933 #else
//  934         FGPIOA_PSOR |= 0x1000;
        LDR      R1,??DataTable9_13  ;; 0xf80ff004
        LDR      R1,[R1, #+0]
        MOVS     R2,#+128
        LSLS     R2,R2,#+5        ;; #+4096
        ORRS     R2,R2,R1
        LDR      R1,??DataTable9_13  ;; 0xf80ff004
        STR      R2,[R1, #+0]
        B        ??CMP0_IRQHandler_2
//  935 #endif
//  936     }
//  937     else if ((CMP0_SCR & CMP_SCR_CFF_MASK) == CMP_SCR_CFF_MASK)
??CMP0_IRQHandler_1:
        LDR      R1,??DataTable9_12  ;; 0x40073003
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1
        LSLS     R1,R1,#+30
        BPL      ??CMP0_IRQHandler_2
//  938     {
//  939         j = 1;
        MOVS     R0,#+1
//  940         
//  941         CMP0_SCR = (CMP_SCR_CFF_MASK | CMP_SCR_IER_MASK);
        LDR      R1,??DataTable9_12  ;; 0x40073003
        MOVS     R2,#+18
        STRB     R2,[R1, #+0]
//  942         
//  943 #ifdef DEBUG_TOWER
//  944         FGPIOB_PCOR |= 0x100;
//  945 #else
//  946         FGPIOA_PCOR |= 0x1000;
        LDR      R1,??DataTable9_15  ;; 0xf80ff008
        LDR      R1,[R1, #+0]
        MOVS     R2,#+128
        LSLS     R2,R2,#+5        ;; #+4096
        ORRS     R2,R2,R1
        LDR      R1,??DataTable9_15  ;; 0xf80ff008
        STR      R2,[R1, #+0]
//  947 #endif
//  948     }
//  949     
//  950     // Now select V1
//  951     CMP0_CR1 &= ~(CMP_CR1_EN_MASK | CMP_CR1_TRIGM_MASK);
??CMP0_IRQHandler_2:
        LDR      R1,??DataTable7  ;; 0x40073001
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+222
        ANDS     R2,R2,R1
        LDR      R1,??DataTable7  ;; 0x40073001
        STRB     R2,[R1, #+0]
//  952     //CMP0_MUXCR = 0x00;
//  953     CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V1) | CMP_MUXCR_MSEL(CMP_DACIN));
        LDR      R1,??DataTable9_16  ;; 0x40073005
        MOVS     R2,#+31
        STRB     R2,[R1, #+0]
//  954     
//  955     // Now perform conversion
//  956     CMP0_CR1 |= CMP_CR1_EN_MASK;
        LDR      R1,??DataTable7  ;; 0x40073001
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+1
        ORRS     R2,R2,R1
        LDR      R1,??DataTable7  ;; 0x40073001
        STRB     R2,[R1, #+0]
//  957     i = 0;
        MOVS     R1,#+0
        B        ??CMP0_IRQHandler_3
//  958     // WAIT!!  Must meet the settling time of 40 us here!  (85 when using BLPI, 3 when using BLPE)
//  959     while(i<85)
//  960     //while(i<3)
//  961         i++;
??CMP0_IRQHandler_4:
        ADDS     R1,R1,#+1
??CMP0_IRQHandler_3:
        CMP      R1,#+85
        BCC      ??CMP0_IRQHandler_4
//  962     
//  963     // Read the output and make decision
//  964     if (CMP0_SCR & CMP_SCR_COUT_MASK)
        LDR      R1,??DataTable9_12  ;; 0x40073003
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+31
        BPL      ??CMP0_IRQHandler_5
//  965     {
//  966 #ifdef DEBUG_TOWER
//  967         FGPIOB_PSOR |= 0x200;
//  968 #else
//  969         FGPIOB_PSOR |= 0x40;
        LDR      R1,??DataTable9_17  ;; 0xf80ff044
        LDR      R1,[R1, #+0]
        MOVS     R2,#+64
        ORRS     R2,R2,R1
        LDR      R1,??DataTable9_17  ;; 0xf80ff044
        STR      R2,[R1, #+0]
        B        ??CMP0_IRQHandler_6
//  970 #endif
//  971     }
//  972     else
//  973     {
//  974 #ifdef DEBUG_TOWER
//  975         FGPIOB_PCOR |= 0x200;
//  976 #else
//  977         FGPIOB_PCOR |= 0x40;
??CMP0_IRQHandler_5:
        LDR      R1,??DataTable9_18  ;; 0xf80ff048
        LDR      R1,[R1, #+0]
        MOVS     R2,#+64
        ORRS     R2,R2,R1
        LDR      R1,??DataTable9_18  ;; 0xf80ff048
        STR      R2,[R1, #+0]
//  978 #endif
//  979     }
//  980     
//  981     CMP0_CR1 &= ~CMP_CR1_EN_MASK;
??CMP0_IRQHandler_6:
        LDR      R1,??DataTable7  ;; 0x40073001
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+254
        ANDS     R2,R2,R1
        LDR      R1,??DataTable7  ;; 0x40073001
        STRB     R2,[R1, #+0]
//  982     CMP0_CR1 |= CMP_CR1_TRIGM_MASK;
        LDR      R1,??DataTable7  ;; 0x40073001
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+32
        ORRS     R2,R2,R1
        LDR      R1,??DataTable7  ;; 0x40073001
        STRB     R2,[R1, #+0]
//  983     CMP0_MUXCR = (CMP_MUXCR_PSEL(CMP_CHANNEL_V0) 
//  984                   | CMP_MUXCR_MSEL(CMP_DACIN));
        LDR      R1,??DataTable9_16  ;; 0x40073005
        MOVS     R2,#+15
        STRB     R2,[R1, #+0]
//  985     if (j == 0)
        CMP      R0,#+0
        BNE      ??CMP0_IRQHandler_7
//  986         CMP0_SCR |= CMP_SCR_IEF_MASK;
        LDR      R0,??DataTable9_12  ;; 0x40073003
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        LDR      R0,??DataTable9_12  ;; 0x40073003
        STRB     R1,[R0, #+0]
        B        ??CMP0_IRQHandler_8
//  987     else
//  988         CMP0_SCR |= CMP_SCR_IER_MASK;
??CMP0_IRQHandler_7:
        LDR      R0,??DataTable9_12  ;; 0x40073003
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable9_12  ;; 0x40073003
        STRB     R1,[R0, #+0]
//  989     
//  990     CMP0_CR1 |= CMP_CR1_EN_MASK;
??CMP0_IRQHandler_8:
        LDR      R0,??DataTable7  ;; 0x40073001
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable7  ;; 0x40073001
        STRB     R1,[R0, #+0]
//  991     
//  992     
//  993     //LPTMR0_CSR |=  LPTMR_CSR_TCF_MASK;   // write 1 to TCF to clear the LPT timer compare flag
//  994     LPTMR0_CSR |= (LPTMR_CSR_TEN_MASK);
        LDR      R0,??DataTable9_14  ;; 0x40040000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable9_14  ;; 0x40040000
        STR      R1,[R0, #+0]
//  995     //wait for write to complete to  before returning 
//  996     //temp32 = LPTMR0_CSR;
//  997     
//  998     
//  999     CMP0_flag = TRUE;
        LDR      R0,??DataTable9_19
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
// 1000    
// 1001     FGPIOA_PCOR |= 0x8000;  // This clears the clkout pin and is used purely for power profiling
        LDR      R0,??DataTable9_15  ;; 0xf80ff008
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+8        ;; #+32768
        ORRS     R1,R1,R0
        LDR      R0,??DataTable9_15  ;; 0xf80ff008
        STR      R1,[R0, #+0]
// 1002     
// 1003 }
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x40073001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x4007e003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x4007e001
// 1004 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
// 1005 void RTC_Alarm_IRQHandler(void)
// 1006 {
RTC_Alarm_IRQHandler:
        PUSH     {LR}
// 1007     // Move to VLPR mode
// 1008     /*if ((SMC_PMSTAT & SMC_PMSTAT_PMSTAT_MASK) != 4)
// 1009     {
// 1010         SMC_PMCTRL = SMC_PMCTRL_RUNM(2);
// 1011     }*/
// 1012     // service the COP 
// 1013     SIM_SRVCOP = 0x55;
        LDR      R0,??DataTable157_9  ;; 0x40048104
        MOVS     R1,#+85
        STR      R1,[R0, #+0]
// 1014     SIM_SRVCOP = 0xAA;
        LDR      R0,??DataTable157_9  ;; 0x40048104
        MOVS     R1,#+170
        STR      R1,[R0, #+0]
// 1015     
// 1016     if((RTC_SR & RTC_SR_TIF_MASK)== 0x01)
        LDR      R0,??DataTable157_10  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??RTC_Alarm_IRQHandler_0
// 1017     {
// 1018         RTC_SR &= ~RTC_SR_TCE_MASK;  //clear TCE, or RTC_TSR can  not be written
        LDR      R0,??DataTable157_10  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+16
        BICS     R0,R0,R1
        LDR      R1,??DataTable157_10  ;; 0x4003d014
        STR      R0,[R1, #+0]
// 1019 	RTC_TSR = 0x00000000;  //clear TIF
        LDR      R0,??DataTable157_11  ;; 0x4003d000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        B        ??RTC_Alarm_IRQHandler_1
// 1020     }
// 1021     else if((RTC_SR & RTC_SR_TOF_MASK) == 0x02)
??RTC_Alarm_IRQHandler_0:
        LDR      R0,??DataTable157_10  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL      ??RTC_Alarm_IRQHandler_2
// 1022     {
// 1023         RTC_SR &= 0x07;  //clear TCE, or RTC_TSR can  not be written
        LDR      R0,??DataTable157_10  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        LDR      R1,??DataTable157_10  ;; 0x4003d014
        STR      R0,[R1, #+0]
// 1024 	RTC_TSR = 0x00000000;  //clear TOF
        LDR      R0,??DataTable157_11  ;; 0x4003d000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        B        ??RTC_Alarm_IRQHandler_1
// 1025     }
// 1026     else if((RTC_SR & RTC_SR_TAF_MASK) == 0x04)
??RTC_Alarm_IRQHandler_2:
        LDR      R0,??DataTable157_10  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL      ??RTC_Alarm_IRQHandler_1
// 1027     {
// 1028         // Set RTC alarm semaphore to True
// 1029         RTC_Alarm = TRUE;
        LDR      R0,??DataTable157_12
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
// 1030         //RTC_TAR = RTC_TSR + RTC_VAL_1S;
// 1031         RTC_TAR = RTC_TSR + RTC_refresh_rate;
        LDR      R0,??DataTable157_11  ;; 0x4003d000
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable157_13
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR      R1,??DataTable157_14  ;; 0x4003d008
        STR      R0,[R1, #+0]
// 1032     }	
// 1033     else
// 1034     {
// 1035     }
// 1036 
// 1037     return;
??RTC_Alarm_IRQHandler_1:
        POP      {PC}             ;; return
// 1038 }

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157:
        DC32     0x4004804c

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_1:
        DC32     0x40040000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_2:
        DC32     0x4007e001

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_3:
        DC32     0xe000ed10

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_4:
        DC32     test_mode

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_5:
        DC32     0xf80ff008

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_6:
        DC32     0xf80ff04c

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_7:
        DC32     0x400ff00c

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_8:
        DC32     LPTMR_flag

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_9:
        DC32     0x40048104

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_10:
        DC32     0x4003d014

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_11:
        DC32     0x4003d000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_12:
        DC32     RTC_Alarm

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_13:
        DC32     RTC_refresh_rate

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable157_14:
        DC32     0x4003d008
// 1039 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1040 void TPM0_IRQHandler(void)
// 1041 {
TPM0_IRQHandler:
        PUSH     {LR}
// 1042     
// 1043     if((TPM0_C3SC & TPM_CnSC_CHF_MASK) == TPM_CnSC_CHF_MASK)
        LDR      R0,??DataTable9_9  ;; 0x40038024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL      ??TPM0_IRQHandler_0
// 1044     {
// 1045         TPM0_C3SC |= TPM_CnSC_CHF_MASK;
        LDR      R0,??DataTable9_9  ;; 0x40038024
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable9_9  ;; 0x40038024
        STR      R1,[R0, #+0]
// 1046         /*TPM0_C3V = TPM0_C3V + V1_result;
// 1047         TPM0_C3SC = (uint32_t)((TPM0_C3SC & (uint32_t)~(uint32_t)(
// 1048                TPM_CnSC_CHF_MASK |
// 1049                TPM_CnSC_ELSA_MASK |
// 1050                TPM_CnSC_DMA_MASK |
// 1051                0xFFFFFF02U
// 1052               )) | (uint32_t)(
// 1053                TPM_CnSC_MSA_MASK |
// 1054                TPM_CnSC_CHIE_MASK |
// 1055                TPM_CnSC_ELSB_MASK
// 1056               ));           
// 1057         TPM0_SC = (uint32_t)((TPM0_SC & (uint32_t)~(uint32_t)(
// 1058              TPM_SC_CMOD(0x01)
// 1059             )) | (uint32_t)(
// 1060              TPM_SC_CMOD(0x01)
// 1061             ));  */
// 1062         TPM0_flag = TRUE;
        LDR      R0,??DataTable9_20
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
// 1063         FGPIOB_PCOR |= 0x40;
        LDR      R0,??DataTable9_18  ;; 0xf80ff048
        LDR      R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable9_18  ;; 0xf80ff048
        STR      R1,[R0, #+0]
// 1064         
// 1065         //TPM0_SC = 0x00;
// 1066     }
// 1067 }
??TPM0_IRQHandler_0:
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0xe000ed10
// 1068 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1069 void TPM1_IRQHandler(void)
// 1070 {
TPM1_IRQHandler:
        PUSH     {LR}
// 1071     if(test_mode == 0)
        LDR      R0,??DataTable9_21
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??TPM1_IRQHandler_0
// 1072     {
// 1073         TPM1_C0SC |= TPM_CnSC_CHF_MASK; // Clear CHF flag
        LDR      R0,??DataTable9_3  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable9_3  ;; 0x4003900c
        STR      R1,[R0, #+0]
        B        ??TPM1_IRQHandler_1
// 1074     }
// 1075     else if (test_mode == 3)
??TPM1_IRQHandler_0:
        LDR      R0,??DataTable9_21
        LDRH     R0,[R0, #+0]
        CMP      R0,#+3
        BNE      ??TPM1_IRQHandler_1
// 1076     {
// 1077         
// 1078     if((TPM1_C0SC & TPM_CnSC_CHF_MASK) == TPM_CnSC_CHF_MASK)
        LDR      R0,??DataTable9_3  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL      ??TPM1_IRQHandler_1
// 1079     {
// 1080         TPM1_C0SC |= TPM_CnSC_CHF_MASK;
        LDR      R0,??DataTable9_3  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable9_3  ;; 0x4003900c
        STR      R1,[R0, #+0]
// 1081        
// 1082         TPM1_flag = TRUE;
        LDR      R0,??DataTable9_22
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
// 1083         
// 1084         /*TPM1_C0SC = (uint32_t)((TPM1_C0SC & (uint32_t)~(uint32_t)(
// 1085                TPM_CnSC_CHF_MASK |
// 1086                TPM_CnSC_ELSA_MASK |
// 1087                TPM_CnSC_DMA_MASK |
// 1088                TPM_CnSC_ELSB_MASK |
// 1089                0xFFFFFF02U
// 1090               )) | (uint32_t)(
// 1091                TPM_CnSC_MSA_MASK |
// 1092                TPM_CnSC_CHIE_MASK 
// 1093               ));           
// 1094         TPM1_SC = (uint32_t)((TPM1_SC & (uint32_t)~(uint32_t)(
// 1095              TPM_SC_CMOD(0x01)
// 1096             )) | (uint32_t)(
// 1097              TPM_SC_CMOD(0x01)
// 1098             ));  
// 1099         
// 1100         */
// 1101         FGPIOA_PCOR |= 0x1000;
        LDR      R0,??DataTable9_15  ;; 0xf80ff008
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        ORRS     R1,R1,R0
        LDR      R0,??DataTable9_15  ;; 0xf80ff008
        STR      R1,[R0, #+0]
// 1102     }
// 1103     }
// 1104     else
// 1105     {}
// 1106 }
??TPM1_IRQHandler_1:
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x40039004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x40039084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x4003900c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x40039010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x40039008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     0x40038004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     0x40038084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     0x40038024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     0x40038028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     0x40038008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     0x40073003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     0xf80ff004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     0xf80ff008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     0x40073005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_17:
        DC32     0xf80ff044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_18:
        DC32     0xf80ff048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_19:
        DC32     CMP0_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_20:
        DC32     TPM0_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_21:
        DC32     test_mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_22:
        DC32     TPM1_flag

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
//    18 bytes in section .bss
// 2 784 bytes in section .text
//   328 bytes in section .textrw
// 
// 3 112 bytes of CODE memory
//    18 bytes of DATA memory
//
//Errors: none
//Warnings: 13
