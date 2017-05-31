///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.1.52143/W32 for ARM    17/Feb/2011  21:31:24 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å /
//                    [\kinetis-sc\src\cpu\start.c                            /
//    Command line =  "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\src\cpu\start.c" -D IAR -D TWR_K40X256    /
//                    -lCN "D:\Profiles\B17685\My                             /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\RAM_128KB\List\" -lB "D:\Profiles\B17685\My    /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\RAM_128KB\List\" -o "D:\Profiles\B17685\My     /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\RAM_128KB\Obj\" --no_cse --no_unroll           /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0_2\arm\INC\c\DLib_Config_Normal.h" -I                /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\..\..\src\projects\p /
//                    it_dma\" -I "D:\Profiles\B17685\My                      /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\..\..\..\src\common\" -I                       /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\..\..\src\cpu\" -I   /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\..\..\src\cpu\header /
//                    s\" -I "D:\Profiles\B17685\My                           /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\..\..\..\src\drivers\uart\" -I                 /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\..\..\src\drivers\mc /
//                    g\" -I "D:\Profiles\B17685\My                           /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\..\..\..\src\drivers\wdog\" -I                 /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\..\..\src\platforms\ /
//                    " -I "D:\Profiles\B17685\My                             /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\..\" -Ol --use_c++_inline                      /
//    List file    =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å /
//                    [\kinetis-sc\build\iar\pit_dma\RAM_128KB\List\start.s   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME start

        EXTERN common_startup
        EXTERN main
        EXTERN printf
        EXTERN sysinit
        EXTERN wdog_disable

        PUBLIC cpu_indentify
        PUBLIC start

// D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\src\cpu\start.c
//    1 /*
//    2  * File:	start.c
//    3  * Purpose:	Kinetis start up routines. 
//    4  *
//    5  * Notes:		
//    6  */
//    7 
//    8 #include "start.h"
//    9 #include "common.h"
//   10 #include "wdog.h"
//   11 #include "sysinit.h"
//   12 
//   13 /********************************************************************/
//   14 /*!
//   15  * \brief   Kinetis Start
//   16  * \return  None
//   17  *
//   18  * This function calls all of the needed starup routines and then 
//   19  * branches to the main process.
//   20  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void start(void)
//   22 { 
start:
        PUSH     {R7,LR}
//   23 	/* Disable the watchdog timer */
//   24 	wdog_disable();
        BL       wdog_disable
//   25 
//   26 	/* Copy any vector or data sections that need to be in RAM */
//   27 	common_startup();
        BL       common_startup
//   28 
//   29 	/* Perform processor initialization */
//   30 	sysinit();
        BL       sysinit
//   31         
//   32         printf("\n\n");
        ADR.N    R0,??DataTable49  ;; 0x0A, 0x0A, 0x00, 0x00
        BL       printf
//   33 	
//   34 	/* Determine the last cause(s) of reset */
//   35 	if (MC_SRSH & MC_SRSH_SW_MASK)
        LDR.N    R0,??DataTable49_1  ;; 0x4007e000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??start_0
//   36 		printf("Software Reset\n");
        ADR.W    R0,`?<Constant "Software Reset\\n">`
        BL       printf
//   37 	if (MC_SRSH & MC_SRSH_LOCKUP_MASK)
??start_0:
        LDR.N    R0,??DataTable49_1  ;; 0x4007e000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??start_1
//   38 		printf("Core Lockup Event Reset\n");
        ADR.W    R0,`?<Constant "Core Lockup Event Reset\\n">`
        BL       printf
//   39 	if (MC_SRSH & MC_SRSH_JTAG_MASK)
??start_1:
        LDR.N    R0,??DataTable49_1  ;; 0x4007e000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??start_2
//   40 		printf("JTAG Reset\n");
        ADR.W    R0,`?<Constant "JTAG Reset\\n">`
        BL       printf
//   41 	
//   42 	if (MC_SRSL & MC_SRSL_POR_MASK)
??start_2:
        LDR.N    R0,??DataTable49_2  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??start_3
//   43 		printf("Power-on Reset\n");
        ADR.W    R0,`?<Constant "Power-on Reset\\n">`
        BL       printf
//   44 	if (MC_SRSL & MC_SRSL_PIN_MASK)
??start_3:
        LDR.N    R0,??DataTable49_2  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??start_4
//   45 		printf("External Pin Reset\n");
        ADR.W    R0,`?<Constant "External Pin Reset\\n">`
        BL       printf
//   46 	if (MC_SRSL & MC_SRSL_COP_MASK)
??start_4:
        LDR.N    R0,??DataTable49_2  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??start_5
//   47 		printf("Watchdog(COP) Reset\n");
        ADR.W    R0,`?<Constant "Watchdog(COP) Reset\\n">`
        BL       printf
//   48 	if (MC_SRSL & MC_SRSL_LOC_MASK)
??start_5:
        LDR.N    R0,??DataTable49_2  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??start_6
//   49 		printf("Loss of Clock Reset\n");
        ADR.W    R0,`?<Constant "Loss of Clock Reset\\n">`
        BL       printf
//   50 	if (MC_SRSL & MC_SRSL_LVD_MASK)
??start_6:
        LDR.N    R0,??DataTable49_2  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??start_7
//   51 		printf("Low-voltage Detect Reset\n");
        ADR.W    R0,`?<Constant "Low-voltage Detect Re...">`
        BL       printf
//   52 	if (MC_SRSL & MC_SRSL_WAKEUP_MASK)
??start_7:
        LDR.N    R0,??DataTable49_2  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??start_8
//   53 		printf("LLWU Reset\n");	
        ADR.W    R0,`?<Constant "LLWU Reset\\n">`
        BL       printf
//   54 	
//   55 
//   56 	/* Determine specific Kinetis device and revision */
//   57 	cpu_indentify();
??start_8:
        BL       cpu_indentify
//   58 	
//   59 	/* Jump to main process */
//   60 	main();
        BL       main
//   61 
//   62 	/* No actions to perform after this so wait forever */
//   63 	while(1);
??start_9:
        B.N      ??start_9
//   64 }
//   65 /********************************************************************/
//   66 /*!
//   67  * \brief   Kinetis Identify
//   68  * \return  None
//   69  *
//   70  * This is primarly a reporting function that displays information
//   71  * about the specific CPU to the default terminal including:
//   72  * - Kinetis family
//   73  * - package
//   74  * - die revision
//   75  * - P-flash size
//   76  * - Ram size
//   77  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   78 void cpu_indentify (void)
//   79 {
cpu_indentify:
        PUSH     {R7,LR}
//   80     /* Determine the Kinetis family */
//   81     switch((SIM_SDID & SIM_SDID_FAMID(0x7))>>SIM_SDID_FAMID_SHIFT) 
        LDR.N    R0,??DataTable49_3  ;; 0x40048024
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+4
        ANDS     R0,R0,#0x7
        CMP      R0,#+0
        BEQ.N    ??cpu_indentify_0
        CMP      R0,#+2
        BEQ.N    ??cpu_indentify_1
        BCC.N    ??cpu_indentify_2
        CMP      R0,#+4
        BEQ.N    ??cpu_indentify_3
        BCC.N    ??cpu_indentify_4
        B.N      ??cpu_indentify_5
//   82     {  
//   83     	case 0x0:
//   84     		printf("\nK10-");
??cpu_indentify_0:
        ADR.W    R0,`?<Constant "\\nK10-">`
        BL       printf
//   85     		break;
        B.N      ??cpu_indentify_6
//   86     	case 0x1:
//   87     		printf("\nK20-");
??cpu_indentify_2:
        ADR.W    R0,`?<Constant "\\nK20-">`
        BL       printf
//   88     		break;
        B.N      ??cpu_indentify_6
//   89     	case 0x2:
//   90     		printf("\nK30-");
??cpu_indentify_1:
        ADR.W    R0,`?<Constant "\\nK30-">`
        BL       printf
//   91     		break;
        B.N      ??cpu_indentify_6
//   92     	case 0x3:
//   93     		printf("\nK40-");
??cpu_indentify_4:
        ADR.W    R0,`?<Constant "\\nK40-">`
        BL       printf
//   94     		break;
        B.N      ??cpu_indentify_6
//   95     	case 0x4:
//   96     		printf("\nK60-");
??cpu_indentify_3:
        ADR.W    R0,`?<Constant "\\nK60-">`
        BL       printf
//   97     		break;
        B.N      ??cpu_indentify_6
//   98 	default:
//   99 		printf("\nUnrecognized Kinetis family device.\n");  
??cpu_indentify_5:
        ADR.W    R0,`?<Constant "\\nUnrecognized Kinetis...">`
        BL       printf
//  100 		break;  	
//  101     }
//  102 
//  103     /* Determine the package size */
//  104     switch((SIM_SDID & SIM_SDID_PINID(0xF))>>SIM_SDID_PINID_SHIFT) 
??cpu_indentify_6:
        LDR.N    R0,??DataTable49_3  ;; 0x40048024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xF
        CMP      R0,#+2
        BEQ.N    ??cpu_indentify_7
        CMP      R0,#+4
        BEQ.N    ??cpu_indentify_8
        CMP      R0,#+5
        BEQ.N    ??cpu_indentify_9
        CMP      R0,#+6
        BEQ.N    ??cpu_indentify_10
        CMP      R0,#+7
        BEQ.N    ??cpu_indentify_11
        CMP      R0,#+8
        BEQ.N    ??cpu_indentify_12
        CMP      R0,#+9
        BEQ.N    ??cpu_indentify_13
        CMP      R0,#+10
        BEQ.N    ??cpu_indentify_14
        CMP      R0,#+12
        BEQ.N    ??cpu_indentify_15
        CMP      R0,#+14
        BEQ.N    ??cpu_indentify_16
        B.N      ??cpu_indentify_17
//  105     {  
//  106     	case 0x2:
//  107     		printf("32pin\n");
??cpu_indentify_7:
        ADR.W    R0,`?<Constant "32pin\\n">`
        BL       printf
//  108     		break;
        B.N      ??cpu_indentify_18
//  109     	case 0x4:
//  110     		printf("48pin\n");
??cpu_indentify_8:
        ADR.W    R0,`?<Constant "48pin\\n">`
        BL       printf
//  111     		break;
        B.N      ??cpu_indentify_18
//  112     	case 0x5:
//  113     		printf("64pin\n");
??cpu_indentify_9:
        ADR.W    R0,`?<Constant "64pin\\n">`
        BL       printf
//  114     		break;
        B.N      ??cpu_indentify_18
//  115     	case 0x6:
//  116     		printf("80pin\n");
??cpu_indentify_10:
        ADR.W    R0,`?<Constant "80pin\\n">`
        BL       printf
//  117     		break;
        B.N      ??cpu_indentify_18
//  118     	case 0x7:
//  119     		printf("81pin\n");
??cpu_indentify_11:
        ADR.W    R0,`?<Constant "81pin\\n">`
        BL       printf
//  120     		break;
        B.N      ??cpu_indentify_18
//  121     	case 0x8:
//  122     		printf("100pin\n");
??cpu_indentify_12:
        ADR.W    R0,`?<Constant "100pin\\n">`
        BL       printf
//  123     		break;
        B.N      ??cpu_indentify_18
//  124     	case 0x9:
//  125     		printf("104pin\n");
??cpu_indentify_13:
        ADR.W    R0,`?<Constant "104pin\\n">`
        BL       printf
//  126     		break;
        B.N      ??cpu_indentify_18
//  127     	case 0xA:
//  128     		printf("144pin\n");
??cpu_indentify_14:
        ADR.W    R0,`?<Constant "144pin\\n">`
        BL       printf
//  129     		break;
        B.N      ??cpu_indentify_18
//  130     	case 0xC:
//  131     		printf("196pin\n");
??cpu_indentify_15:
        ADR.W    R0,`?<Constant "196pin\\n">`
        BL       printf
//  132     		break;
        B.N      ??cpu_indentify_18
//  133     	case 0xE:
//  134     		printf("256pin\n");
??cpu_indentify_16:
        ADR.W    R0,`?<Constant "256pin\\n">`
        BL       printf
//  135     		break;
        B.N      ??cpu_indentify_18
//  136 	default:
//  137 		printf("\nUnrecognized Kinetis package code.\n");  
??cpu_indentify_17:
        ADR.W    R0,`?<Constant "\\nUnrecognized Kinetis...">_1`
        BL       printf
//  138 		break;  	
//  139     }                
//  140 
//  141     /* Determine the revision ID */
//  142     printf("rev %d\n", SIM_SDID & SIM_SDID_REVID(0xF));
??cpu_indentify_18:
        LDR.N    R0,??DataTable49_3  ;; 0x40048024
        LDR      R0,[R0, #+0]
        ANDS     R1,R0,#0xF000
        ADR.W    R0,`?<Constant "rev %d\\n">`
        BL       printf
//  143     
//  144     /* Determine the P-flash size */
//  145     switch((SIM_FCFG1 & SIM_FCFG1_FSIZE(0xFF))>>SIM_FCFG1_FSIZE_SHIFT)
        LDR.N    R0,??DataTable49_4  ;; 0x4004804c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        CMP      R0,#+0
        BEQ.N    ??cpu_indentify_19
        CMP      R0,#+1
        BEQ.N    ??cpu_indentify_20
        CMP      R0,#+2
        BEQ.N    ??cpu_indentify_21
        CMP      R0,#+3
        BEQ.N    ??cpu_indentify_22
        CMP      R0,#+4
        BEQ.N    ??cpu_indentify_23
        CMP      R0,#+5
        BEQ.N    ??cpu_indentify_24
        CMP      R0,#+6
        BEQ.N    ??cpu_indentify_25
        CMP      R0,#+7
        BEQ.N    ??cpu_indentify_26
        CMP      R0,#+8
        BEQ.N    ??cpu_indentify_27
        CMP      R0,#+9
        BEQ.N    ??cpu_indentify_28
        CMP      R0,#+10
        BEQ.N    ??cpu_indentify_29
        CMP      R0,#+11
        BEQ.N    ??cpu_indentify_30
        CMP      R0,#+12
        BEQ.N    ??cpu_indentify_31
        CMP      R0,#+255
        BEQ.N    ??cpu_indentify_32
        B.N      ??cpu_indentify_33
//  146     {
//  147     	case 0x0:
//  148     		printf("12 kBytes of P-flash	");
??cpu_indentify_19:
        ADR.W    R0,`?<Constant "12 kBytes of P-flash\\t">`
        BL       printf
//  149     		break;
        B.N      ??cpu_indentify_34
//  150     	case 0x1:
//  151     		printf("16 kBytes of P-flash	");
??cpu_indentify_20:
        ADR.W    R0,`?<Constant "16 kBytes of P-flash\\t">`
        BL       printf
//  152     		break;
        B.N      ??cpu_indentify_34
//  153     	case 0x2:
//  154     		printf("32 kBytes of P-flash	");
??cpu_indentify_21:
        ADR.W    R0,`?<Constant "32 kBytes of P-flash\\t">`
        BL       printf
//  155     		break;
        B.N      ??cpu_indentify_34
//  156     	case 0x3:
//  157     		printf("48 kBytes of P-flash	");
??cpu_indentify_22:
        ADR.W    R0,`?<Constant "48 kBytes of P-flash\\t">`
        BL       printf
//  158     		break;
        B.N      ??cpu_indentify_34
//  159     	case 0x4:
//  160     		printf("64 kBytes of P-flash	");
??cpu_indentify_23:
        ADR.W    R0,`?<Constant "64 kBytes of P-flash\\t">`
        BL       printf
//  161     		break;
        B.N      ??cpu_indentify_34
//  162     	case 0x5:
//  163     		printf("96 kBytes of P-flash	");
??cpu_indentify_24:
        ADR.W    R0,`?<Constant "96 kBytes of P-flash\\t">`
        BL       printf
//  164     		break;
        B.N      ??cpu_indentify_34
//  165     	case 0x6:
//  166     		printf("128 kBytes of P-flash	");
??cpu_indentify_25:
        ADR.W    R0,`?<Constant "128 kBytes of P-flash\\t">`
        BL       printf
//  167     		break;
        B.N      ??cpu_indentify_34
//  168     	case 0x7:
//  169     		printf("192 kBytes of P-flash	");
??cpu_indentify_26:
        ADR.W    R0,`?<Constant "192 kBytes of P-flash\\t">`
        BL       printf
//  170     		break;
        B.N      ??cpu_indentify_34
//  171     	case 0x8:
//  172     		printf("256 kBytes of P-flash	");
??cpu_indentify_27:
        ADR.W    R0,`?<Constant "256 kBytes of P-flash\\t">`
        BL       printf
//  173     		break;
        B.N      ??cpu_indentify_34
//  174     	case 0x9:
//  175     		printf("320 kBytes of P-flash	");
??cpu_indentify_28:
        ADR.W    R0,`?<Constant "320 kBytes of P-flash\\t">`
        BL       printf
//  176     		break;
        B.N      ??cpu_indentify_34
//  177     	case 0xA:
//  178     		printf("384 kBytes of P-flash	");
??cpu_indentify_29:
        ADR.W    R0,`?<Constant "384 kBytes of P-flash\\t">`
        BL       printf
//  179     		break;
        B.N      ??cpu_indentify_34
//  180     	case 0xB:
//  181     		printf("448 kBytes of P-flash	");
??cpu_indentify_30:
        ADR.W    R0,`?<Constant "448 kBytes of P-flash\\t">`
        BL       printf
//  182     		break;
        B.N      ??cpu_indentify_34
//  183     	case 0xC:
//  184     		printf("512 kBytes of P-flash	");
??cpu_indentify_31:
        ADR.W    R0,`?<Constant "512 kBytes of P-flash\\t">`
        BL       printf
//  185     		break;
        B.N      ??cpu_indentify_34
//  186     	case 0xFF:
//  187     		printf("Full size P-flash	");
??cpu_indentify_32:
        ADR.W    R0,`?<Constant "Full size P-flash\\t">`
        BL       printf
//  188     		break;
        B.N      ??cpu_indentify_34
//  189 		default:
//  190 			printf("ERR!! Undefined P-flash size\n");  
??cpu_indentify_33:
        ADR.W    R0,`?<Constant "ERR!! Undefined P-fla...">`
        BL       printf
//  191 			break;  		
//  192     }
//  193 
//  194     /* Determine the RAM size */
//  195     switch((SIM_SOPT1 & SIM_SOPT1_RAMSIZE(0xF))>>SIM_SOPT1_RAMSIZE_SHIFT)
??cpu_indentify_34:
        LDR.N    R0,??DataTable49_5  ;; 0x40047000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+12
        ANDS     R0,R0,#0xF
        CMP      R0,#+5
        BEQ.N    ??cpu_indentify_35
        CMP      R0,#+7
        BEQ.N    ??cpu_indentify_36
        CMP      R0,#+8
        BEQ.N    ??cpu_indentify_37
        CMP      R0,#+9
        BEQ.N    ??cpu_indentify_38
        B.N      ??cpu_indentify_39
//  196     {
//  197     	case 0x5:
//  198     		printf(" 32 kBytes of RAM\n\n");
??cpu_indentify_35:
        ADR.W    R0,`?<Constant " 32 kBytes of RAM\\n\\n">`
        BL       printf
//  199     		break;
        B.N      ??cpu_indentify_40
//  200     	case 0x7:
//  201     		printf(" 64 kBytes of RAM\n\n");
??cpu_indentify_36:
        ADR.W    R0,`?<Constant " 64 kBytes of RAM\\n\\n">`
        BL       printf
//  202     		break;
        B.N      ??cpu_indentify_40
//  203     	case 0x8:
//  204     		printf(" 96 kBytes of RAM\n\n");
??cpu_indentify_37:
        ADR.W    R0,`?<Constant " 96 kBytes of RAM\\n\\n">`
        BL       printf
//  205     		break;
        B.N      ??cpu_indentify_40
//  206     	case 0x9:
//  207     		printf(" 128 kBytes of RAM\n\n");
??cpu_indentify_38:
        ADR.W    R0,`?<Constant " 128 kBytes of RAM\\n\\n">`
        BL       printf
//  208     		break;
        B.N      ??cpu_indentify_40
//  209 		default:
//  210 			printf(" ERR!! Undefined RAM size\n\n");  
??cpu_indentify_39:
        ADR.W    R0,`?<Constant " ERR!! Undefined RAM ...">`
        BL       printf
//  211 			break;  		
//  212     }
//  213 }
??cpu_indentify_40:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49:
        DC8      0x0A, 0x0A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_1:
        DC32     0x4007e000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_2:
        DC32     0x4007e001

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_3:
        DC32     0x40048024

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_4:
        DC32     0x4004804c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_5:
        DC32     0x40047000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\n\\n">`:
        ; Initializer data, 4 bytes
        DC8 10, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Software Reset\\n">`:
        ; Initializer data, 16 bytes
        DC8 83, 111, 102, 116, 119, 97, 114, 101, 32, 82
        DC8 101, 115, 101, 116, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Core Lockup Event Reset\\n">`:
        ; Initializer data, 28 bytes
        DC8 67, 111, 114, 101, 32, 76, 111, 99, 107, 117
        DC8 112, 32, 69, 118, 101, 110, 116, 32, 82, 101
        DC8 115, 101, 116, 10, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "JTAG Reset\\n">`:
        ; Initializer data, 12 bytes
        DC8 74, 84, 65, 71, 32, 82, 101, 115, 101, 116
        DC8 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Power-on Reset\\n">`:
        ; Initializer data, 16 bytes
        DC8 80, 111, 119, 101, 114, 45, 111, 110, 32, 82
        DC8 101, 115, 101, 116, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "External Pin Reset\\n">`:
        ; Initializer data, 20 bytes
        DC8 69, 120, 116, 101, 114, 110, 97, 108, 32, 80
        DC8 105, 110, 32, 82, 101, 115, 101, 116, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Watchdog(COP) Reset\\n">`:
        ; Initializer data, 24 bytes
        DC8 87, 97, 116, 99, 104, 100, 111, 103, 40, 67
        DC8 79, 80, 41, 32, 82, 101, 115, 101, 116, 10
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Loss of Clock Reset\\n">`:
        ; Initializer data, 24 bytes
        DC8 76, 111, 115, 115, 32, 111, 102, 32, 67, 108
        DC8 111, 99, 107, 32, 82, 101, 115, 101, 116, 10
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Low-voltage Detect Re...">`:
        ; Initializer data, 28 bytes
        DC8 76, 111, 119, 45, 118, 111, 108, 116, 97, 103
        DC8 101, 32, 68, 101, 116, 101, 99, 116, 32, 82
        DC8 101, 115, 101, 116, 10, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "LLWU Reset\\n">`:
        ; Initializer data, 12 bytes
        DC8 76, 76, 87, 85, 32, 82, 101, 115, 101, 116
        DC8 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nK10-">`:
        ; Initializer data, 8 bytes
        DC8 10, 75, 49, 48, 45, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nK20-">`:
        ; Initializer data, 8 bytes
        DC8 10, 75, 50, 48, 45, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nK30-">`:
        ; Initializer data, 8 bytes
        DC8 10, 75, 51, 48, 45, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nK40-">`:
        ; Initializer data, 8 bytes
        DC8 10, 75, 52, 48, 45, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nK60-">`:
        ; Initializer data, 8 bytes
        DC8 10, 75, 54, 48, 45, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nUnrecognized Kinetis...">`:
        ; Initializer data, 40 bytes
        DC8 10, 85, 110, 114, 101, 99, 111, 103, 110, 105
        DC8 122, 101, 100, 32, 75, 105, 110, 101, 116, 105
        DC8 115, 32, 102, 97, 109, 105, 108, 121, 32, 100
        DC8 101, 118, 105, 99, 101, 46, 10, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "32pin\\n">`:
        ; Initializer data, 8 bytes
        DC8 51, 50, 112, 105, 110, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "48pin\\n">`:
        ; Initializer data, 8 bytes
        DC8 52, 56, 112, 105, 110, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "64pin\\n">`:
        ; Initializer data, 8 bytes
        DC8 54, 52, 112, 105, 110, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "80pin\\n">`:
        ; Initializer data, 8 bytes
        DC8 56, 48, 112, 105, 110, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "81pin\\n">`:
        ; Initializer data, 8 bytes
        DC8 56, 49, 112, 105, 110, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "100pin\\n">`:
        ; Initializer data, 8 bytes
        DC8 49, 48, 48, 112, 105, 110, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "104pin\\n">`:
        ; Initializer data, 8 bytes
        DC8 49, 48, 52, 112, 105, 110, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "144pin\\n">`:
        ; Initializer data, 8 bytes
        DC8 49, 52, 52, 112, 105, 110, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "196pin\\n">`:
        ; Initializer data, 8 bytes
        DC8 49, 57, 54, 112, 105, 110, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "256pin\\n">`:
        ; Initializer data, 8 bytes
        DC8 50, 53, 54, 112, 105, 110, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nUnrecognized Kinetis...">_1`:
        ; Initializer data, 40 bytes
        DC8 10, 85, 110, 114, 101, 99, 111, 103, 110, 105
        DC8 122, 101, 100, 32, 75, 105, 110, 101, 116, 105
        DC8 115, 32, 112, 97, 99, 107, 97, 103, 101, 32
        DC8 99, 111, 100, 101, 46, 10, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "rev %d\\n">`:
        ; Initializer data, 8 bytes
        DC8 114, 101, 118, 32, 37, 100, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "12 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 49, 50, 32, 107, 66, 121, 116, 101, 115, 32
        DC8 111, 102, 32, 80, 45, 102, 108, 97, 115, 104
        DC8 9, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "16 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 49, 54, 32, 107, 66, 121, 116, 101, 115, 32
        DC8 111, 102, 32, 80, 45, 102, 108, 97, 115, 104
        DC8 9, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "32 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 51, 50, 32, 107, 66, 121, 116, 101, 115, 32
        DC8 111, 102, 32, 80, 45, 102, 108, 97, 115, 104
        DC8 9, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "48 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 52, 56, 32, 107, 66, 121, 116, 101, 115, 32
        DC8 111, 102, 32, 80, 45, 102, 108, 97, 115, 104
        DC8 9, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "64 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 54, 52, 32, 107, 66, 121, 116, 101, 115, 32
        DC8 111, 102, 32, 80, 45, 102, 108, 97, 115, 104
        DC8 9, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "96 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 57, 54, 32, 107, 66, 121, 116, 101, 115, 32
        DC8 111, 102, 32, 80, 45, 102, 108, 97, 115, 104
        DC8 9, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "128 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 49, 50, 56, 32, 107, 66, 121, 116, 101, 115
        DC8 32, 111, 102, 32, 80, 45, 102, 108, 97, 115
        DC8 104, 9, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "192 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 49, 57, 50, 32, 107, 66, 121, 116, 101, 115
        DC8 32, 111, 102, 32, 80, 45, 102, 108, 97, 115
        DC8 104, 9, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "256 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 50, 53, 54, 32, 107, 66, 121, 116, 101, 115
        DC8 32, 111, 102, 32, 80, 45, 102, 108, 97, 115
        DC8 104, 9, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "320 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 51, 50, 48, 32, 107, 66, 121, 116, 101, 115
        DC8 32, 111, 102, 32, 80, 45, 102, 108, 97, 115
        DC8 104, 9, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "384 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 51, 56, 52, 32, 107, 66, 121, 116, 101, 115
        DC8 32, 111, 102, 32, 80, 45, 102, 108, 97, 115
        DC8 104, 9, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "448 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 52, 52, 56, 32, 107, 66, 121, 116, 101, 115
        DC8 32, 111, 102, 32, 80, 45, 102, 108, 97, 115
        DC8 104, 9, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "512 kBytes of P-flash\\t">`:
        ; Initializer data, 24 bytes
        DC8 53, 49, 50, 32, 107, 66, 121, 116, 101, 115
        DC8 32, 111, 102, 32, 80, 45, 102, 108, 97, 115
        DC8 104, 9, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Full size P-flash\\t">`:
        ; Initializer data, 20 bytes
        DC8 70, 117, 108, 108, 32, 115, 105, 122, 101, 32
        DC8 80, 45, 102, 108, 97, 115, 104, 9, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "ERR!! Undefined P-fla...">`:
        ; Initializer data, 32 bytes
        DC8 69, 82, 82, 33, 33, 32, 85, 110, 100, 101
        DC8 102, 105, 110, 101, 100, 32, 80, 45, 102, 108
        DC8 97, 115, 104, 32, 115, 105, 122, 101, 10, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant " 32 kBytes of RAM\\n\\n">`:
        ; Initializer data, 20 bytes
        DC8 32, 51, 50, 32, 107, 66, 121, 116, 101, 115
        DC8 32, 111, 102, 32, 82, 65, 77, 10, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant " 64 kBytes of RAM\\n\\n">`:
        ; Initializer data, 20 bytes
        DC8 32, 54, 52, 32, 107, 66, 121, 116, 101, 115
        DC8 32, 111, 102, 32, 82, 65, 77, 10, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant " 96 kBytes of RAM\\n\\n">`:
        ; Initializer data, 20 bytes
        DC8 32, 57, 54, 32, 107, 66, 121, 116, 101, 115
        DC8 32, 111, 102, 32, 82, 65, 77, 10, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant " 128 kBytes of RAM\\n\\n">`:
        ; Initializer data, 24 bytes
        DC8 32, 49, 50, 56, 32, 107, 66, 121, 116, 101
        DC8 115, 32, 111, 102, 32, 82, 65, 77, 10, 10
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant " ERR!! Undefined RAM ...">`:
        ; Initializer data, 28 bytes
        DC8 32, 69, 82, 82, 33, 33, 32, 85, 110, 100
        DC8 101, 102, 105, 110, 101, 100, 32, 82, 65, 77
        DC8 32, 115, 105, 122, 101, 10, 10, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
//  214 /********************************************************************/
//  215 
// 
// 1 618 bytes in section .text
// 
// 1 618 bytes of CODE memory
//
//Errors: none
//Warnings: none
