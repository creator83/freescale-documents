///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:29 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\adc\adc.c                          /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\adc\adc.c" -D IAR -D FRDM -D EX2   /
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
//                    st\adc.s                                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME `adc`

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN __aeabi_idiv
        EXTERN printf

        PUBLIC ADCAutoCalibration
        PUBLIC ADC_ISR
        PUBLIC InitADC
        PUBLIC ReadADCPoll
        PUBLIC TriggerADC

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\drivers\adc\adc.c
//    1 /*
//    2  * File:        adc.c
//    3  * Purpose:     Provide common adc routines
//    4  *
//    5  * Notes:       
//    6  *              
//    7  */
//    8 
//    9 #include "common.h"
//   10 #include "adc.h"
//   11 
//   12 /****************************************************************
//   13                   initial the ADC module
//   14 *****************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 void InitADC( void )
//   16 {
//   17     SIM_SCGC6 |= SIM_SCGC6_ADC0_MASK;  // enable ADC0 clock
InitADC:
        LDR      R0,??DataTable1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+20       ;; #+134217728
        ORRS     R1,R1,R0
        LDR      R0,??DataTable1  ;; 0x4004803c
        STR      R1,[R0, #+0]
//   18 
//   19     ADC0_CFG1 = ADC_CFG1_ADIV(1)|
//   20   		ADC_CFG1_MODE(1)|
//   21   		ADC_CFG1_ADICLK(3);
        LDR      R0,??DataTable1_1  ;; 0x4003b008
        MOVS     R1,#+39
        STR      R1,[R0, #+0]
//   22   	
//   23 }
        BX       LR               ;; return
//   24 
//   25 /**********************************************************************
//   26 *                  ADC Calibration routine
//   27 **********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 unsigned int ADCAutoCalibration(ADC_MemMapPtr adcmap)
//   29 {
ADCAutoCalibration:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   30   unsigned short cal_var;
//   31     
//   32   ADC_SC2_REG(adcmap) &=  ~ADC_SC2_ADTRG_MASK ; // Enable Software Conversion Trigger for Calibration Process    - ADC0_SC2 = ADC0_SC2 | ADC_SC2_ADTRGW(0);   
        LDR      R0,[R4, #+32]
        MOVS     R1,#+64
        BICS     R0,R0,R1
        STR      R0,[R4, #+32]
//   33   ADC_SC3_REG(adcmap) &= ( ~ADC_SC3_ADCO_MASK & ~ADC_SC3_AVGS_MASK ); // set single conversion, clear avgs bitfield for next writing
        LDR      R0,[R4, #+36]
        MOVS     R1,#+11
        BICS     R0,R0,R1
        STR      R0,[R4, #+36]
//   34   ADC_SC3_REG(adcmap) |= ( ADC_SC3_AVGE_MASK | ADC_SC3_AVGS(AVGS_32) );  // Turn averaging ON and set at max value ( 32 )
        LDR      R0,[R4, #+36]
        MOVS     R1,#+7
        ORRS     R1,R1,R0
        STR      R1,[R4, #+36]
//   35   
//   36   
//   37   ADC_SC3_REG(adcmap) |= ADC_SC3_CAL_MASK ;      // Start CAL
        LDR      R0,[R4, #+36]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        STR      R1,[R4, #+36]
//   38   while ( (ADC_SC1_REG(adcmap,A) & ADC_SC1_COCO_MASK ) == COCO_NOT ); // Wait calibration end
??ADCAutoCalibration_0:
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL      ??ADCAutoCalibration_0
//   39   	
//   40   if ((ADC_SC3_REG(adcmap)& ADC_SC3_CALF_MASK) == CALF_FAIL )
        LDR      R0,[R4, #+36]
        LSLS     R0,R0,#+25
        BPL      ??ADCAutoCalibration_1
//   41   {  
//   42    return(0);    // Check for Calibration fail error and return 
        MOVS     R0,#+0
        B        ??ADCAutoCalibration_2
//   43   }
//   44   // Calculate plus-side calibration
//   45   cal_var = 0x00;
??ADCAutoCalibration_1:
        MOVS     R1,#+0
//   46   
//   47   cal_var =  ADC_CLP0_REG(adcmap); 
        LDR      R0,[R4, #+76]
        MOVS     R1,R0
//   48   cal_var += ADC_CLP1_REG(adcmap);
        LDR      R0,[R4, #+72]
        ADDS     R1,R1,R0
//   49   cal_var += ADC_CLP2_REG(adcmap);
        LDR      R0,[R4, #+68]
        ADDS     R1,R1,R0
//   50   cal_var += ADC_CLP3_REG(adcmap);
        LDR      R0,[R4, #+64]
        ADDS     R1,R1,R0
//   51   cal_var += ADC_CLP4_REG(adcmap);
        LDR      R0,[R4, #+60]
        ADDS     R1,R1,R0
//   52   cal_var += ADC_CLPS_REG(adcmap);
        LDR      R0,[R4, #+56]
        ADDS     R1,R1,R0
//   53 
//   54   cal_var = cal_var/2;
        UXTH     R1,R1
        MOVS     R0,R1
        MOVS     R1,#+2
        BL       __aeabi_idiv
        MOVS     R1,R0
//   55   cal_var |= 0x8000; // Set MSB
        MOVS     R0,R1
        MOVS     R1,#+128
        LSLS     R1,R1,#+8        ;; #+32768
        ORRS     R1,R1,R0
//   56 
//   57   ADC_PG_REG(adcmap) = ADC_PG_PG(cal_var);
        UXTH     R1,R1
        STR      R1,[R4, #+44]
//   58  
//   59 
//   60   // Calculate minus-side calibration
//   61   cal_var = 0x00;
        MOVS     R1,#+0
//   62 
//   63   cal_var = cal_var/2;
        UXTH     R1,R1
        MOVS     R0,R1
        MOVS     R1,#+2
        BL       __aeabi_idiv
        MOVS     R1,R0
//   64 
//   65   cal_var |= 0x8000; // Set MSB
        MOVS     R0,R1
        MOVS     R1,#+128
        LSLS     R1,R1,#+8        ;; #+32768
        ORRS     R1,R1,R0
//   66 
//   67   //ADC_MG_REG(adcmap) = ADC_MG_MG(cal_var); 
//   68   
//   69   ADC_SC3_REG(adcmap) &= ~ADC_SC3_CAL_MASK ; /* Clear CAL bit */
        LDR      R0,[R4, #+36]
        MOVS     R2,#+128
        BICS     R0,R0,R2
        STR      R0,[R4, #+36]
//   70   
//   71   return 1;
        MOVS     R0,#+1
??ADCAutoCalibration_2:
        POP      {R4,PC}          ;; return
//   72 }
//   73 
//   74           
//   75 /****************************************************************
//   76                       software trigger channel x
//   77 *****************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//   78 unsigned char TriggerADC(unsigned char Channel)
//   79 {
TriggerADC:
        PUSH     {LR}
//   80   
//   81   if(Channel == 0x1B)                                          // Bandgap is selected as input
        UXTB     R0,R0
        CMP      R0,#+27
        BNE      ??TriggerADC_0
//   82       PMC_REGSC |= PMC_REGSC_BGBE_MASK;                        // Bandgap buffer enabled
        LDR      R1,??DataTable6  ;; 0x4007d002
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+1
        ORRS     R2,R2,R1
        LDR      R1,??DataTable6  ;; 0x4007d002
        STRB     R2,[R1, #+0]
//   83    ADC0_SC1A = Channel;                   // update the channel value
??TriggerADC_0:
        LDR      R1,??DataTable6_1  ;; 0x4003b000
        UXTB     R0,R0
        STR      R0,[R1, #+0]
//   84    return 1;
        MOVS     R0,#+1
        POP      {PC}             ;; return
//   85 }
//   86 
//   87 /****************************************************************
//   88                       ADC Read
//   89 *****************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//   90 unsigned int ReadADCPoll(void)
//   91 {
ReadADCPoll:
        PUSH     {LR}
//   92     while((ADC0_SC1A & ADC_SC1_COCO_MASK) == 0);
??ReadADCPoll_0:
        LDR      R0,??DataTable6_1  ;; 0x4003b000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL      ??ReadADCPoll_0
//   93     //ADC0_SC1A &= ~ ADC0_SC1A_COCO_MASK;
//   94     return ADC0_RA;
        LDR      R0,??DataTable6_2  ;; 0x4003b010
        LDR      R0,[R0, #+0]
        POP      {PC}             ;; return
//   95 }

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6:
        DC32     0x4007d002

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_1:
        DC32     0x4003b000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_2:
        DC32     0x4003b010
//   96 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   97 void ADC_ISR(void)
//   98 {
ADC_ISR:
        PUSH     {R7,LR}
//   99   printf("\n ADC sample data: %x.\n", ADC0_RA);
        LDR      R0,??DataTable1_2  ;; 0x4003b010
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable1_3
        BL       printf
//  100 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x4003b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x4003b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     `?<Constant "\\n ADC sample data: %x.\\n">`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n ADC sample data: %x.\\n">`:
        DATA
        DC8 "\012 ADC sample data: %x.\012"

        END
// 
//  24 bytes in section .rodata
// 188 bytes in section .text
//  58 bytes in section .textrw
// 
// 246 bytes of CODE  memory
//  24 bytes of CONST memory
//
//Errors: none
//Warnings: none
