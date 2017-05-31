///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:31 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\cpu\start.c                                /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\cpu\start.c" -D IAR -D FRDM -D EX2 -lCN    /
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
//                    st\start.s                                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME start

        #define SHT_PROGBITS 0x1

        EXTERN common_startup
        EXTERN main
        EXTERN printf
        EXTERN sysinit

        PUBLIC cpu_identify
        PUBLIC flash_identify
        PUBLIC start

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\cpu\start.c
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
//   12 #include "rcm.h"
//   13 #include "adc.h"
//   14 
//   15 /********************************************************************/
//   16 /*!
//   17  * \brief   Kinetis Start
//   18  * \return  None
//   19  *
//   20  * This function calls all of the needed starup routines and then 
//   21  * branches to the main process.
//   22  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 void start(void)
//   24 { 
//   25     // If the project is targeting the KL04 reference design, don't perform
//   26     // the usual startup code.
//   27   
//   28 	/* Disable the watchdog timer */
//   29     SIM_COPC = 0x00;
start:
        LDR      R0,??DataTable2  ;; 0x40048100
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   30 
//   31 	/* Copy any vector or data sections that need to be in RAM */
//   32 	common_startup();
        BL       common_startup
//   33 
//   34 	/* Perform processor initialization */
//   35 	sysinit();
        BL       sysinit
//   36         
//   37 #ifdef DEBUG_PRINT
//   38     printf("                \r\n");
//   39 	
//   40 	/* Determine the last cause(s) of reset */
//   41 	outSRS();	
//   42 	
//   43 	/* Determine specific Kinetis device and revision */
//   44 	cpu_identify();
//   45 #endif	
//   46 	/* Jump to main process */
//   47 	main();
        BL       main
//   48 
//   49 	/* No actions to perform after this so wait forever */
//   50 	while(1);
??start_0:
        B        ??start_0
//   51 }
//   52 /********************************************************************/
//   53 /*!
//   54  * \brief   Kinetis Identify
//   55  * \return  None
//   56  *
//   57  * This is primarly a reporting function that displays information
//   58  * about the specific CPU to the default terminal including:
//   59  * - Kinetis family
//   60  * - package
//   61  * - die revision
//   62  * - P-flash size
//   63  * - Ram size
//   64  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 void cpu_identify (void)
//   66 {
cpu_identify:
        PUSH     {R7,LR}
//   67   uint16 temp;
//   68     /* Determine the Kinetis family */
//   69     switch((SIM_SDID & SIM_SDID_FAMID(0x7))>>SIM_SDID_FAMID_SHIFT) 
        LDR      R0,??DataTable2_1  ;; 0x40048024
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+28
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+0
        BEQ      ??cpu_identify_0
        CMP      R0,#+2
        BEQ      ??cpu_identify_1
        BCC      ??cpu_identify_2
        CMP      R0,#+4
        BEQ      ??cpu_identify_3
        BCC      ??cpu_identify_4
        B        ??cpu_identify_5
//   70     {  
//   71     	case 0x0:
//   72     		printf("\nK0");
??cpu_identify_0:
        ADR      R0,??DataTable2_2  ;; "\nK0"
        BL       printf
//   73     		break;
        B        ??cpu_identify_6
//   74     	case 0x1:
//   75     		printf("\nK1");
??cpu_identify_2:
        ADR      R0,??DataTable2_3  ;; "\nK1"
        BL       printf
//   76     		break;
        B        ??cpu_identify_6
//   77     	case 0x2:
//   78     		printf("\nK2");
??cpu_identify_1:
        ADR      R0,??DataTable2_4  ;; "\nK2"
        BL       printf
//   79     		break;
        B        ??cpu_identify_6
//   80     	case 0x3:
//   81     		printf("\nK3");
??cpu_identify_4:
        ADR      R0,??DataTable2_5  ;; "\nK3"
        BL       printf
//   82     		break;
        B        ??cpu_identify_6
//   83     	case 0x4:
//   84     		printf("\nK4");
??cpu_identify_3:
        ADR      R0,??DataTable2_6  ;; "\nK4"
        BL       printf
//   85     		break;
        B        ??cpu_identify_6
//   86 	default:
//   87 		printf("\nUnrecognized Kinetis family device.\n");  
??cpu_identify_5:
        LDR      R0,??DataTable2_7
        BL       printf
//   88 		break;  	
//   89     }
//   90     
//   91     /* Determine Sub-Family ID */
//   92     switch((SIM_SDID & SIM_SDID_SUBFAMID(0x7))>>SIM_SDID_SUBFAMID_SHIFT) 
??cpu_identify_6:
        LDR      R0,??DataTable2_1  ;; 0x40048024
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+4
        BEQ      ??cpu_identify_7
        CMP      R0,#+5
        BEQ      ??cpu_identify_8
        B        ??cpu_identify_9
//   93     {  
//   94     	case 0x4:
//   95     		printf("4");
??cpu_identify_7:
        ADR      R0,??DataTable2_8  ;; "4"
        BL       printf
//   96     		break;
        B        ??cpu_identify_10
//   97     	case 0x5:
//   98     		printf("5");
??cpu_identify_8:
        ADR      R0,??DataTable2_9  ;; "5"
        BL       printf
//   99     		break;
        B        ??cpu_identify_10
//  100 	default:
//  101 		printf("\nUnrecognized Kinetis sub-family device.\n");  
??cpu_identify_9:
        LDR      R0,??DataTable2_10
        BL       printf
//  102 		break;  	
//  103     }
//  104     
//  105     /* Determine the package size */
//  106     switch((SIM_SDID & SIM_SDID_PINID(0xF))>>SIM_SDID_PINID_SHIFT) 
??cpu_identify_10:
        LDR      R0,??DataTable2_1  ;; 0x40048024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        CMP      R0,#+6
        BEQ      ??cpu_identify_11
        BCC      ??cpu_identify_12
        CMP      R0,#+8
        BEQ      ??cpu_identify_13
        BCC      ??cpu_identify_14
        CMP      R0,#+10
        BEQ      ??cpu_identify_15
        BCC      ??cpu_identify_16
        B        ??cpu_identify_12
//  107     {  
//  108     		break;
//  109     	case 0x6:
//  110     		printf("80pin       ");
??cpu_identify_11:
        LDR      R0,??DataTable2_11
        BL       printf
//  111     		break;
        B        ??cpu_identify_17
//  112     	case 0x7:
//  113     		printf("81pin       ");
??cpu_identify_14:
        LDR      R0,??DataTable2_12
        BL       printf
//  114     		break;
        B        ??cpu_identify_17
//  115     	case 0x8:
//  116     		printf("100pin      ");
??cpu_identify_13:
        LDR      R0,??DataTable2_13
        BL       printf
//  117     		break;
        B        ??cpu_identify_17
//  118     	case 0x9:
//  119     		printf("121pin      ");
??cpu_identify_16:
        LDR      R0,??DataTable2_14
        BL       printf
//  120     		break;
        B        ??cpu_identify_17
//  121     	case 0xA:
//  122     		printf("144pin      ");
??cpu_identify_15:
        LDR      R0,??DataTable2_15
        BL       printf
//  123     		break;
        B        ??cpu_identify_17
//  124 	default:
//  125 		printf("\nUnrecognized Kinetis package code.      ");  
??cpu_identify_12:
        LDR      R0,??DataTable2_16
        BL       printf
//  126 		break;  	
//  127     }
//  128     
//  129     /* Determine Attribute ID */
//  130    /*
//  131     switch((SIM_SDID & SIM_SDID_ATTRID(0x7))>>SIM_SDID_ATTRID_SHIFT) 
//  132     {  
//  133     	case 0x1:
//  134     		printf(" Low Power Line with Cortex M0+\n\n");
//  135     		break;
//  136 	default:
//  137 		printf("\nUnrecognized Kinetis family attribute.\n");  
//  138 		break;  	
//  139     }
//  140     */
//  141     /* Determine the System SRAM Size */
//  142     switch((SIM_SDID & SIM_SDID_SRAMSIZE(0x7))>>SIM_SDID_SRAMSIZE_SHIFT) 
??cpu_identify_17:
        LDR      R0,??DataTable2_1  ;; 0x40048024
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+0
        BEQ      ??cpu_identify_18
        CMP      R0,#+2
        BEQ      ??cpu_identify_19
        BCC      ??cpu_identify_20
        CMP      R0,#+4
        BEQ      ??cpu_identify_21
        BCC      ??cpu_identify_22
        CMP      R0,#+6
        BEQ      ??cpu_identify_23
        BCC      ??cpu_identify_24
        CMP      R0,#+7
        BEQ      ??cpu_identify_25
        B        ??cpu_identify_26
//  143     {  
//  144     	case 0x0:
//  145           printf("SRAM Size: 0.5 KB\n");
??cpu_identify_18:
        LDR      R0,??DataTable2_17
        BL       printf
//  146     		break;
        B        ??cpu_identify_27
//  147         case 0x1:
//  148           printf("SRAM Size:  1 KB\n");
??cpu_identify_20:
        LDR      R0,??DataTable2_18
        BL       printf
//  149           break;
        B        ??cpu_identify_27
//  150         case 0x2:
//  151           printf("SRAM Size:  2 KB\n");
??cpu_identify_19:
        LDR      R0,??DataTable2_19
        BL       printf
//  152           break;
        B        ??cpu_identify_27
//  153         case 0x3:
//  154           printf("SRAM Size:  4 KB\n");
??cpu_identify_22:
        LDR      R0,??DataTable2_20
        BL       printf
//  155           break;
        B        ??cpu_identify_27
//  156         case 0x4:
//  157           printf("SRAM Size:  8 KB\n");
??cpu_identify_21:
        LDR      R0,??DataTable2_21
        BL       printf
//  158           break;
        B        ??cpu_identify_27
//  159         case 0x5:
//  160           printf("SRAM Size:  16 KB\n");
??cpu_identify_24:
        LDR      R0,??DataTable2_22
        BL       printf
//  161           break;
        B        ??cpu_identify_27
//  162         case 0x6:
//  163           printf("SRAM Size:  32 KB\n");
??cpu_identify_23:
        LDR      R0,??DataTable2_23
        BL       printf
//  164           break;
        B        ??cpu_identify_27
//  165         case 0x7:
//  166           printf("SRAM Size:  64 KB\n");
??cpu_identify_25:
        LDR      R0,??DataTable2_24
        BL       printf
//  167           break;
        B        ??cpu_identify_27
//  168 	default:
//  169 		printf("\nUnrecognized SRAM Size.\n");  
??cpu_identify_26:
        LDR      R0,??DataTable2_25
        BL       printf
//  170 		break;  	
//  171     }                
//  172 
//  173     /* Determine the revision ID */
//  174     temp = ((SIM_SDID_REVID(0xF))>>SIM_SDID_REVID_SHIFT);
??cpu_identify_27:
        MOVS     R1,#+15
//  175     printf("Silicon rev %d\n ", temp);
        UXTH     R1,R1
        LDR      R0,??DataTable2_26
        BL       printf
//  176     
//  177     /* Determine the flash revision */
//  178     //flash_identify();    
//  179     
//  180     /* Determine the P-flash size */
//  181   switch((SIM_FCFG1 & SIM_FCFG1_PFSIZE(0xF))>>SIM_FCFG1_PFSIZE_SHIFT)
        LDR      R0,??DataTable2_27  ;; 0x4004804c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        CMP      R0,#+0
        BEQ      ??cpu_identify_28
        CMP      R0,#+1
        BEQ      ??cpu_identify_29
        CMP      R0,#+3
        BEQ      ??cpu_identify_30
        CMP      R0,#+5
        BEQ      ??cpu_identify_31
        CMP      R0,#+7
        BEQ      ??cpu_identify_32
        CMP      R0,#+9
        BEQ      ??cpu_identify_33
        CMP      R0,#+15
        BEQ      ??cpu_identify_34
        B        ??cpu_identify_35
//  182     {
//  183   	case 0x0:
//  184     		printf("Flash size:  8 KB program flash, 0.25 KB protection region\n");
??cpu_identify_28:
        LDR      R0,??DataTable2_28
        BL       printf
//  185     		break;
        B        ??cpu_identify_36
//  186     	case 0x1:
//  187     		printf("Flash size:  16 KB program flash, 0.5 KB protection region\n");
??cpu_identify_29:
        LDR      R0,??DataTable2_29
        BL       printf
//  188     		break;
        B        ??cpu_identify_36
//  189         case 0x3:
//  190     		printf("Flash size:  32 KB program flash, 1 KB protection region\n");
??cpu_identify_30:
        LDR      R0,??DataTable2_30
        BL       printf
//  191     		break;
        B        ??cpu_identify_36
//  192     	case 0x5:
//  193     		printf("Flash size:  64 KB program flash, 2 KB protection region\n");
??cpu_identify_31:
        LDR      R0,??DataTable2_31
        BL       printf
//  194     		break;
        B        ??cpu_identify_36
//  195         case 0x7:
//  196     		printf("Flash size:  128 KB program flash, 4 KB protection region\n");
??cpu_identify_32:
        LDR      R0,??DataTable2_32
        BL       printf
//  197     		break;
        B        ??cpu_identify_36
//  198         case 0x9:
//  199     		printf("Flash size:  256 KB program flash, 4 KB protection region\n");
??cpu_identify_33:
        LDR      R0,??DataTable2_33
        BL       printf
//  200     		break;
        B        ??cpu_identify_36
//  201         case 0xF:
//  202     		printf("Flash size:  128 KB program flash, 4 KB protection region\n");
??cpu_identify_34:
        LDR      R0,??DataTable2_32
        BL       printf
//  203     		break;
        B        ??cpu_identify_36
//  204 	default:
//  205 		printf("ERR!! Undefined flash size\n");  
??cpu_identify_35:
        LDR      R0,??DataTable2_34
        BL       printf
//  206 		break;  	  		
//  207     }
//  208 }
??cpu_identify_36:
        POP      {R0,PC}          ;; return
//  209 /********************************************************************/
//  210 /*!
//  211  * \brief   flash Identify
//  212  * \return  None
//  213  *
//  214  * This is primarly a reporting function that displays information
//  215  * about the specific flash parameters and flash version ID for 
//  216  * the current device. These parameters are obtained using a special
//  217  * flash command call "read resource." The first four bytes returned
//  218  * are the flash parameter revision, and the second four bytes are
//  219  * the flash version ID.
//  220  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  221 void flash_identify (void)
//  222 {
flash_identify:
        PUSH     {LR}
//  223     /* Get the flash parameter version */
//  224 
//  225     /* Write the flash FCCOB registers with the values for a read resource command */
//  226     FTFA_FCCOB0 = 0x03;
        LDR      R0,??DataTable2_35  ;; 0x40020007
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  227     FTFA_FCCOB1 = 0x00;
        LDR      R0,??DataTable2_36  ;; 0x40020006
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  228     FTFA_FCCOB2 = 0x00;
        LDR      R0,??DataTable2_37  ;; 0x40020005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  229     FTFA_FCCOB3 = 0x00;
        LDR      R0,??DataTable2_38  ;; 0x40020004
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  230     FTFA_FCCOB8 = 0x01;
        LDR      R0,??DataTable2_39  ;; 0x4002000f
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  231 
//  232     /* All required FCCOBx registers are written, so launch the command */
//  233     FTFA_FSTAT = FTFA_FSTAT_CCIF_MASK;
        LDR      R0,??DataTable2_40  ;; 0x40020000
        MOVS     R1,#+128
        STRB     R1,[R0, #+0]
//  234 
//  235     /* Wait for the command to complete */
//  236     while(!(FTFA_FSTAT & FTFA_FSTAT_CCIF_MASK));
??flash_identify_0:
        LDR      R0,??DataTable2_40  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL      ??flash_identify_0
//  237     
//  238 //    printf("Flash parameter version %d.%d.%d.%d\n",FTFA_FCCOB4,FTFA_FCCOB5,FTFA_FCCOB6,FTFA_FCCOB7);
//  239 
//  240     /* Get the flash version ID */   
//  241 
//  242     /* Write the flash FCCOB registers with the values for a read resource command */
//  243     FTFA_FCCOB0 = 0x03;
        LDR      R0,??DataTable2_35  ;; 0x40020007
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  244     FTFA_FCCOB1 = 0x00;
        LDR      R0,??DataTable2_36  ;; 0x40020006
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  245     FTFA_FCCOB2 = 0x00;
        LDR      R0,??DataTable2_37  ;; 0x40020005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  246     FTFA_FCCOB3 = 0x04;
        LDR      R0,??DataTable2_38  ;; 0x40020004
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
//  247     FTFA_FCCOB8 = 0x01;
        LDR      R0,??DataTable2_39  ;; 0x4002000f
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  248 
//  249     /* All required FCCOBx registers are written, so launch the command */
//  250     FTFA_FSTAT = FTFA_FSTAT_CCIF_MASK;
        LDR      R0,??DataTable2_40  ;; 0x40020000
        MOVS     R1,#+128
        STRB     R1,[R0, #+0]
//  251 
//  252     /* Wait for the command to complete */
//  253     while(!(FTFA_FSTAT & FTFA_FSTAT_CCIF_MASK));
??flash_identify_1:
        LDR      R0,??DataTable2_40  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL      ??flash_identify_1
//  254 
//  255 //    printf("Flash version ID %d.%d.%d.%d\n",FTFA_FCCOB4,FTFA_FCCOB5,FTFA_FCCOB6,FTFA_FCCOB7);  
//  256 }
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40048100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x40048024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC8      "\nK0"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC8      "\nK1"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC8      "\nK2"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC8      "\nK3"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC8      "\nK4"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     `?<Constant "\\nUnrecognized Kinetis...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC8      "4",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC8      "5",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     `?<Constant "\\nUnrecognized Kinetis...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     `?<Constant "80pin       ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     `?<Constant "81pin       ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     `?<Constant "100pin      ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     `?<Constant "121pin      ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     `?<Constant "144pin      ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     `?<Constant "\\nUnrecognized Kinetis...">_2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     `?<Constant "SRAM Size: 0.5 KB\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     `?<Constant "SRAM Size:  1 KB\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     `?<Constant "SRAM Size:  2 KB\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     `?<Constant "SRAM Size:  4 KB\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     `?<Constant "SRAM Size:  8 KB\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     `?<Constant "SRAM Size:  16 KB\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     `?<Constant "SRAM Size:  32 KB\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     `?<Constant "SRAM Size:  64 KB\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     `?<Constant "\\nUnrecognized SRAM Si...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_26:
        DC32     `?<Constant "Silicon rev %d\\n ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_27:
        DC32     0x4004804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_28:
        DC32     `?<Constant "Flash size:  8 KB pro...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_29:
        DC32     `?<Constant "Flash size:  16 KB pr...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_30:
        DC32     `?<Constant "Flash size:  32 KB pr...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_31:
        DC32     `?<Constant "Flash size:  64 KB pr...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_32:
        DC32     `?<Constant "Flash size:  128 KB p...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_33:
        DC32     `?<Constant "Flash size:  256 KB p...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_34:
        DC32     `?<Constant "ERR!! Undefined flash...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_35:
        DC32     0x40020007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_36:
        DC32     0x40020006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_37:
        DC32     0x40020005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_38:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_39:
        DC32     0x4002000f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_40:
        DC32     0x40020000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\012K0"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\012K1"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\012K2"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\012K3"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\012K4"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nUnrecognized Kinetis...">`:
        DATA
        DC8 "\012Unrecognized Kinetis family device.\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "4"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "5"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nUnrecognized Kinetis...">_1`:
        DATA
        DC8 "\012Unrecognized Kinetis sub-family device.\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "80pin       ">`:
        DATA
        DC8 "80pin       "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "81pin       ">`:
        DATA
        DC8 "81pin       "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "100pin      ">`:
        DATA
        DC8 "100pin      "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "121pin      ">`:
        DATA
        DC8 "121pin      "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "144pin      ">`:
        DATA
        DC8 "144pin      "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nUnrecognized Kinetis...">_2`:
        DATA
        DC8 "\012Unrecognized Kinetis package code.      "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SRAM Size: 0.5 KB\\n">`:
        DATA
        DC8 "SRAM Size: 0.5 KB\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SRAM Size:  1 KB\\n">`:
        DATA
        DC8 "SRAM Size:  1 KB\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SRAM Size:  2 KB\\n">`:
        DATA
        DC8 "SRAM Size:  2 KB\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SRAM Size:  4 KB\\n">`:
        DATA
        DC8 "SRAM Size:  4 KB\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SRAM Size:  8 KB\\n">`:
        DATA
        DC8 "SRAM Size:  8 KB\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SRAM Size:  16 KB\\n">`:
        DATA
        DC8 "SRAM Size:  16 KB\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SRAM Size:  32 KB\\n">`:
        DATA
        DC8 "SRAM Size:  32 KB\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SRAM Size:  64 KB\\n">`:
        DATA
        DC8 "SRAM Size:  64 KB\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nUnrecognized SRAM Si...">`:
        DATA
        DC8 "\012Unrecognized SRAM Size.\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Silicon rev %d\\n ">`:
        DATA
        DC8 "Silicon rev %d\012 "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Flash size:  8 KB pro...">`:
        DATA
        DC8 46H, 6CH, 61H, 73H, 68H, 20H, 73H, 69H
        DC8 7AH, 65H, 3AH, 20H, 20H, 38H, 20H, 4BH
        DC8 42H, 20H, 70H, 72H, 6FH, 67H, 72H, 61H
        DC8 6DH, 20H, 66H, 6CH, 61H, 73H, 68H, 2CH
        DC8 20H, 30H, 2EH, 32H, 35H, 20H, 4BH, 42H
        DC8 20H, 70H, 72H, 6FH, 74H, 65H, 63H, 74H
        DC8 69H, 6FH, 6EH, 20H, 72H, 65H, 67H, 69H
        DC8 6FH, 6EH, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Flash size:  16 KB pr...">`:
        DATA
        DC8 46H, 6CH, 61H, 73H, 68H, 20H, 73H, 69H
        DC8 7AH, 65H, 3AH, 20H, 20H, 31H, 36H, 20H
        DC8 4BH, 42H, 20H, 70H, 72H, 6FH, 67H, 72H
        DC8 61H, 6DH, 20H, 66H, 6CH, 61H, 73H, 68H
        DC8 2CH, 20H, 30H, 2EH, 35H, 20H, 4BH, 42H
        DC8 20H, 70H, 72H, 6FH, 74H, 65H, 63H, 74H
        DC8 69H, 6FH, 6EH, 20H, 72H, 65H, 67H, 69H
        DC8 6FH, 6EH, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Flash size:  32 KB pr...">`:
        DATA
        DC8 46H, 6CH, 61H, 73H, 68H, 20H, 73H, 69H
        DC8 7AH, 65H, 3AH, 20H, 20H, 33H, 32H, 20H
        DC8 4BH, 42H, 20H, 70H, 72H, 6FH, 67H, 72H
        DC8 61H, 6DH, 20H, 66H, 6CH, 61H, 73H, 68H
        DC8 2CH, 20H, 31H, 20H, 4BH, 42H, 20H, 70H
        DC8 72H, 6FH, 74H, 65H, 63H, 74H, 69H, 6FH
        DC8 6EH, 20H, 72H, 65H, 67H, 69H, 6FH, 6EH
        DC8 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Flash size:  64 KB pr...">`:
        DATA
        DC8 46H, 6CH, 61H, 73H, 68H, 20H, 73H, 69H
        DC8 7AH, 65H, 3AH, 20H, 20H, 36H, 34H, 20H
        DC8 4BH, 42H, 20H, 70H, 72H, 6FH, 67H, 72H
        DC8 61H, 6DH, 20H, 66H, 6CH, 61H, 73H, 68H
        DC8 2CH, 20H, 32H, 20H, 4BH, 42H, 20H, 70H
        DC8 72H, 6FH, 74H, 65H, 63H, 74H, 69H, 6FH
        DC8 6EH, 20H, 72H, 65H, 67H, 69H, 6FH, 6EH
        DC8 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Flash size:  128 KB p...">`:
        DATA
        DC8 46H, 6CH, 61H, 73H, 68H, 20H, 73H, 69H
        DC8 7AH, 65H, 3AH, 20H, 20H, 31H, 32H, 38H
        DC8 20H, 4BH, 42H, 20H, 70H, 72H, 6FH, 67H
        DC8 72H, 61H, 6DH, 20H, 66H, 6CH, 61H, 73H
        DC8 68H, 2CH, 20H, 34H, 20H, 4BH, 42H, 20H
        DC8 70H, 72H, 6FH, 74H, 65H, 63H, 74H, 69H
        DC8 6FH, 6EH, 20H, 72H, 65H, 67H, 69H, 6FH
        DC8 6EH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Flash size:  256 KB p...">`:
        DATA
        DC8 46H, 6CH, 61H, 73H, 68H, 20H, 73H, 69H
        DC8 7AH, 65H, 3AH, 20H, 20H, 32H, 35H, 36H
        DC8 20H, 4BH, 42H, 20H, 70H, 72H, 6FH, 67H
        DC8 72H, 61H, 6DH, 20H, 66H, 6CH, 61H, 73H
        DC8 68H, 2CH, 20H, 34H, 20H, 4BH, 42H, 20H
        DC8 70H, 72H, 6FH, 74H, 65H, 63H, 74H, 69H
        DC8 6FH, 6EH, 20H, 72H, 65H, 67H, 69H, 6FH
        DC8 6EH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ERR!! Undefined flash...">`:
        DATA
        DC8 "ERR!! Undefined flash size\012"

        END
//  257 /********************************************************************/
// 
// 828 bytes in section .rodata
// 690 bytes in section .text
// 
// 690 bytes of CODE  memory
// 828 bytes of CONST memory
//
//Errors: none
//Warnings: none
