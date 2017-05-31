///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:30 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\rcm\rcm.c                          /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\drivers\rcm\rcm.c" -D IAR -D FRDM -D EX2   /
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
//                    st\rcm.s                                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME rcm

        #define SHT_PROGBITS 0x1

        EXTERN printf

        PUBLIC outSRS

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\drivers\rcm\rcm.c
//    1 /*
//    2  * File:        rcm.c
//    3  * Purpose:     Provides routines for the reset controller module
//    4  *              
//    5  */
//    6 
//    7 #include "common.h"
//    8 #include "rcm.h"
//    9 
//   10 /* OutSRS routine - checks the value in the SRS registers and sends
//   11  * messages to the terminal announcing the status at the start of the 
//   12  * code.
//   13  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   14 void outSRS(void){                         //[outSRS]
outSRS:
        PUSH     {R7,LR}
//   15 
//   16   
//   17 	if (RCM_SRS1 & RCM_SRS1_SACKERR_MASK)
        LDR      R0,??outSRS_0    ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL      ??outSRS_1
//   18 		printf("Stop Mode Acknowledge Error Reset\n");
        LDR      R0,??outSRS_0+0x4
        BL       printf
//   19 	if (RCM_SRS1 & RCM_SRS1_MDM_AP_MASK)
??outSRS_1:
        LDR      R0,??outSRS_0    ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL      ??outSRS_2
//   20 		printf("MDM-AP Reset\n");
        LDR      R0,??outSRS_0+0x8
        BL       printf
//   21 	if (RCM_SRS1 & RCM_SRS1_SW_MASK)
??outSRS_2:
        LDR      R0,??outSRS_0    ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL      ??outSRS_3
//   22 		printf("Software Reset\n");
        LDR      R0,??outSRS_0+0xC
        BL       printf
//   23 	if (RCM_SRS1 & RCM_SRS1_LOCKUP_MASK)
??outSRS_3:
        LDR      R0,??outSRS_0    ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL      ??outSRS_4
//   24 		printf("Core Lockup Event Reset\n");
        LDR      R0,??outSRS_0+0x10
        BL       printf
//   25 	
//   26 	if (RCM_SRS0 & RCM_SRS0_POR_MASK)
??outSRS_4:
        LDR      R0,??outSRS_0+0x14  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL      ??outSRS_5
//   27 		printf("Power-on Reset\n");
        LDR      R0,??outSRS_0+0x18
        BL       printf
//   28 	if (RCM_SRS0 & RCM_SRS0_PIN_MASK)
??outSRS_5:
        LDR      R0,??outSRS_0+0x14  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL      ??outSRS_6
//   29 		printf("External Pin Reset\n");
        LDR      R0,??outSRS_0+0x1C
        BL       printf
//   30 	if (RCM_SRS0 & RCM_SRS0_WDOG_MASK)
??outSRS_6:
        LDR      R0,??outSRS_0+0x14  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL      ??outSRS_7
//   31 		printf("Watchdog(COP) Reset\n");
        LDR      R0,??outSRS_0+0x20
        BL       printf
//   32 	if (RCM_SRS0 & RCM_SRS0_LOC_MASK)
??outSRS_7:
        LDR      R0,??outSRS_0+0x14  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL      ??outSRS_8
//   33 		printf("Loss of Clock Reset\n");
        LDR      R0,??outSRS_0+0x24
        BL       printf
//   34 	if (RCM_SRS0 & RCM_SRS0_LVD_MASK)
??outSRS_8:
        LDR      R0,??outSRS_0+0x14  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL      ??outSRS_9
//   35 		printf("Low-voltage Detect Reset\n");
        LDR      R0,??outSRS_0+0x28
        BL       printf
//   36 	if (RCM_SRS0 & RCM_SRS0_WAKEUP_MASK)
??outSRS_9:
        LDR      R0,??outSRS_0+0x14  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??outSRS_10
//   37         {
//   38           printf("[outSRS]Wakeup bit set from low power mode exit\n");
        LDR      R0,??outSRS_0+0x2C
        BL       printf
//   39           printf("[outSRS]SMC_PMPROT   = %#02X \r\n", (SMC_PMPROT))  ;
        LDR      R0,??outSRS_0+0x30  ;; 0x4007e000
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1
        LDR      R0,??outSRS_0+0x34
        BL       printf
//   40           printf("[outSRS]SMC_PMCTRL   = %#02X \r\n", (SMC_PMCTRL))  ;
        LDR      R0,??outSRS_0+0x38  ;; 0x4007e001
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1
        LDR      R0,??outSRS_0+0x3C
        BL       printf
//   41           printf("[outSRS]SMC_STOPCTRL   = %#02X \r\n", (SMC_STOPCTRL))  ;
        LDR      R0,??outSRS_0+0x40  ;; 0x4007e002
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1
        LDR      R0,??outSRS_0+0x44
        BL       printf
//   42           printf("[outSRS]SMC_PMSTAT   = %#02X \r\n", (SMC_PMSTAT))  ;
        LDR      R0,??outSRS_0+0x48  ;; 0x4007e003
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1
        LDR      R0,??outSRS_0+0x4C
        BL       printf
//   43 
//   44           if ((SMC_PMCTRL & SMC_PMCTRL_STOPM_MASK)== 3)
        LDR      R0,??outSRS_0+0x38  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+3
        BNE      ??outSRS_11
//   45             printf("[outSRS] LLS exit \n") ;
        LDR      R0,??outSRS_0+0x50
        BL       printf
//   46           if (((SMC_PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC_STOPCTRL & SMC_STOPCTRL_VLLSM_MASK)== 1))
??outSRS_11:
        LDR      R0,??outSRS_0+0x38  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+4
        BNE      ??outSRS_12
        LDR      R0,??outSRS_0+0x40  ;; 0x4007e002
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+1
        BNE      ??outSRS_12
//   47             printf("[outSRS] VLLS1 exit \n") ;
        LDR      R0,??outSRS_0+0x54
        BL       printf
//   48           if (((SMC_PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC_STOPCTRL & SMC_STOPCTRL_VLLSM_MASK)== 2))
??outSRS_12:
        LDR      R0,??outSRS_0+0x38  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+4
        BNE      ??outSRS_13
        LDR      R0,??outSRS_0+0x40  ;; 0x4007e002
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+2
        BNE      ??outSRS_13
//   49             printf("[outSRS] VLLS2 exit \n") ;
        LDR      R0,??outSRS_0+0x58
        BL       printf
//   50           if (((SMC_PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC_STOPCTRL & SMC_STOPCTRL_VLLSM_MASK)== 3))
??outSRS_13:
        LDR      R0,??outSRS_0+0x38  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+4
        BNE      ??outSRS_10
        LDR      R0,??outSRS_0+0x40  ;; 0x4007e002
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+3
        BNE      ??outSRS_10
//   51             printf("[outSRS] VLLS3 exit \n") ; 
        LDR      R0,??outSRS_0+0x5C
        BL       printf
//   52 	}
//   53 
//   54         if ((RCM_SRS0 == 0) && (RCM_SRS1 == 0)) 
??outSRS_10:
        LDR      R0,??outSRS_0+0x14  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        CMP      R0,#+0
        BNE      ??outSRS_14
        LDR      R0,??outSRS_0    ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        CMP      R0,#+0
        BNE      ??outSRS_14
//   55         {
//   56 	       printf("[outSRS]RCM_SRS0 is ZERO   = %#02X \r\n", (RCM_SRS0))  ;
        LDR      R0,??outSRS_0+0x14  ;; 0x4007f000
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1
        LDR      R0,??outSRS_0+0x60
        BL       printf
//   57 	       printf("[outSRS]RCM_SRS1 is ZERO   = %#02X \r\n", (RCM_SRS1))  ;	 
        LDR      R0,??outSRS_0    ;; 0x4007f001
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1
        LDR      R0,??outSRS_0+0x64
        BL       printf
//   58         }
//   59   }
??outSRS_14:
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??outSRS_0:
        DC32     0x4007f001
        DC32     `?<Constant "Stop Mode Acknowledge...">`
        DC32     `?<Constant "MDM-AP Reset\\n">`
        DC32     `?<Constant "Software Reset\\n">`
        DC32     `?<Constant "Core Lockup Event Reset\\n">`
        DC32     0x4007f000
        DC32     `?<Constant "Power-on Reset\\n">`
        DC32     `?<Constant "External Pin Reset\\n">`
        DC32     `?<Constant "Watchdog(COP) Reset\\n">`
        DC32     `?<Constant "Loss of Clock Reset\\n">`
        DC32     `?<Constant "Low-voltage Detect Re...">`
        DC32     `?<Constant "[outSRS]Wakeup bit se...">`
        DC32     0x4007e000
        DC32     `?<Constant "[outSRS]SMC_PMPROT   ...">`
        DC32     0x4007e001
        DC32     `?<Constant "[outSRS]SMC_PMCTRL   ...">`
        DC32     0x4007e002
        DC32     `?<Constant "[outSRS]SMC_STOPCTRL ...">`
        DC32     0x4007e003
        DC32     `?<Constant "[outSRS]SMC_PMSTAT   ...">`
        DC32     `?<Constant "[outSRS] LLS exit \\n">`
        DC32     `?<Constant "[outSRS] VLLS1 exit \\n">`
        DC32     `?<Constant "[outSRS] VLLS2 exit \\n">`
        DC32     `?<Constant "[outSRS] VLLS3 exit \\n">`
        DC32     `?<Constant "[outSRS]RCM_SRS0 is Z...">`
        DC32     `?<Constant "[outSRS]RCM_SRS1 is Z...">`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Stop Mode Acknowledge...">`:
        DATA
        DC8 "Stop Mode Acknowledge Error Reset\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "MDM-AP Reset\\n">`:
        DATA
        DC8 "MDM-AP Reset\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Software Reset\\n">`:
        DATA
        DC8 "Software Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Core Lockup Event Reset\\n">`:
        DATA
        DC8 "Core Lockup Event Reset\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Power-on Reset\\n">`:
        DATA
        DC8 "Power-on Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "External Pin Reset\\n">`:
        DATA
        DC8 "External Pin Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Watchdog(COP) Reset\\n">`:
        DATA
        DC8 "Watchdog(COP) Reset\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Loss of Clock Reset\\n">`:
        DATA
        DC8 "Loss of Clock Reset\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Low-voltage Detect Re...">`:
        DATA
        DC8 "Low-voltage Detect Reset\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[outSRS]Wakeup bit se...">`:
        DATA
        DC8 "[outSRS]Wakeup bit set from low power mode exit\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[outSRS]SMC_PMPROT   ...">`:
        DATA
        DC8 "[outSRS]SMC_PMPROT   = %#02X \015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[outSRS]SMC_PMCTRL   ...">`:
        DATA
        DC8 "[outSRS]SMC_PMCTRL   = %#02X \015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[outSRS]SMC_STOPCTRL ...">`:
        DATA
        DC8 "[outSRS]SMC_STOPCTRL   = %#02X \015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[outSRS]SMC_PMSTAT   ...">`:
        DATA
        DC8 "[outSRS]SMC_PMSTAT   = %#02X \015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[outSRS] LLS exit \\n">`:
        DATA
        DC8 "[outSRS] LLS exit \012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[outSRS] VLLS1 exit \\n">`:
        DATA
        DC8 "[outSRS] VLLS1 exit \012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[outSRS] VLLS2 exit \\n">`:
        DATA
        DC8 "[outSRS] VLLS2 exit \012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[outSRS] VLLS3 exit \\n">`:
        DATA
        DC8 "[outSRS] VLLS3 exit \012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[outSRS]RCM_SRS0 is Z...">`:
        DATA
        DC8 "[outSRS]RCM_SRS0 is ZERO   = %#02X \015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "[outSRS]RCM_SRS1 is Z...">`:
        DATA
        DC8 "[outSRS]RCM_SRS1 is ZERO   = %#02X \015\012"
        DC8 0, 0

        END
//   60 
// 
// 564 bytes in section .rodata
// 464 bytes in section .text
// 
// 464 bytes of CODE  memory
// 564 bytes of CONST memory
//
//Errors: none
//Warnings: none
