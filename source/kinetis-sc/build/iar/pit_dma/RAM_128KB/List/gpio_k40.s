///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.1.52143/W32 for ARM    15/Feb/2011  12:14:21 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETIS /
//                    512_SC\kinetis-sc\src\projects\gpio\gpio_k40.c          /
//    Command line =  "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETI /
//                    S512_SC\kinetis-sc\src\projects\gpio\gpio_k40.c" -D     /
//                    IAR -D TWR_K40X256 -lCN "D:\Profiles\B17685\My          /
//                    Documents\FAE\MCU\Kinetis\KINETIS512_SC\kinetis-sc\buil /
//                    d\iar\gpio\RAM_128KB\List\" -lB "D:\Profiles\B17685\My  /
//                    Documents\FAE\MCU\Kinetis\KINETIS512_SC\kinetis-sc\buil /
//                    d\iar\gpio\RAM_128KB\List\" -o "D:\Profiles\B17685\My   /
//                    Documents\FAE\MCU\Kinetis\KINETIS512_SC\kinetis-sc\buil /
//                    d\iar\gpio\RAM_128KB\Obj\" --no_cse --no_unroll         /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0_2\arm\INC\c\DLib_Config_Normal.h" -I                /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETI /
//                    S512_SC\kinetis-sc\build\iar\gpio\..\..\..\src\projects /
//                    \gpio\" -I "D:\Profiles\B17685\My                       /
//                    Documents\FAE\MCU\Kinetis\KINETIS512_SC\kinetis-sc\buil /
//                    d\iar\gpio\..\..\..\src\common\" -I                     /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETI /
//                    S512_SC\kinetis-sc\build\iar\gpio\..\..\..\src\cpu\"    /
//                    -I "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KIN /
//                    ETIS512_SC\kinetis-sc\build\iar\gpio\..\..\..\src\cpu\h /
//                    eaders\" -I "D:\Profiles\B17685\My                      /
//                    Documents\FAE\MCU\Kinetis\KINETIS512_SC\kinetis-sc\buil /
//                    d\iar\gpio\..\..\..\src\drivers\uart\" -I               /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETI /
//                    S512_SC\kinetis-sc\build\iar\gpio\..\..\..\src\drivers\ /
//                    mcg\" -I "D:\Profiles\B17685\My                         /
//                    Documents\FAE\MCU\Kinetis\KINETIS512_SC\kinetis-sc\buil /
//                    d\iar\gpio\..\..\..\src\drivers\wdog\" -I               /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETI /
//                    S512_SC\kinetis-sc\build\iar\gpio\..\..\..\src\platform /
//                    s\" -I "D:\Profiles\B17685\My                           /
//                    Documents\FAE\MCU\Kinetis\KINETIS512_SC\kinetis-sc\buil /
//                    d\iar\gpio\..\" -Ol --use_c++_inline                    /
//    List file    =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETIS /
//                    512_SC\kinetis-sc\build\iar\gpio\RAM_128KB\List\gpio_k4 /
//                    0.s                                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME gpio_k40

        EXTERN enable_irq
        EXTERN printf

        PUBLIC delay
        PUBLIC init_gpio
        PUBLIC main
        PUBLIC porta_isr
        PUBLIC portc_isr
        PUBLIC porte_isr

// D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETIS512_SC\kinetis-sc\src\projects\gpio\gpio_k40.c
//    1 /*
//    2  * File:		gpio_k40.c
//    3  * Purpose:		LED and Switch Example
//    4  *
//    5  *                      Configures GPIO for the LED and push buttons on the TWR-K40X256
//    6  *                      Blue LED - On
//    7  *                      Green LED - Toggles on/off
//    8  *                      Orange LED - On if SW7 pressed
//    9  *                      Yellow LED - On if SW6 pressed
//   10  *
//   11  *                      Also configures push buttons for falling IRQ's. ISR
//   12  *                        configured in vector table in isr.h
//   13  */
//   14 
//   15 #define GPIO_PIN_MASK            0x1Fu
//   16 #define GPIO_PIN(x)              (((1)<<(x & GPIO_PIN_MASK)))
//   17 
//   18 #include "common.h"
//   19 
//   20 //Function declarations
//   21 void init_gpio(void);
//   22 void delay(void);
//   23 
//   24 /********************************************************************/
//   25 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 void main (void)
//   27 {
main:
        PUSH     {R7,LR}
//   28   printf("TWR-K40X256 GPIO Example!\n");
        ADR.W    R0,`?<Constant "TWR-K40X256 GPIO Exam...">`
        BL       printf
//   29 
//   30   /* Turn on all port clocks */
//   31   SIM_SCGC5 = SIM_SCGC5_PORTA_MASK | SIM_SCGC5_PORTB_MASK | SIM_SCGC5_PORTC_MASK | SIM_SCGC5_PORTD_MASK | SIM_SCGC5_PORTE_MASK;
        LDR.N    R0,??DataTable7  ;; 0x40048038
        MOV      R1,#+15872
        STR      R1,[R0, #+0]
//   32 
//   33   /* Enable GPIOC interrupts in NVIC */
//   34   enable_irq(89); //GPIOC Vector is 105. IRQ# is 105-16=89
        MOVS     R0,#+89
        BL       enable_irq
//   35 
//   36   /* Initialize GPIO on TWR-K40X256 */
//   37   init_gpio();
        BL       init_gpio
        B.N      ??main_0
//   38 
//   39   while(1)
//   40   {
//   41     //Set PTB11 to 0 (turns on blue LED)
//   42     GPIOB_PDOR&=~GPIO_PDOR_PDO(GPIO_PIN(11));
//   43 
//   44     //Toggle the green LED on PTC9
//   45     GPIOC_PTOR|=GPIO_PDOR_PDO(GPIO_PIN(9));
//   46 
//   47     //Look at status of SW6 on PTC5
//   48     if((GPIOC_PDIR & GPIO_PDIR_PDI(GPIO_PIN(5)))==0) //if pressed...
//   49     {
//   50       GPIOC_PDOR&=~GPIO_PDOR_PDO(GPIO_PIN(8)); //Set PTC8 to 0 (turns on yellow LED)
//   51     }
//   52     else  //else if not pressed...
//   53     {
//   54       GPIOC_PDOR|=GPIO_PDOR_PDO(GPIO_PIN(8)); //Set PTC8 to 1 (turns off yellow LED)
//   55     }
//   56 
//   57     //Look at status of SW7 on PTC13
//   58     if((GPIOC_PDIR & GPIO_PDIR_PDI(GPIO_PIN(13))) == 0)  //If pressed...
//   59     {
//   60       GPIOC_PDOR&=~GPIO_PDOR_PDO(GPIO_PIN(7)); //Set PTC7 to 0 (turns on orange LED)
//   61     }
//   62     else //else if not pressed...
//   63     {
//   64       GPIOC_PDOR|=GPIO_PDOR_PDO(GPIO_PIN(7)); //Set PTC7 to 1 (turns off orange LED)
??main_1:
        LDR.N    R0,??DataTable7_1  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable7_1  ;; 0x400ff080
        STR      R0,[R1, #+0]
//   65     }
//   66 
//   67     delay();
??main_2:
        BL       delay
??main_0:
        LDR.N    R0,??DataTable7_2  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR.N    R1,??DataTable7_2  ;; 0x400ff040
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable7_3  ;; 0x400ff08c
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable7_3  ;; 0x400ff08c
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable7_4  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BMI.N    ??main_3
        LDR.N    R0,??DataTable7_1  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.N    R1,??DataTable7_1  ;; 0x400ff080
        STR      R0,[R1, #+0]
        B.N      ??main_4
??main_3:
        LDR.N    R0,??DataTable7_1  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable7_1  ;; 0x400ff080
        STR      R0,[R1, #+0]
??main_4:
        LDR.N    R0,??DataTable7_4  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BMI.N    ??main_1
        LDR.N    R0,??DataTable7_1  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.N    R1,??DataTable7_1  ;; 0x400ff080
        STR      R0,[R1, #+0]
        B.N      ??main_2
//   68   }
//   69 }
//   70 
//   71 /*
//   72  * Initialize GPIO for Tower switches and LED's
//   73  *
//   74  *   PTC5 - SW6
//   75  *   PTC13 - SW7
//   76  *
//   77  *   PTB11 - Blue LED (D17)
//   78  *   PTC9 - Green LED (D14)
//   79  *   PTC8 - Yellow LED (D15)
//   80  *   PTC7 - Orange LED (D16)
//   81  *
//   82  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   83 void init_gpio()
//   84 {
//   85   //Set PTC5 and PTC13 (connected to SW6 and SW7) for GPIO functionality, falling IRQ,
//   86   //   and to use internal pull-ups. (pin defaults to input state)
//   87   PORTC_PCR5=(0|PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK);
init_gpio:
        LDR.N    R0,??DataTable7_5  ;; 0x4004b014
        LDR.N    R1,??DataTable7_6  ;; 0xa0103
        STR      R1,[R0, #+0]
//   88   PORTC_PCR13=(0|PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK);
        LDR.N    R0,??DataTable7_7  ;; 0x4004b034
        LDR.N    R1,??DataTable7_6  ;; 0xa0103
        STR      R1,[R0, #+0]
//   89 
//   90   //Set PTB11, PTC7, PTC8, and PTC9 (connected to LED's) for GPIO functionality
//   91   PORTB_PCR11=(0|PORT_PCR_MUX(1));
        LDR.N    R0,??DataTable7_8  ;; 0x4004a02c
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//   92   PORTC_PCR7=(0|PORT_PCR_MUX(1));
        LDR.N    R0,??DataTable7_9  ;; 0x4004b01c
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//   93   PORTC_PCR8=(0|PORT_PCR_MUX(1));
        LDR.N    R0,??DataTable7_10  ;; 0x4004b020
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//   94   PORTC_PCR9=(0|PORT_PCR_MUX(1));
        LDR.N    R0,??DataTable7_11  ;; 0x4004b024
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//   95 
//   96   //Change PTB11, PTC7, PTC8, PTC9 to outputs
//   97   GPIOB_PDDR=GPIO_PDDR_PDD(GPIO_PIN(11));
        LDR.N    R0,??DataTable7_12  ;; 0x400ff054
        MOV      R1,#+2048
        STR      R1,[R0, #+0]
//   98   GPIOC_PDDR=GPIO_PDDR_PDD(GPIO_PIN(7) | GPIO_PIN(8) | GPIO_PIN(9));	
        LDR.N    R0,??DataTable7_13  ;; 0x400ff094
        MOV      R1,#+896
        STR      R1,[R0, #+0]
//   99 }
        BX       LR               ;; return
//  100 /********************************************************************/
//  101 
//  102 /*
//  103  * ISR for PORTC interrupts
//  104  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 void portc_isr(void)
//  106 {
portc_isr:
        PUSH     {R7,LR}
//  107   if(PORTC_ISFR & PORT_ISFR_ISF(GPIO_PIN(5)))
        LDR.N    R0,??DataTable7_14  ;; 0x4004b0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??portc_isr_0
//  108   {
//  109      printf("SW6 Pressed\n");
        ADR.W    R0,`?<Constant "SW6 Pressed\\n">`
        BL       printf
//  110   }
//  111   if(PORTC_ISFR & PORT_ISFR_ISF(GPIO_PIN(13)))
??portc_isr_0:
        LDR.N    R0,??DataTable7_14  ;; 0x4004b0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BPL.N    ??portc_isr_1
//  112   {
//  113      printf("SW7 Pressed\n");
        ADR.W    R0,`?<Constant "SW7 Pressed\\n">`
        BL       printf
//  114   }
//  115   PORTC_ISFR=0xFFFFFFFF;  //Clear Port C ISR flags
??portc_isr_1:
        LDR.N    R0,??DataTable7_14  ;; 0x4004b0a0
        MOVS     R1,#-1
        STR      R1,[R0, #+0]
//  116 }
        POP      {R0,PC}          ;; return
//  117 
//  118 /*
//  119  * ISR for PORTE interrupts
//  120  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  121 void porte_isr(void)
//  122 {
//  123   PORTE_ISFR=0xFFFFFFFF;  //Clear Port E ISR flags
porte_isr:
        LDR.N    R0,??DataTable7_15  ;; 0x4004d0a0
        MOVS     R1,#-1
        STR      R1,[R0, #+0]
//  124 }
        BX       LR               ;; return
//  125 
//  126 /*
//  127  * ISR for PORTA interrupts
//  128  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  129 void porta_isr(void)
//  130 {
//  131   PORTA_ISFR=0xFFFFFFFF;  //Clear Port A ISR flags
porta_isr:
        LDR.N    R0,??DataTable7_16  ;; 0x400490a0
        MOVS     R1,#-1
        STR      R1,[R0, #+0]
//  132 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_1:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_2:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_3:
        DC32     0x400ff08c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_4:
        DC32     0x400ff090

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_5:
        DC32     0x4004b014

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_6:
        DC32     0xa0103

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_7:
        DC32     0x4004b034

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_8:
        DC32     0x4004a02c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_9:
        DC32     0x4004b01c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_10:
        DC32     0x4004b020

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_11:
        DC32     0x4004b024

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_12:
        DC32     0x400ff054

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_13:
        DC32     0x400ff094

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_14:
        DC32     0x4004b0a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_15:
        DC32     0x4004d0a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_16:
        DC32     0x400490a0
//  133 
//  134 
//  135 /*
//  136  * Function to provide a short delay
//  137  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  138 void delay()
//  139 {
//  140   unsigned int i, n;
//  141   for(i=0;i<30000;i++)
delay:
        MOVS     R0,#+0
        B.N      ??delay_0
//  142   {
//  143     for(n=0;n<200;n++)
//  144     {
//  145       asm("nop");
??delay_1:
        nop              
//  146     }
        ADDS     R1,R1,#+1
??delay_2:
        CMP      R1,#+200
        BCC.N    ??delay_1
        ADDS     R0,R0,#+1
??delay_0:
        MOVW     R1,#+30000
        CMP      R0,R1
        BCS.N    ??delay_3
        MOVS     R1,#+0
        B.N      ??delay_2
//  147   }
//  148 }
??delay_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "TWR-K40X256 GPIO Exam...">`:
        ; Initializer data, 28 bytes
        DC8 84, 87, 82, 45, 75, 52, 48, 88, 50, 53
        DC8 54, 32, 71, 80, 73, 79, 32, 69, 120, 97
        DC8 109, 112, 108, 101, 33, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "SW6 Pressed\\n">`:
        ; Initializer data, 16 bytes
        DC8 83, 87, 54, 32, 80, 114, 101, 115, 115, 101
        DC8 100, 10, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "SW7 Pressed\\n">`:
        ; Initializer data, 16 bytes
        DC8 83, 87, 55, 32, 80, 114, 101, 115, 115, 101
        DC8 100, 10, 0, 0, 0, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 412 bytes in section .text
// 
// 412 bytes of CODE memory
//
//Errors: none
//Warnings: none
