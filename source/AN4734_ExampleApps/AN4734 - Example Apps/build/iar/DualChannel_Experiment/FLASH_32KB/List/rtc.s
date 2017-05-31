///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:31 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\rtc\rtc.c                          /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\rtc\rtc.c" -D IAR -D FRDM -D EX2   /
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
//                    st\rtc.s                                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME rtc

        #define SHT_PROGBITS 0x1

        EXTERN disable_irq
        EXTERN enable_irq
        EXTERN out_char
        EXTERN printf

        PUBLIC rtc_init
        PUBLIC rtc_isr
        PUBLIC rtc_reg_report
        PUBLIC rtc_reset
        PUBLIC rtc_second_isr
        PUBLIC rtc_updated_timer

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\drivers\rtc\rtc.c
//    1 /*
//    2  * File:        rtc.c
//    3  * Purpose:     Provide common RTC routines
//    4  *
//    5  * Notes:       
//    6  *              
//    7  */
//    8 
//    9 
//   10 #include "common.h"
//   11 #include "rtc.h"
//   12 #include "arm_cm0.h"
//   13 
//   14 /********************************************************************/
//   15 /*
//   16  * Initialize the RTC
//   17  *
//   18  *
//   19  * Parameters:
//   20  *  seconds         Start value of seconds register
//   21  *  alarm           Time in seconds of first alarm. Set to 0xFFFFFFFF to effectively disable alarm
//   22  *  c_interval      Interval at which to apply time compensation can range from 1 second (0x0) to 256 (0xFF)
//   23  *  c_value         Compensation value ranges from -127 32kHz cycles to +128 32 kHz cycles
//   24  *                  80h Time prescaler register overflows every 32896 clock cycles.
//   25  *                  FFh Time prescaler register overflows every 32769 clock cycles.
//   26  *                  00h Time prescaler register overflows every 32768 clock cycles.
//   27  *                  01h Time prescaler register overflows every 32767 clock cycles.
//   28  *                  7Fh Time prescaler register overflows every 32641 clock cycles.
//   29  *  interrupt       TRUE or FALSE
//   30  */
//   31 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void rtc_init(uint32 seconds, uint32 alarm, uint8 c_interval, uint8 c_value, uint8 interrupt) 
//   33 {
rtc_init:
        PUSH     {R1,R4-R7,LR}
        MOVS     R7,R0
        MOVS     R5,R2
        MOVS     R6,R3
//   34   int i;  
//   35   /*enable the clock to SRTC module register space*/
//   36   SIM_SCGC6 |= SIM_SCGC6_RTC_MASK;
        LDR      R0,??DataTable4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+22       ;; #+536870912
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4  ;; 0x4004803c
        STR      R1,[R0, #+0]
//   37  
//   38   SIM_SOPT1 = SIM_SOPT1_OSC32KSEL(0);
        LDR      R0,??DataTable4_1  ;; 0x40047000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR      R4,[SP, #+24]
//   39 
//   40   /*Only VBAT_POR has an effect on the SRTC, RESET to the part does not, so you must manually reset the SRTC to make sure everything is in a known state*/
//   41   /*clear the software reset bit*/
//   42   //  printf("Generating SoftWare reset to SRTC\n");
//   43     disable_irq(interrupt);
        UXTB     R4,R4
        MOVS     R0,R4
        BL       disable_irq
//   44     disable_irq(interrupt+1);
        UXTB     R4,R4
        MOVS     R0,R4
        ADDS     R0,R0,#+1
        BL       disable_irq
//   45     RTC_CR  = RTC_CR_SWR_MASK;
        LDR      R0,??DataTable4_2  ;; 0x4003d010
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//   46     RTC_CR  &= ~RTC_CR_SWR_MASK;  
        LDR      R0,??DataTable4_2  ;; 0x4003d010
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        BICS     R0,R0,R1
        LDR      R1,??DataTable4_2  ;; 0x4003d010
        STR      R0,[R1, #+0]
//   47     if (RTC_SR & RTC_SR_TIF_MASK){
        LDR      R0,??DataTable4_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??rtc_init_0
//   48         RTC_TSR = 0x00000000;   //  this action clears the TIF
        LDR      R0,??DataTable4_4  ;; 0x4003d000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   49        // printf("RTC Invalid flag was set - Write to TSR done to clears RTC_SR =  %#02X \n",  (RTC_SR) )  ;
//   50     }
//   51   /*Set time compensation parameters*/
//   52   RTC_TCR = RTC_TCR_CIR(c_interval) | RTC_TCR_TCR(c_value);
??rtc_init_0:
        UXTB     R5,R5
        LSLS     R0,R5,#+8
        UXTB     R6,R6
        ORRS     R6,R6,R0
        LDR      R0,??DataTable4_5  ;; 0x4003d00c
        STR      R6,[R0, #+0]
//   53   
//   54   /*Enable the counter*/
//   55   if (seconds >0) {
        CMP      R7,#+0
        BEQ      ??rtc_init_1
//   56      /*Enable the interrupt*/
//   57      if(interrupt >1){
        UXTB     R4,R4
        CMP      R4,#+2
        BCC      ??rtc_init_2
//   58         enable_irq(interrupt+1);
        UXTB     R4,R4
        MOVS     R0,R4
        ADDS     R0,R0,#+1
        BL       enable_irq
//   59      }
//   60    
//   61     RTC_IER |= RTC_IER_TSIE_MASK;
??rtc_init_2:
        LDR      R0,??DataTable4_6  ;; 0x4003d01c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_6  ;; 0x4003d01c
        STR      R1,[R0, #+0]
//   62     RTC_SR |= RTC_SR_TCE_MASK;
        LDR      R0,??DataTable4_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_3  ;; 0x4003d014
        STR      R1,[R0, #+0]
//   63     /*Configure the timer seconds and alarm registers*/
//   64     RTC_TSR = seconds;
        LDR      R0,??DataTable4_4  ;; 0x4003d000
        STR      R7,[R0, #+0]
        B        ??rtc_init_3
//   65 
//   66   } else {
//   67     RTC_IER &= ~RTC_IER_TSIE_MASK;
??rtc_init_1:
        LDR      R0,??DataTable4_6  ;; 0x4003d01c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+16
        BICS     R0,R0,R1
        LDR      R1,??DataTable4_6  ;; 0x4003d01c
        STR      R0,[R1, #+0]
//   68   }
//   69   if (alarm >0) {
??rtc_init_3:
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??rtc_init_4
//   70     RTC_IER |= RTC_IER_TAIE_MASK;
        LDR      R0,??DataTable4_6  ;; 0x4003d01c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_6  ;; 0x4003d01c
        STR      R1,[R0, #+0]
//   71     RTC_SR |= RTC_SR_TCE_MASK;
        LDR      R0,??DataTable4_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_3  ;; 0x4003d014
        STR      R1,[R0, #+0]
//   72     /*Configure the timer seconds and alarm registers*/
//   73     RTC_TAR = alarm;
        LDR      R0,??DataTable4_7  ;; 0x4003d008
        LDR      R1,[SP, #+0]
        STR      R1,[R0, #+0]
//   74      /*Enable the interrupt*/
//   75      if(interrupt >1){
        UXTB     R4,R4
        CMP      R4,#+2
        BCC      ??rtc_init_5
//   76         enable_irq(interrupt);
        UXTB     R4,R4
        MOVS     R0,R4
        BL       enable_irq
        B        ??rtc_init_5
//   77      }
//   78    
//   79   } else {
//   80     RTC_IER &= ~RTC_IER_TAIE_MASK;
??rtc_init_4:
        LDR      R0,??DataTable4_6  ;; 0x4003d01c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        BICS     R0,R0,R1
        LDR      R1,??DataTable4_6  ;; 0x4003d01c
        STR      R0,[R1, #+0]
//   81   }
//   82   
//   83   /*Enable the oscillator*/
//   84   RTC_CR |= RTC_CR_OSCE_MASK|RTC_CR_SC16P_MASK;
??rtc_init_5:
        LDR      R0,??DataTable4_2  ;; 0x4003d010
        LDR      R0,[R0, #+0]
        MOVS     R1,#+160
        LSLS     R1,R1,#+3        ;; #+1280
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_2  ;; 0x4003d010
        STR      R1,[R0, #+0]
//   85 
//   86   /*Wait to all the 32 kHz to stabilize, refer to the crystal startup time in the crystal datasheet*/
//   87   for(i=0;i<0x600000;i++);
        MOVS     R0,#+0
        B        ??rtc_init_6
??rtc_init_7:
        ADDS     R0,R0,#+1
??rtc_init_6:
        MOVS     R1,#+192
        LSLS     R1,R1,#+15       ;; #+6291456
        CMP      R0,R1
        BLT      ??rtc_init_7
//   88   RTC_SR |= RTC_SR_TCE_MASK;
        LDR      R0,??DataTable4_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_3  ;; 0x4003d014
        STR      R1,[R0, #+0]
//   89   //rtc_reg_report();
//   90 }
        POP      {R0,R4-R7,PC}    ;; return
//   91 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 void rtc_reg_report (void) {
//   93 #ifdef DEBUG_PRINT
//   94    printf("RTC_TSR    = 0x%02X,    ",    (RTC_TSR)) ;
//   95   printf("RTC_TPR    = 0x%02X\n",       (RTC_TPR)) ;
//   96   printf("RTC_TAR    = 0x%02X,    ",    (RTC_TAR)) ;
//   97   printf("RTC_TCR    = 0x%02X\n",       (RTC_TCR)) ;
//   98   printf("RTC_CR     = 0x%02X,    ",    (RTC_CR)) ;
//   99   printf("RTC_SR     = 0x%02X\n",       (RTC_SR)) ;
//  100   printf("RTC_LR     = 0x%02X,    ",    (RTC_LR)) ;
//  101   printf("RTC_IER    = 0x%02X\n",       (RTC_IER)) ;
//  102 #endif
//  103 }
rtc_reg_report:
        BX       LR               ;; return
//  104 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  105 static uint8_t m_bAlarmFlag = 0;
m_bAlarmFlag:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 void rtc_isr(void) 
//  107 {
rtc_isr:
        PUSH     {LR}
//  108    if((RTC_SR & RTC_SR_TIF_MASK)== 0x01)
        LDR      R0,??DataTable4_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??rtc_isr_0
//  109      {
//  110        //printf("SRTC time invalid interrupt entered...\r\n");
//  111    	   RTC_SR &= 0x07;  //clear TCE, or RTC_TSR can  not be written
        LDR      R0,??DataTable4_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        LDR      R1,??DataTable4_3  ;; 0x4003d014
        STR      R0,[R1, #+0]
//  112    	   RTC_TSR = 0x00000000;  //clear TIF 
        LDR      R0,??DataTable4_4  ;; 0x4003d000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  113            //RTC_IER &= ~RTC_IER_TIIE_MASK;
//  114 
//  115      }	
//  116    if((RTC_SR & RTC_SR_TOF_MASK) == 0x02)
??rtc_isr_0:
        LDR      R0,??DataTable4_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL      ??rtc_isr_1
//  117    {
//  118    	   //printf("SRTC time overflow interrupt entered...\r\n");
//  119    	   RTC_SR &= 0x07;  //clear TCE, or RTC_TSR can  not be written
        LDR      R0,??DataTable4_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        LDR      R1,??DataTable4_3  ;; 0x4003d014
        STR      R0,[R1, #+0]
//  120    	   RTC_TSR = 0x00000000;  //clear TOF
        LDR      R0,??DataTable4_4  ;; 0x4003d000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  121    }	 	
//  122    if((RTC_SR & RTC_SR_TAF_MASK) == 0x04)
??rtc_isr_1:
        LDR      R0,??DataTable4_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL      ??rtc_isr_2
//  123    {
//  124       m_bAlarmFlag = 1;
        LDR      R0,??DataTable4_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  125    	  // printf("SRTC alarm interrupt entered...\r");
//  126       // printf("Time Seconds Register value is: %i\n", RTC_TSR);
//  127    	   RTC_TAR += 3;// Write new alarm value, to generate an alarm every second add 1
        LDR      R0,??DataTable4_7  ;; 0x4003d008
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3
        LDR      R1,??DataTable4_7  ;; 0x4003d008
        STR      R0,[R1, #+0]
//  128    }	
//  129     return;
??rtc_isr_2:
        POP      {PC}             ;; return
//  130 }
//  131 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 void rtc_second_isr( void )
//  133 {
rtc_second_isr:
        PUSH     {R7,LR}
//  134     out_char(0x08);
        MOVS     R0,#+8
        BL       out_char
//  135     printf("Current Time:");
        LDR      R0,??DataTable4_9
        BL       printf
//  136 	printf("  %d", RTC_TSR);
        LDR      R0,??DataTable4_4  ;; 0x4003d000
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable4_10
        BL       printf
//  137     if( m_bAlarmFlag )
        LDR      R0,??DataTable4_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??rtc_second_isr_0
//  138     {
//  139       printf(" *alarm!* ");
        LDR      R0,??DataTable4_11
        BL       printf
//  140       m_bAlarmFlag = 0;
        LDR      R0,??DataTable4_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  141     }
//  142     else
//  143     {
//  144 #ifdef DEBUG_PRINT
//  145       printf("          ");
//  146 #endif
//  147     }
//  148 #ifdef DEBUG_PRINT
//  149     printf("\r");
//  150 #endif
//  151 }
??rtc_second_isr_0:
        POP      {R0,PC}          ;; return
//  152 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  153 void rtc_reset( void )
//  154 {
rtc_reset:
        PUSH     {R7,LR}
//  155     SIM_SCGC6 |= SIM_SCGC6_RTC_MASK;
        LDR      R0,??DataTable4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+22       ;; #+536870912
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4  ;; 0x4004803c
        STR      R1,[R0, #+0]
//  156 	disable_irq(20);
        MOVS     R0,#+20
        BL       disable_irq
//  157 	disable_irq(21);
        MOVS     R0,#+21
        BL       disable_irq
//  158 	RTC_CR  = RTC_CR_SWR_MASK;
        LDR      R0,??DataTable4_2  ;; 0x4003d010
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  159     RTC_CR  &= ~RTC_CR_SWR_MASK;  
        LDR      R0,??DataTable4_2  ;; 0x4003d010
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        BICS     R0,R0,R1
        LDR      R1,??DataTable4_2  ;; 0x4003d010
        STR      R0,[R1, #+0]
//  160 }
        POP      {R0,PC}          ;; return
//  161 	
//  162 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  163 uint32_t rtc_updated_timer( void )
//  164 {
//  165   
//  166     return RTC_TSR;
rtc_updated_timer:
        LDR      R0,??DataTable4_4  ;; 0x4003d000
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  167 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x40047000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x4003d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x4003d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x4003d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x4003d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x4003d01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x4003d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     m_bAlarmFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     `?<Constant "Current Time:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     `?<Constant "  %d">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     `?<Constant " *alarm!* ">`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Current Time:">`:
        DATA
        DC8 "Current Time:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "  %d">`:
        DATA
        DC8 "  %d"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " *alarm!* ">`:
        DATA
        DC8 " *alarm!* "
        DC8 0

        END
// 
//   1 byte  in section .bss
//  36 bytes in section .rodata
// 490 bytes in section .text
// 
// 490 bytes of CODE  memory
//  36 bytes of CONST memory
//   1 byte  of DATA  memory
//
//Errors: none
//Warnings: none
