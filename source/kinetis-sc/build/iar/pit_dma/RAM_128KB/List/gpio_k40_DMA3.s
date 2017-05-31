///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.1.52143/W32 for ARM    17/Feb/2011  21:31:27 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å /
//                    [\kinetis-sc\src\projects\pit_dma\gpio_k40_DMA3.c       /
//    Command line =  "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\src\projects\pit_dma\gpio_k40_DMA3.c" -D  /
//                    IAR -D TWR_K40X256 -lCN "D:\Profiles\B17685\My          /
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
//                    \pit_dma\..\..\..\src\drivers\adc16\" -I                /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\..\..\src\drivers\ua /
//                    rt\" -I "D:\Profiles\B17685\My                          /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\..\..\..\src\drivers\mcg\" -I                  /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\..\..\src\drivers\wd /
//                    og\" -I "D:\Profiles\B17685\My                          /
//                    Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\build\iar /
//                    \pit_dma\..\..\..\src\platforms\" -I                    /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\build\iar\pit_dma\..\" -Ol                /
//                    --use_c++_inline                                        /
//    List file    =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å /
//                    [\kinetis-sc\build\iar\pit_dma\RAM_128KB\List\gpio_k40_ /
//                    DMA3.s                                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME gpio_k40_DMA3

        EXTERN get_value
        EXTERN printf
        EXTERN run_cmd
        EXTERN uif_cmd_help
        EXTERN uif_cmd_set
        EXTERN uif_cmd_show

        PUBLIC Dma_Source_WORD
        PUBLIC Dma_Source_WORD1
        PUBLIC Period
        PUBLIC Period1
        PUBLIC Set_Pit0
        PUBLIC UIF_CMDTAB
        PUBLIC UIF_NUM_CMD
        PUBLIC UIF_NUM_SETCMD
        PUBLIC UIF_SETCMDTAB
        PUBLIC cmd_rd
        PUBLIC cmd_wrt
        PUBLIC diff
        PUBLIC dma_32bit
        PUBLIC dma_config
        PUBLIC dma_error
        PUBLIC init_gpio
        PUBLIC isr_flag
        PUBLIC main
        PUBLIC porta_isr
        PUBLIC portc_isr
        PUBLIC porte_isr
        PUBLIC res_ptr
        PUBLIC tcd
        PUBLIC temp3
        PUBLIC thld1
        PUBLIC thld2

// D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\src\projects\pit_dma\gpio_k40_DMA3.c
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
//   15 #include "common.h"
//   16 #include "adc16.h"
//   17 #include "uif.h"
//   18 #define GPIO_PIN_MASK            0x1Fu
//   19 #define GPIO_PIN(x)              (((1)<<(x & GPIO_PIN_MASK)))
//   20 
//   21 
//   22 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 int isr_flag, dma_error, diff,thld1,thld2, temp3 = 0;
isr_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
dma_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
diff:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
thld1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
thld2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
temp3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 uint32 Dma_Source_WORD[3], Period;
Dma_Source_WORD:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Period:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 uint32 Dma_Source_WORD1[3], Period1;
Dma_Source_WORD1:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Period1:
        DS8 4
//   26 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 int *res_ptr;
res_ptr:
        DS8 4
//   28 #define DMA_TCD_SADDR(x)                            DMA_SADDR_REG(DMA_BASE_PTR,x) 
//   29 #define DMA_TCD_SOFF(x)                             DMA_SOFF_REG(DMA_BASE_PTR,x)
//   30 #define DMA_TCD_ATTR(x)                             DMA_ATTR_REG(DMA_BASE_PTR,x)
//   31 #define DMA_TCD_NBYTES_MLNO(x)                      DMA_NBYTES_MLNO_REG(DMA_BASE_PTR,x)
//   32 #define DMA_TCD_NBYTES_MLOFFNO(x)                   DMA_NBYTES_MLOFFNO_REG(DMA_BASE_PTR,x)
//   33 #define DMA_TCD_NBYTES_MLOFFYES(x)                  DMA_NBYTES_MLOFFYES_REG(DMA_BASE_PTR,x)
//   34 #define DMA_TCD_SLAST(x)                            DMA_SLAST_REG(DMA_BASE_PTR,x)
//   35 #define DMA_TCD_DADDR(x)                            DMA_DADDR_REG(DMA_BASE_PTR,x)
//   36 #define DMA_TCD_DOFF(x)                             DMA_DOFF_REG(DMA_BASE_PTR,x)
//   37 #define DMA_TCD_CITER_ELINKYES(x)                   DMA_CITER_ELINKYES_REG(DMA_BASE_PTR,x)
//   38 #define DMA_TCD_CITER_ELINKNO(x)                    DMA_CITER_ELINKNO_REG(DMA_BASE_PTR,x)
//   39 #define DMA_TCD_DLASTSGA(x)                         DMA_DLAST_SGA_REG(DMA_BASE_PTR,x)
//   40 #define DMA_TCD_CSR(x)                              DMA_CSR_REG(DMA_BASE_PTR,x)
//   41 #define DMA_TCD_BITER_ELINKNO(x)                    DMA_BITER_ELINKNO_REG(DMA_BASE_PTR,x)
//   42 #define DMA_TCD_BITER_ELINKYES(x)                   DMA_BITER_ELINKYES_REG(DMA_BASE_PTR,x)
//   43 //#define DMAMUX_CHCFG(x)                             DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,x)
//   44 
//   45 struct dma_tcd {
//   46 	uint32_t saddr;
//   47 	int16_t soff;
//   48 	uint16_t tcdAttr;
//   49 	uint32_t nbytes;
//   50 	int32_t slast;
//   51 	uint32_t daddr;
//   52 	int16_t doff;
//   53 	uint16_t citer;
//   54 	int32_t dlast_sga;
//   55 	uint16_t csr;	
//   56 	uint16_t biter;
//   57 	int channelno;
//   58 	uint32_t testdata;
//   59 	int loopcount;
//   60     uint32_t link;
//   61 };
//   62 
//   63 enum COMMAND
//   64 {
//   65 	CONFIG_BASIC_XFR,
//   66 	MEM_FILL,
//   67 	DMA_SOFT_START,
//   68 	XFR_OVER_WAIT,
//   69 	CMP_MEM,
//   70 	CONFIG_BASIC_XFR_ERR,
//   71 	MINOR_LOOP_CH_LINK,
//   72 	MAJOR_LOOP_LINK_EN,
//   73 	SLAST_CHECK,
//   74 	DLAST_CHECK,
//   75 	SGA_TEST_CONFIG,
//   76 	SGA_ENB,
//   77 	XFR_WAIT_ERROR_CHECK,
//   78 	ERROR_CLR,
//   79 	INSERT_CPE_ERR,
//   80 	CONFIG_PRIORITY,
//   81 	CHECK_PRI
//   82 };
//   83 
//   84 struct dummy_tcd {
//   85 
//   86 	uint32_t saddr;
//   87 	int16_t soff;
//   88 	uint16_t attr;
//   89 	uint32_t nbytes;
//   90 	int32_t slast;
//   91 	uint32_t daddr;
//   92 	int16_t doff;
//   93 	uint16_t citer;
//   94 	int32_t dlast_sga;
//   95 	uint16_t csr;
//   96 	uint16_t biter;
//   97 	
//   98 };
//   99 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  100 struct dma_tcd tcd;
tcd:
        DS8 48
//  101 
//  102 //Function declarations
//  103 void cmd_rd (int, char **);
//  104 void cmd_wrt (int, char **);
//  105 void init_gpio(void);
//  106 void dma_config(int COMMAND , struct dma_tcd *tcd_value);
//  107 void Set_Pit0(void);
//  108 
//  109 UIF_CMD UIF_CMDTAB[] =
//  110 {
//  111     UIF_CMDS_ALL
//  112     {"rd",0,0,0,cmd_rd, "Register Display",""},
//  113     {"wrt",0,3,0,cmd_wrt, "Write PIT  <register index> <value>"},
//  114 
//  115 };
//  116 
//  117 UIF_SETCMD UIF_SETCMDTAB[] =
//  118 {
//  119     {"sysclk", 0,1,0,""},
//  120 };
//  121 
//  122 const int UIF_NUM_CMD    = UIF_CMDTAB_SIZE;
//  123 const int UIF_NUM_SETCMD = UIF_SETCMDTAB_SIZE;
//  124 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  125 void cmd_rd (int argc, char **argv)
//  126 {
cmd_rd:
        PUSH     {R7,LR}
//  127 
//  128     printf("\n-------------------------------------------\n");
        LDR.W    R0,??DataTable74
        BL       printf
//  129     printf("       PIT Register Read Utility\n");
        LDR.W    R0,??DataTable74_1
        BL       printf
//  130     printf("-------------------------------------------\n");
        LDR.W    R0,??DataTable74_2
        BL       printf
//  131     printf("\n");
        ADR.N    R0,??DataTable71  ;; "\n"
        BL       printf
//  132         printf("Pit0   = %d \r\n", (PIT_LDVAL0));
        LDR.W    R0,??DataTable74_3  ;; 0x40037100
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable74_4
        BL       printf
//  133         printf("Pit1   = %d \r\n", (PIT_LDVAL1));
        LDR.W    R0,??DataTable74_5  ;; 0x40037110
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable79
        BL       printf
//  134         
//  135    
//  136 }// end cmd_rd
        POP      {R0,PC}          ;; return
//  137 
//  138 //******************************************************************************
//  139 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  140 void
//  141 cmd_wrt (int argc, char **argv)
//  142 {
cmd_wrt:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
        MOVS     R4,R1
//  143     uint32 regindex;
//  144     uint32 regvalue;
//  145     
//  146     int result = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  147     res_ptr = &result;
        LDR.W    R0,??DataTable75
        ADD      R1,SP,#+0
        STR      R1,[R0, #+0]
//  148          
//  149     printf("\n-------------------------------------------\n");
        LDR.W    R0,??DataTable74
        BL       printf
//  150     printf(" PWM Write Utility\n");
        LDR.W    R0,??DataTable74_6
        BL       printf
//  151     printf("-------------------------------------------\n");
        LDR.W    R0,??DataTable74_2
        BL       printf
//  152     printf("\n");
        ADR.N    R0,??DataTable71  ;; "\n"
        BL       printf
//  153     printf("Valid 'wrt' syntax:\n");
        LDR.W    R0,??DataTable75_1
        BL       printf
//  154          printf("Set PTD7  Period > wrt  <0> <value(Hz)>\n");
        LDR.W    R0,??DataTable75_2
        BL       printf
//  155          printf("Set PTD7  Duty > wrt  <1> <value(percent)> \n\n");
        LDR.W    R0,??DataTable75_3
        BL       printf
//  156          printf("Set PTA16 Period > wrt  <2> <value(Hz)>\n");
        LDR.W    R0,??DataTable76
        BL       printf
//  157          printf("Set PTA16 Duty > wrt  <3> <value(percent)> \n\n");
        LDR.W    R0,??DataTable76_1
        BL       printf
//  158         
//  159     if (argc != 3)
        CMP      R5,#+3
        BEQ.N    ??cmd_wrt_0
//  160     {
//  161         printf("Valid 'wrt' syntax:\n");
        LDR.W    R0,??DataTable75_1
        BL       printf
//  162         printf("Set PTD7 Period > wrt  <0> <value(Hz)> \n\n");
        LDR.W    R0,??DataTable78
        BL       printf
//  163         printf("Set PTD7 Duty > wrt  <1> <value(percent)> \n\n");
        LDR.W    R0,??DataTable79_1
        BL       printf
//  164         printf("Set PTA16 Period > wrt  <2> <value(Hz)> \n\n");
        LDR.W    R0,??DataTable79_2
        BL       printf
//  165         printf("Set PTA16 Duty > wrt  <4> <value(percent)> \n\n");
        LDR.W    R0,??DataTable79_3
        BL       printf
//  166         return;
        B.N      ??cmd_wrt_1
//  167     }
//  168     else{
//  169       
//  170         regindex = get_value(argv[1],res_ptr,10);
??cmd_wrt_0:
        MOVS     R2,#+10
        LDR.W    R0,??DataTable75
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, #+4]
        BL       get_value
        MOVS     R5,R0
//  171         regvalue = get_value(argv[2],res_ptr,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable75
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, #+8]
        BL       get_value
//  172                 
//  173          if(regvalue<4294967294){        
        CMN      R0,#+2
        BCS.W    ??cmd_wrt_2
//  174               switch (regindex){
        CMP      R5,#+0
        BEQ.N    ??cmd_wrt_3
        CMP      R5,#+2
        BEQ.N    ??cmd_wrt_4
        BCC.N    ??cmd_wrt_5
        CMP      R5,#+3
        BEQ.N    ??cmd_wrt_6
        B.N      ??cmd_wrt_7
//  175                  case 0: Period = 2 * ((48000000/regvalue)/2 -3*32000/regvalue);
??cmd_wrt_3:
        LDR.W    R1,??DataTable79_4  ;; 0x2dc6c00
        UDIV     R1,R1,R0
        LDR.W    R2,??DataTable79_5  ;; 0x17700
        UDIV     R0,R2,R0
        RSBS     R0,R0,R1, LSR #+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable79_6
        STR      R0,[R1, #+0]
//  176                  Dma_Source_WORD[2] = Period - ((Period*50))/100;
        LDR.W    R0,??DataTable79_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable79_6
        LDR      R1,[R1, #+0]
        MOVS     R2,#+50
        MULS     R1,R2,R1
        MOVS     R2,#+100
        UDIV     R1,R1,R2
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable79_7
        STR      R0,[R1, #+8]
//  177                    Dma_Source_WORD[1] = ((Period*50))/100;
        LDR.W    R0,??DataTable79_6
        LDR      R0,[R0, #+0]
        MOVS     R1,#+50
        MULS     R0,R1,R0
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable79_7
        STR      R0,[R1, #+4]
//  178                    break;
        B.N      ??cmd_wrt_8
//  179                  case 1: 
//  180                    
//  181                    Dma_Source_WORD[2] = Period - ((Period*regvalue))/100;
??cmd_wrt_5:
        LDR.W    R1,??DataTable79_6
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable79_6
        LDR      R2,[R2, #+0]
        MULS     R2,R0,R2
        MOVS     R3,#+100
        UDIV     R2,R2,R3
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable79_7
        STR      R1,[R2, #+8]
//  182                    Dma_Source_WORD[1] = ((Period*regvalue))/100;
        LDR.W    R1,??DataTable79_6
        LDR      R1,[R1, #+0]
        MUL      R0,R0,R1
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable79_7
        STR      R0,[R1, #+4]
//  183                    //printf("\nDma_Source_WORD[0] = %d\n", Dma_Source_WORD[0]);
//  184                    printf("\nDma_Source_WORD[1] = %d\n", Dma_Source_WORD[1]);
        LDR.W    R0,??DataTable79_7
        LDR      R1,[R0, #+4]
        LDR.W    R0,??DataTable79_8
        BL       printf
//  185                    printf("Dma_Source_WORD[2] = %d\n\n", Dma_Source_WORD[2]);
        LDR.W    R0,??DataTable79_7
        LDR      R1,[R0, #+8]
        LDR.W    R0,??DataTable79_9
        BL       printf
//  186                     break;
        B.N      ??cmd_wrt_8
//  187                  case 2: Period1 = 2 * ((48000000/regvalue)/2 -3*32000/regvalue);
??cmd_wrt_4:
        LDR.W    R1,??DataTable79_4  ;; 0x2dc6c00
        UDIV     R1,R1,R0
        LDR.W    R2,??DataTable79_5  ;; 0x17700
        UDIV     R0,R2,R0
        RSBS     R0,R0,R1, LSR #+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable79_10
        STR      R0,[R1, #+0]
//  188                    Dma_Source_WORD1[2] = Period1 - ((Period1*50))/100;
        LDR.W    R0,??DataTable79_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable79_10
        LDR      R1,[R1, #+0]
        MOVS     R2,#+50
        MULS     R1,R2,R1
        MOVS     R2,#+100
        UDIV     R1,R1,R2
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable79_11
        STR      R0,[R1, #+8]
//  189                    Dma_Source_WORD1[1] = ((Period1*50))/100;
        LDR.W    R0,??DataTable79_10
        LDR      R0,[R0, #+0]
        MOVS     R1,#+50
        MULS     R0,R1,R0
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable79_11
        STR      R0,[R1, #+4]
//  190                    break;
        B.N      ??cmd_wrt_8
//  191                  case 3: 
//  192                    Dma_Source_WORD1[2] = Period1 - ((Period1*regvalue))/100;
??cmd_wrt_6:
        LDR.W    R1,??DataTable79_10
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable79_10
        LDR      R2,[R2, #+0]
        MULS     R2,R0,R2
        MOVS     R3,#+100
        UDIV     R2,R2,R3
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable79_11
        STR      R1,[R2, #+8]
//  193                    Dma_Source_WORD1[1] = ((Period1*regvalue))/100;
        LDR.W    R1,??DataTable79_10
        LDR      R1,[R1, #+0]
        MUL      R0,R0,R1
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable79_11
        STR      R0,[R1, #+4]
//  194                    //printf("\nDma_Source_WORD[0] = %d\n", Dma_Source_WORD[0]);
//  195                    //printf("\nDma_Source_WORD[1] = %d\n", Dma_Source_WORD1[1]);
//  196                    //printf("Dma_Source_WORD[2] = %d\n\n", Dma_Source_WORD1[2]);
//  197                     break;
        B.N      ??cmd_wrt_8
//  198                  default: break;
??cmd_wrt_7:
        B.N      ??cmd_wrt_8
//  199               } // end switch/case regindex
//  200          } // if
//  201         else 
//  202         printf("Register value not in valid range.\r\n\n");
??cmd_wrt_2:
        LDR.W    R0,??DataTable79_12
        BL       printf
//  203        
//  204     }// end else
//  205 }// end cmd_wrt
??cmd_wrt_8:
??cmd_wrt_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable71:
        DC8      "\n",0x0,0x0
//  206 
//  207 /************************************************************************************ 
//  208 *  DMA 32-bit transmit test 
//  209 *******************************************************************************/
//  210 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  211 void dma_32bit (void)
//  212 {volatile uint32 *tempptr;
dma_32bit:
        PUSH     {R7,LR}
//  213        
//  214         SIM_SCGC6 |= SIM_SCGC6_DMAMUX_MASK;
        LDR.W    R0,??DataTable79_13  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable79_13  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  215         
//  216       
//  217         ///////////////////////////////////////////
//  218         //Set up DMA from PIT0
//  219         ///////////////////////////////////////////
//  220         DMAMUX_CHCFG0|=DMAMUX_CHCFG_SOURCE(52);  //PORTD 
        LDR.W    R0,??DataTable79_14  ;; 0x40021000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x34
        LDR.W    R1,??DataTable79_14  ;; 0x40021000
        STRB     R0,[R1, #+0]
//  221         DMAMUX_CHCFG0 |= DMAMUX_CHCFG_ENBL_MASK|DMAMUX_CHCFG_TRIG_MASK;
        LDR.W    R0,??DataTable79_14  ;; 0x40021000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0xC0
        LDR.W    R1,??DataTable79_14  ;; 0x40021000
        STRB     R0,[R1, #+0]
//  222   
//  223 	printf("\nStarting eDMA 32-bit memory to memory transfer test!\n");
        LDR.W    R0,??DataTable79_15
        BL       printf
//  224         tempptr = &Dma_Source_WORD[0];
        LDR.W    R0,??DataTable79_7
//  225 	
//  226 	tcd.saddr = (uint32_t)tempptr;
        LDR.W    R1,??DataTable79_16
        STR      R0,[R1, #+0]
//  227 	tcd.daddr = 0x400Ff0CC; //ADDRESS of PTD_PTOR
        LDR.W    R0,??DataTable79_16
        LDR.W    R1,??DataTable79_17  ;; 0x400ff0cc
        STR      R1,[R0, #+16]
//  228 	
//  229 	tcd.nbytes = 4;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+4
        STR      R1,[R0, #+8]
//  230 	tcd.tcdAttr = DMA_ATTR_SSIZE(2) | DMA_ATTR_DSIZE(2); //EDMA_TCD_ATTR_SSIZE_32BIT|EDMA_TCD_ATTR_DSIZE_32BIT ;
        LDR.W    R0,??DataTable79_16
        MOVW     R1,#+514
        STRH     R1,[R0, #+6]
//  231 	tcd.soff = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  232 	tcd.doff = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STRH     R1,[R0, #+20]
//  233 	tcd.slast = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  234 	tcd.loopcount = 0x1;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+1
        STR      R1,[R0, #+40]
//  235 	tcd.dlast_sga = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  236 	tcd.csr = 0x0520;
        LDR.W    R0,??DataTable79_16
        MOV      R1,#+1312
        STRH     R1,[R0, #+28]
//  237 	
//  238         tcd.channelno = 0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
//  239     
//  240         dma_config(CONFIG_BASIC_XFR, &tcd);
        LDR.W    R1,??DataTable79_16
        MOVS     R0,#+0
        BL       dma_config
//  241         DMA_ERQ|= 1;
        LDR.W    R0,??DataTable79_18  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable79_18  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  242         
//  243         
//  244         tempptr = &Dma_Source_WORD[1];
        LDR.W    R0,??DataTable79_19
//  245 	
//  246 	tcd.saddr = (uint32_t)tempptr;
        LDR.W    R1,??DataTable79_16
        STR      R0,[R1, #+0]
//  247 	tcd.daddr = 0x40037100; //ADDRESS of PIT_LDVAL0
        LDR.W    R0,??DataTable79_16
        LDR.N    R1,??DataTable74_3  ;; 0x40037100
        STR      R1,[R0, #+16]
//  248 	
//  249 	tcd.nbytes = 4;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+4
        STR      R1,[R0, #+8]
//  250 	tcd.tcdAttr = DMA_ATTR_SSIZE(2) | DMA_ATTR_DSIZE(2); //EDMA_TCD_ATTR_SSIZE_32BIT|EDMA_TCD_ATTR_DSIZE_32BIT ;
        LDR.W    R0,??DataTable79_16
        MOVW     R1,#+514
        STRH     R1,[R0, #+6]
//  251 	tcd.soff = 0x04;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+4
        STRH     R1,[R0, #+4]
//  252 	tcd.doff = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STRH     R1,[R0, #+20]
//  253 	tcd.slast = -8;
        LDR.W    R0,??DataTable79_16
        MVNS     R1,#+7
        STR      R1,[R0, #+12]
//  254 	tcd.loopcount = 0x2;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+2
        STR      R1,[R0, #+40]
//  255 	tcd.dlast_sga = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  256 	tcd.csr = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STRH     R1,[R0, #+28]
//  257         tcd.channelno = 5;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+5
        STR      R1,[R0, #+32]
//  258 	
//  259         dma_config(CONFIG_BASIC_XFR, &tcd);
        LDR.W    R1,??DataTable79_16
        MOVS     R0,#+0
        BL       dma_config
//  260         DMA_ERQ|= 2;
        LDR.W    R0,??DataTable79_18  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable79_18  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  261        
//  262         
//  263         ///////////////////////////////////////////
//  264         //Set up DMA from PIT1
//  265         ///////////////////////////////////////////
//  266         DMAMUX_CHCFG1|=DMAMUX_CHCFG_SOURCE(49);  //PORTA
        LDR.W    R0,??DataTable79_20  ;; 0x40021001
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x31
        LDR.W    R1,??DataTable79_20  ;; 0x40021001
        STRB     R0,[R1, #+0]
//  267         DMAMUX_CHCFG1 |= DMAMUX_CHCFG_ENBL_MASK|DMAMUX_CHCFG_TRIG_MASK; 
        LDR.W    R0,??DataTable79_20  ;; 0x40021001
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0xC0
        LDR.W    R1,??DataTable79_20  ;; 0x40021001
        STRB     R0,[R1, #+0]
//  268   
//  269   
//  270 	printf("\nStarting eDMA 32-bit memory to memory transfer test!\n");
        LDR.W    R0,??DataTable79_15
        BL       printf
//  271         tempptr = &Dma_Source_WORD1[0];
        LDR.W    R0,??DataTable79_11
//  272 	
//  273 	tcd.saddr = (uint32_t)tempptr;
        LDR.W    R1,??DataTable79_16
        STR      R0,[R1, #+0]
//  274 	tcd.daddr = 0x400Ff00C; //ADDRESS of PTA_PTOR
        LDR.W    R0,??DataTable79_16
        LDR.W    R1,??DataTable79_21  ;; 0x400ff00c
        STR      R1,[R0, #+16]
//  275 	
//  276 	tcd.nbytes = 4;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+4
        STR      R1,[R0, #+8]
//  277 	tcd.tcdAttr = DMA_ATTR_SSIZE(2) | DMA_ATTR_DSIZE(2); //EDMA_TCD_ATTR_SSIZE_32BIT|EDMA_TCD_ATTR_DSIZE_32BIT ;
        LDR.W    R0,??DataTable79_16
        MOVW     R1,#+514
        STRH     R1,[R0, #+6]
//  278 	tcd.soff = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  279 	tcd.doff = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STRH     R1,[R0, #+20]
//  280 	tcd.slast = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  281 	tcd.loopcount = 0x1;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+1
        STR      R1,[R0, #+40]
//  282 	tcd.dlast_sga = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  283 	tcd.csr = 0x0620;
        LDR.W    R0,??DataTable79_16
        MOV      R1,#+1568
        STRH     R1,[R0, #+28]
//  284 	
//  285         tcd.channelno = 1;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+1
        STR      R1,[R0, #+32]
//  286     
//  287         dma_config(CONFIG_BASIC_XFR, &tcd);
        LDR.W    R1,??DataTable79_16
        MOVS     R0,#+0
        BL       dma_config
//  288         DMA_ERQ|= 3;
        LDR.W    R0,??DataTable79_18  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3
        LDR.W    R1,??DataTable79_18  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  289 
//  290 
//  291         tempptr = &Dma_Source_WORD1[1];
        LDR.W    R0,??DataTable79_22
//  292 	
//  293 	tcd.saddr = (uint32_t)tempptr;
        LDR.W    R1,??DataTable79_16
        STR      R0,[R1, #+0]
//  294 	tcd.daddr = 0x40037110; //ADDRESS of PIT_LDVAL1
        LDR.W    R0,??DataTable79_16
        LDR.N    R1,??DataTable74_5  ;; 0x40037110
        STR      R1,[R0, #+16]
//  295 	
//  296 	tcd.nbytes = 4;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+4
        STR      R1,[R0, #+8]
//  297 	tcd.tcdAttr = DMA_ATTR_SSIZE(2) | DMA_ATTR_DSIZE(2); //EDMA_TCD_ATTR_SSIZE_32BIT|EDMA_TCD_ATTR_DSIZE_32BIT ;
        LDR.W    R0,??DataTable79_16
        MOVW     R1,#+514
        STRH     R1,[R0, #+6]
//  298 	tcd.soff = 0x04;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+4
        STRH     R1,[R0, #+4]
//  299 	tcd.doff = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STRH     R1,[R0, #+20]
//  300 	tcd.slast = -8;
        LDR.W    R0,??DataTable79_16
        MVNS     R1,#+7
        STR      R1,[R0, #+12]
//  301 	tcd.loopcount = 0x2;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+2
        STR      R1,[R0, #+40]
//  302 	tcd.dlast_sga = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  303 	tcd.csr = 0x0;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+0
        STRH     R1,[R0, #+28]
//  304         tcd.channelno = 6;
        LDR.W    R0,??DataTable79_16
        MOVS     R1,#+6
        STR      R1,[R0, #+32]
//  305 	
//  306         dma_config(CONFIG_BASIC_XFR, &tcd);
        LDR.W    R1,??DataTable79_16
        MOVS     R0,#+0
        BL       dma_config
//  307         DMA_ERQ|= 4;
        LDR.W    R0,??DataTable79_18  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable79_18  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  308        
//  309        
//  310 }
        POP      {R0,PC}          ;; return
//  311 
//  312 //**************************************************************/
//  313 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  314 void main (void)
//  315 {
main:
        PUSH     {R7,LR}
//  316   
//  317           printf("TWR-K40X256 GPIO Example!\n");
        LDR.W    R0,??DataTable79_23
        BL       printf
//  318         
//  319           /* Turn on all port clocks */
//  320           SIM_SCGC5 = SIM_SCGC5_PORTA_MASK | SIM_SCGC5_PORTB_MASK | SIM_SCGC5_PORTC_MASK | SIM_SCGC5_PORTD_MASK | SIM_SCGC5_PORTE_MASK;
        LDR.W    R0,??DataTable79_24  ;; 0x40048038
        MOV      R1,#+15872
        STR      R1,[R0, #+0]
//  321         
//  322           /* Initialize GPIO on TWR-K40X256 */
//  323           init_gpio();
        BL       init_gpio
//  324           
//  325           //PTD
//  326           Dma_Source_WORD[0]= 0x00000080; //7pin toggle
        LDR.W    R0,??DataTable79_7
        MOVS     R1,#+128
        STR      R1,[R0, #+0]
//  327           // 1kHz duty 50% PIT_LDVAL0
//  328           Dma_Source_WORD[1]= 0x00000957;
        LDR.W    R0,??DataTable79_7
        MOVW     R1,#+2391
        STR      R1,[R0, #+4]
//  329           Dma_Source_WORD[2]= 0x00000957;
        LDR.W    R0,??DataTable79_7
        MOVW     R1,#+2391
        STR      R1,[R0, #+8]
//  330           
//  331           //PTA
//  332           Dma_Source_WORD1[0]= 0x00010000; //16pin toggle
        LDR.W    R0,??DataTable79_11
        MOVS     R1,#+65536
        STR      R1,[R0, #+0]
//  333           // 1kHz duty 50% PIT_LDVAL1
//  334           Dma_Source_WORD1[1]= 0x00000957;
        LDR.W    R0,??DataTable79_11
        MOVW     R1,#+2391
        STR      R1,[R0, #+4]
//  335           Dma_Source_WORD1[2]= 0x00000957;
        LDR.W    R0,??DataTable79_11
        MOVW     R1,#+2391
        STR      R1,[R0, #+8]
//  336           
//  337           GPIOD_PTOR = 0x00000080; //PTD7 toggle
        LDR.W    R0,??DataTable79_17  ;; 0x400ff0cc
        MOVS     R1,#+128
        STR      R1,[R0, #+0]
//  338           GPIOA_PTOR =  0x00010000; //PTA16 toggle
        LDR.W    R0,??DataTable79_21  ;; 0x400ff00c
        MOVS     R1,#+65536
        STR      R1,[R0, #+0]
//  339           dma_32bit();  // DMA setting
        BL       dma_32bit
//  340           Set_Pit0(); // PIT module enbale
        BL       Set_Pit0
//  341           PIT_LDVAL0 = 1777;
        LDR.N    R0,??DataTable74_3  ;; 0x40037100
        MOVW     R1,#+1777
        STR      R1,[R0, #+0]
//  342           PIT_LDVAL1 = 1777;
        LDR.N    R0,??DataTable74_5  ;; 0x40037110
        MOVW     R1,#+1777
        STR      R1,[R0, #+0]
//  343           
//  344           PIT_TFLG0 = PIT_TFLG_TIF_MASK;
        LDR.W    R0,??DataTable79_25  ;; 0x4003710c
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  345           PIT_TFLG1 = PIT_TFLG_TIF_MASK;
        LDR.W    R0,??DataTable79_26  ;; 0x4003711c
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  346           GPIOD_PSOR = 0x00000080;  // PTD7 output
        LDR.W    R0,??DataTable79_27  ;; 0x400ff0c4
        MOVS     R1,#+128
        STR      R1,[R0, #+0]
//  347           GPIOA_PSOR = 0x00010000;  // PTA16 output
        LDR.W    R0,??DataTable79_28  ;; 0x400ff004
        MOVS     R1,#+65536
        STR      R1,[R0, #+0]
//  348           PIT_TCTRL1 |= PIT_TCTRL_TEN_MASK;   // start the timer
        LDR.W    R0,??DataTable79_29  ;; 0x40037118
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable79_29  ;; 0x40037118
        STR      R0,[R1, #+0]
//  349           PIT_TCTRL0 |= PIT_TCTRL_TEN_MASK;
        LDR.W    R0,??DataTable79_30  ;; 0x40037108
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable79_30  ;; 0x40037108
        STR      R0,[R1, #+0]
//  350               
//  351   while(1){
//  352               
//  353    
//  354   
//  355     run_cmd();
??main_0:
        BL       run_cmd
        B.N      ??main_0
//  356   
//  357   
//  358   }//While(1)
//  359   
//  360   }//Main
//  361   
//  362   
//  363   
//  364 
//  365 
//  366 /*
//  367  * Initialize GPIO
//  368  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  369 void init_gpio()
//  370 {
//  371   //DMA outputs
//  372   PORTD_PCR7|=(0|PORT_PCR_MUX(1)|PORT_PCR_IRQC(0x3));
init_gpio:
        LDR.W    R0,??DataTable79_31  ;; 0x4004c01c
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable79_32  ;; 0x30100
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable79_31  ;; 0x4004c01c
        STR      R0,[R1, #+0]
//  373   PORTA_PCR16|=(0|PORT_PCR_MUX(1)|PORT_PCR_IRQC(0x3));
        LDR.W    R0,??DataTable79_33  ;; 0x40049040
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable79_32  ;; 0x30100
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable79_33  ;; 0x40049040
        STR      R0,[R1, #+0]
//  374 
//  375 
//  376   //Change PTD7, PTA16 to outputs
//  377   
//  378   GPIOD_PDDR|=GPIO_PDDR_PDD(GPIO_PIN(7));	
        LDR.W    R0,??DataTable79_34  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable79_34  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  379   GPIOA_PDDR|=GPIO_PDDR_PDD(GPIO_PIN(16));	
        LDR.W    R0,??DataTable79_35  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable79_35  ;; 0x400ff014
        STR      R0,[R1, #+0]
//  380 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74:
        DC32     `?<Constant "\\n--------------------...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_1:
        DC32     `?<Constant "       PIT Register R...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_2:
        DC32     `?<Constant "---------------------...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_3:
        DC32     0x40037100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_4:
        DC32     `?<Constant "Pit0   = %d \\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_5:
        DC32     0x40037110

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_6:
        DC32     `?<Constant " PWM Write Utility\\n">`
//  381 /********************************************************************/
//  382 
//  383 //////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  384 void dma_config(int COMMAND , struct dma_tcd *tcd_value)
//  385 {
dma_config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R1
//  386 	int  i=0,j=0;
        MOVS     R5,#+0
        MOVS     R6,#+0
//  387 	
//  388 	switch(COMMAND) 
        CMP      R0,#+0
        BEQ.N    ??dma_config_0
        CMP      R0,#+2
        BEQ.N    ??dma_config_1
        BCC.N    ??dma_config_2
        CMP      R0,#+4
        BEQ.W    ??dma_config_3
        BCC.N    ??dma_config_4
        CMP      R0,#+6
        BEQ.W    ??dma_config_5
        BCC.W    ??dma_config_6
        CMP      R0,#+8
        BEQ.W    ??dma_config_7
        BCC.W    ??dma_config_8
        CMP      R0,#+10
        BEQ.W    ??dma_config_9
        BCC.W    ??dma_config_10
        CMP      R0,#+12
        BEQ.W    ??dma_config_11
        BCC.W    ??dma_config_12
        CMP      R0,#+14
        BEQ.W    ??dma_config_13
        BCC.W    ??dma_config_14
        CMP      R0,#+16
        BEQ.W    ??dma_config_15
        BCC.W    ??dma_config_16
        B.N      ??dma_config_17
//  389 	{
//  390 	  case CONFIG_BASIC_XFR:	
//  391 	    
//  392             i = tcd_value->channelno;
??dma_config_0:
        LDR      R5,[R4, #+32]
//  393             //printf("\nTesting DMA channel "); Print8(i); printf("\n");	   	
//  394             DMA_TCD_SADDR(i) = tcd_value->saddr;
        LSLS     R0,R5,#+5
        LDR.W    R1,??DataTable79_36  ;; 0x40009000
        LDR      R2,[R4, #+0]
        STR      R2,[R0, R1]
//  395 		    
//  396 	    DMA_TCD_ATTR(i) = tcd_value->tcdAttr;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+6]
        STRH     R1,[R0, #+6]
//  397 	        
//  398 	    DMA_TCD_SOFF(i) = tcd_value->soff;	  
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+4]
        STRH     R1,[R0, #+4]
//  399 	       	
//  400 	    DMA_TCD_NBYTES_MLNO(i) = tcd_value->nbytes;	
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+8]
        STR      R1,[R0, #+8]
//  401 		    	    
//  402 	    DMA_TCD_SLAST(i) = tcd_value->slast;	        
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+12]
        STR      R1,[R0, #+12]
//  403 	        
//  404 	    DMA_TCD_DADDR(i) = tcd_value->daddr;	    
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+16]
        STR      R1,[R0, #+16]
//  405 	            
//  406 	    DMA_TCD_CITER_ELINKNO(i) = DMA_CITER_ELINKNO_CITER(tcd_value->loopcount);	        
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+40]
        LSLS     R1,R1,#+17
        LSRS     R1,R1,#+17
        STRH     R1,[R0, #+22]
//  407 		    
//  408             DMA_TCD_DOFF(i) = tcd_value->doff;	
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+20]
        STRH     R1,[R0, #+20]
//  409 		    	    
//  410 	    DMA_TCD_DLASTSGA(i) = tcd_value->dlast_sga;	        
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+24]
        STR      R1,[R0, #+24]
//  411 	        
//  412             DMA_TCD_BITER_ELINKNO(i) = DMA_BITER_ELINKNO_BITER(tcd_value->loopcount);
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+40]
        LSLS     R1,R1,#+17
        LSRS     R1,R1,#+17
        STRH     R1,[R0, #+30]
//  413 		    
//  414             DMA_TCD_CSR(i) = tcd_value->csr;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+28]
        STRH     R1,[R0, #+28]
//  415             
//  416 	
//  417 	    break;
        B.N      ??dma_config_17
//  418 		
//  419           case MEM_FILL:  
//  420 		
//  421 	    i = tcd_value->channelno;
??dma_config_2:
        LDR      R5,[R4, #+32]
//  422 	    for( j=0; j < tcd_value->nbytes; j++)	//j=j+4
        MOVS     R6,#+0
        B.N      ??dma_config_18
//  423 	    {
//  424 	      //*((unsigned long int *)(tcd_value->saddr +j)) = tcd_value->testdata;
//  425 	      *((unsigned char *)(tcd_value->saddr +j)) = j + i;
??dma_config_19:
        ADDS     R0,R5,R6
        LDR      R1,[R4, #+0]
        STRB     R0,[R6, R1]
//  426 	      //printf("\n"); Print8(*((unsigned char *)(tcd_value->saddr +j)));
//  427 	    }
        ADDS     R6,R6,#+1
??dma_config_18:
        LDR      R0,[R4, #+8]
        CMP      R6,R0
        BCC.N    ??dma_config_19
//  428             //*((unsigned long int *)(tcd_value->saddr +j)) = 0x0+j;
//  429             break;
        B.N      ??dma_config_17
//  430 		
//  431 	  case DMA_SOFT_START: 
//  432 		
//  433 	    i = tcd_value->channelno;		
??dma_config_1:
        LDR      R5,[R4, #+32]
//  434 	    //printf("\nDMA channel %d started.\n", i);
//  435 	    DMA_SSRT = tcd_value->channelno;     
        LDR      R0,[R4, #+32]
        LDR.W    R1,??DataTable79_37  ;; 0x4000801d
        STRB     R0,[R1, #+0]
//  436 	    break;
        B.N      ??dma_config_17
//  437 		        
//  438           case XFR_OVER_WAIT: 
//  439 		
//  440 	    i = tcd_value->channelno;
??dma_config_4:
        LDR      R5,[R4, #+32]
//  441 	    //printf("\nBefore waiting.");
//  442             //printf("\nDMA_TCD_CSR %d = 0x%x", i, DMA_TCD_CSR(i));
//  443             //printf("\nDMA_CSR & MASK = 0x%x", (DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK));
//  444             //printf("\nDMA_ES = 0x%x", DMA_ES);
//  445 	    while((( DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) == 0) && ( DMA_ES == 0));
??dma_config_20:
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BMI.N    ??dma_config_21
        LDR.W    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_config_20
//  446 	    //while((DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) == 0);
//  447 	    //printf("\nAfter waiting.");			
//  448 	    if (DMA_ES)
??dma_config_21:
        LDR.W    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_config_22
//  449 	    {
//  450               dma_error++;
        LDR.W    R0,??DataTable79_39
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable79_39
        STR      R0,[R1, #+0]
//  451               printf("\nERROR!!! An error ocurred while processing.\n");
        ADR.W    R0,`?<Constant "\\nERROR!!! An error oc...">`
        BL       printf
//  452 	      printf("\nDMA_ES = 0x%x", DMA_ES);
        LDR.W    R0,??DataTable79_38  ;; 0x40008004
        LDR      R1,[R0, #+0]
        ADR.W    R0,`?<Constant "\\nDMA_ES = 0x%x">`
        BL       printf
//  453               printf("\nDMA_ERR = 0x%x", DMA_ERR);
        LDR.W    R0,??DataTable79_40  ;; 0x4000802c
        LDR      R1,[R0, #+0]
        ADR.W    R0,`?<Constant "\\nDMA_ERR = 0x%x">`
        BL       printf
//  454 	    }  
//  455 	    break;
??dma_config_22:
        B.N      ??dma_config_17
//  456 		        
//  457           case CMP_MEM:
//  458 		
//  459             j = tcd_value->channelno;
??dma_config_3:
        LDR      R6,[R4, #+32]
//  460             //printf("\nCSR0 = "); //Print16(DMA_TCD_CSR(0));
//  461             for(i=0; i < (tcd_value->nbytes); i++)
        MOVS     R5,#+0
        B.N      ??dma_config_23
??dma_config_24:
        ADDS     R5,R5,#+1
??dma_config_23:
        LDR      R0,[R4, #+8]
        CMP      R5,R0
        BCS.N    ??dma_config_25
//  462             {		            	
//  463               /*
//  464 	      printf("\nSADDR: ");
//  465               Print32((unsigned long int)(tcd_value->saddr+ i)); printf(" = ");
//  466               Print8(*(unsigned char *)( tcd_value->saddr+ i));		          
//  467               printf("\nDADDR: ");
//  468               Print32((unsigned long int)(tcd_value->daddr+ i)); printf(" = ");
//  469               Print8(*(unsigned char *)( tcd_value->daddr+ i));
//  470               printf("\n");
//  471      	      */
//  472               if ( (*(unsigned char *)(tcd_value->saddr + i)) != (*(unsigned char *)(tcd_value->daddr + i)) )
        LDR      R0,[R4, #+0]
        LDRB     R0,[R5, R0]
        LDR      R1,[R4, #+16]
        LDRB     R1,[R5, R1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BEQ.N    ??dma_config_24
//  473               {
//  474                 dma_error++;
        LDR.W    R0,??DataTable79_39
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable79_39
        STR      R0,[R1, #+0]
//  475                 printf("\nData error!");
        ADR.W    R0,`?<Constant "\\nData error!">`
        BL       printf
//  476          	printf("\nSADDR: 0x%x = 0x%x", ((unsigned long int)(tcd_value->saddr+i)), (*(unsigned char *)( tcd_value->saddr+i)));       
        LDR      R0,[R4, #+0]
        LDRB     R2,[R5, R0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[R4, #+0]
        ADDS     R1,R5,R0
        ADR.W    R0,`?<Constant "\\nSADDR: 0x%x = 0x%x">`
        BL       printf
//  477                 printf("\nDADDR: 0x%x = 0x%x", ((unsigned long int)(tcd_value->daddr+i)), (*(unsigned char *)( tcd_value->daddr+i)));
        LDR      R0,[R4, #+16]
        LDRB     R2,[R5, R0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[R4, #+16]
        ADDS     R1,R5,R0
        ADR.W    R0,`?<Constant "\\nDADDR: 0x%x = 0x%x">`
        BL       printf
//  478                 break;
//  479               }
//  480             }
//  481           
//  482             break;                
??dma_config_25:
        B.N      ??dma_config_17
//  483             
//  484           case CONFIG_BASIC_XFR_ERR:
//  485         
//  486             i = tcd_value->channelno ;
??dma_config_6:
        LDR      R5,[R4, #+32]
//  487             printf("\nTesting DMA channel %d", i);
        MOVS     R1,R5
        ADR.W    R0,`?<Constant "\\nTesting DMA channel %d">`
        BL       printf
//  488             DMA_TCD_SADDR(i) = tcd_value->saddr ;
        LSLS     R0,R5,#+5
        LDR.W    R1,??DataTable79_36  ;; 0x40009000
        LDR      R2,[R4, #+0]
        STR      R2,[R0, R1]
//  489 	
//  490             DMA_TCD_ATTR(i) = tcd_value->tcdAttr; 
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+6]
        STRH     R1,[R0, #+6]
//  491 							
//  492             DMA_TCD_SOFF(i) = tcd_value->soff;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+4]
        STRH     R1,[R0, #+4]
//  493 	
//  494             DMA_TCD_NBYTES_MLNO(i) = tcd_value->nbytes;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+8]
        STR      R1,[R0, #+8]
//  495 	
//  496             DMA_TCD_SLAST(i) = tcd_value->slast;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+12]
        STR      R1,[R0, #+12]
//  497 
//  498             DMA_TCD_DADDR(i) = tcd_value->daddr;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+16]
        STR      R1,[R0, #+16]
//  499 	
//  500             //DMA_TCD_CITER_ELINKNO(i) = tcd_value->citer;
//  501             DMA_TCD_CITER_ELINKYES(i) = tcd_value->citer;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+22]
        STRH     R1,[R0, #+22]
//  502 								
//  503             DMA_TCD_DOFF(i) = tcd_value->doff;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+20]
        STRH     R1,[R0, #+20]
//  504 									
//  505             DMA_TCD_DLASTSGA(i) = tcd_value->dlast_sga;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+24]
        STR      R1,[R0, #+24]
//  506 
//  507             //DMA_TCD_BITER_ELINKNO(i) = tcd_value->biter;
//  508             DMA_TCD_BITER_ELINKYES(i) = tcd_value->biter;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+30]
        STRH     R1,[R0, #+30]
//  509 	
//  510             DMA_TCD_CSR(i) = tcd_value->csr;	
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+28]
        STRH     R1,[R0, #+28]
//  511 		        
//  512             break; 
        B.N      ??dma_config_17
//  513         		
//  514           case MINOR_LOOP_CH_LINK:
//  515 		
//  516             i = tcd_value->channelno ;
??dma_config_5:
        LDR      R5,[R4, #+32]
//  517 		
//  518             j = tcd_value->link ;
        LDR      R6,[R4, #+44]
//  519 
//  520             
//  521 		        		   	
//  522             DMA_TCD_SADDR(i) = tcd_value->saddr ;
        LSLS     R0,R5,#+5
        LDR.W    R1,??DataTable79_36  ;; 0x40009000
        LDR      R2,[R4, #+0]
        STR      R2,[R0, R1]
//  523 	
//  524             DMA_TCD_ATTR(i) = tcd_value->tcdAttr; 
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+6]
        STRH     R1,[R0, #+6]
//  525 							
//  526             DMA_TCD_SOFF(i) = tcd_value->soff;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+4]
        STRH     R1,[R0, #+4]
//  527 	
//  528             DMA_TCD_NBYTES_MLNO(i) = tcd_value->nbytes;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+8]
        STR      R1,[R0, #+8]
//  529 	
//  530             DMA_TCD_SLAST(i) = 0x0;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  531 
//  532             DMA_TCD_DADDR(i) = tcd_value->daddr;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+16]
        STR      R1,[R0, #+16]
//  533 	
//  534             DMA_TCD_CITER_ELINKYES(i) =  DMA_CITER_ELINKYES_CITER(tcd_value->loopcount)| DMA_CITER_ELINKYES_ELINK_MASK | DMA_CITER_ELINKYES_LINKCH(j) ;
        LDR      R0,[R4, #+40]
        LSLS     R0,R0,#+23
        LSRS     R0,R0,#+23
        LSLS     R1,R6,#+9
        ANDS     R1,R1,#0x1E00
        ORRS     R0,R1,R0
        ORRS     R0,R0,#0x8000
        LDR.W    R1,??DataTable79_36  ;; 0x40009000
        ADDS     R1,R1,R5, LSL #+5
        STRH     R0,[R1, #+22]
//  535 																											
//  536             DMA_TCD_DOFF(i) = tcd_value->doff;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+20]
        STRH     R1,[R0, #+20]
//  537 									
//  538             DMA_TCD_DLASTSGA(i) = 0x0;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  539 
//  540             DMA_TCD_BITER_ELINKYES(i) =  DMA_BITER_ELINKYES_BITER(tcd_value->loopcount)| DMA_BITER_ELINKYES_ELINK_MASK | DMA_BITER_ELINKYES_LINKCH(j);
        LDR      R0,[R4, #+40]
        LSLS     R0,R0,#+23
        LSRS     R0,R0,#+23
        LSLS     R1,R6,#+9
        ANDS     R1,R1,#0x1E00
        ORRS     R0,R1,R0
        ORRS     R0,R0,#0x8000
        LDR.W    R1,??DataTable79_36  ;; 0x40009000
        ADDS     R1,R1,R5, LSL #+5
        STRH     R0,[R1, #+30]
//  541 	
//  542             DMA_TCD_CSR(i) = 0x0;	
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        MOVS     R1,#+0
        STRH     R1,[R0, #+28]
//  543 		        
//  544             //printf("\nDMA_TCD_CITER_ELINKYES %d = 0x%x", i , DMA_TCD_CITER_ELINKYES(i));
//  545             //printf("\nDMA_TCD_BITER_ELINKYES %d = 0x%x", i , DMA_TCD_BITER_ELINKYES(i));
//  546             break;
        B.N      ??dma_config_17
//  547 
//  548           case MAJOR_LOOP_LINK_EN:
//  549 	  		
//  550             i = tcd_value->channelno;
??dma_config_8:
        LDR      R5,[R4, #+32]
//  551             j = tcd_value->link;
        LDR      R6,[R4, #+44]
        B.N      ??dma_config_26
//  552             /* In order to follow the coherency model, the following
//  553                 steps are REQUIRED to correctly enable major channel
//  554                 linking:
//  555 		
//  556                 1. Perform a write to the CSR to clear the DONE bit
//  557                 2. Then perform another write to the CSR to set the MAJORELINK bit */
//  558             
//  559             /* Make sure the DONE bit is cleared before enabling link */
//  560 			
//  561             /* Keep trying to clear DONE bit until it is detected cleared */	
//  562             while ((DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) != 0)
//  563             {
//  564               DMA_TCD_CSR(i) = 0 ;
??dma_config_27:
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        MOVS     R1,#+0
        STRH     R1,[R0, #+28]
//  565             }														
??dma_config_26:
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BMI.N    ??dma_config_27
//  566 			
//  567             /* Keep trying to set E_LINK bit until it is detected set */	
//  568             while ((DMA_TCD_CSR(i) & DMA_CSR_MAJORELINK_MASK) == 0)
??dma_config_28:
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+26
        BMI.N    ??dma_config_29
//  569             {
//  570               DMA_TCD_CSR(i) = ( 0
//  571                                   |  DMA_CSR_MAJORLINKCH(j)
//  572                                   |  DMA_CSR_MAJORELINK_MASK 
//  573                                 );									
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LSLS     R1,R6,#+8
        ANDS     R1,R1,#0xF00
        ORRS     R1,R1,#0x20
        STRH     R1,[R0, #+28]
        B.N      ??dma_config_28
//  574             }
//  575 	    //printf("\nDMA_TCD_CSR %d = 0x%x", i, DMA_TCD_CSR(i));			
//  576             break;
??dma_config_29:
        B.N      ??dma_config_17
//  577      
//  578           case SLAST_CHECK:
//  579 			
//  580             i = tcd_value->channelno ;		
??dma_config_7:
        LDR      R5,[R4, #+32]
//  581 		
//  582             if ( DMA_TCD_SADDR(i) == tcd_value->saddr)
        LSLS     R0,R5,#+5
        LDR.W    R1,??DataTable79_36  ;; 0x40009000
        LDR      R0,[R0, R1]
        LDR      R1,[R4, #+0]
        CMP      R0,R1
        BNE.N    ??dma_config_30
//  583               printf("\nSLAST adjustment is correct.");
        ADR.W    R0,`?<Constant "\\nSLAST adjustment is ...">`
        BL       printf
        B.N      ??dma_config_31
//  584             else
//  585             {
//  586               dma_error++;
??dma_config_30:
        LDR.W    R0,??DataTable79_39
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable79_39
        STR      R0,[R1, #+0]
//  587               printf("\nERROR!!! SLAST adjustment not correct.");
        ADR.W    R0,`?<Constant "\\nERROR!!! SLAST adjus...">`
        BL       printf
//  588               printf("\nSADDR = 0x%x", DMA_TCD_SADDR(i));
        LSLS     R0,R5,#+5
        LDR.W    R1,??DataTable79_36  ;; 0x40009000
        LDR      R1,[R0, R1]
        ADR.W    R0,`?<Constant "\\nSADDR = 0x%x">`
        BL       printf
//  589             }
//  590             break;
??dma_config_31:
        B.N      ??dma_config_17
//  591 		         
//  592           case DLAST_CHECK:
//  593 			
//  594             i = tcd_value->channelno ;		
??dma_config_10:
        LDR      R5,[R4, #+32]
//  595 		
//  596             if ( DMA_TCD_DADDR(i) == tcd_value->daddr)
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R0,[R0, #+16]
        LDR      R1,[R4, #+16]
        CMP      R0,R1
        BNE.N    ??dma_config_32
//  597               printf("\nDLAST adjustment is correct.");
        ADR.W    R0,`?<Constant "\\nDLAST adjustment is ...">`
        BL       printf
        B.N      ??dma_config_33
//  598             else
//  599             {
//  600               dma_error++;
??dma_config_32:
        LDR.W    R0,??DataTable79_39
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable79_39
        STR      R0,[R1, #+0]
//  601               printf("\nERROR!!! DLAST adjustment not correct.\n");
        ADR.W    R0,`?<Constant "\\nERROR!!! DLAST adjus...">`
        BL       printf
//  602               printf("\nDADDR = 0x%x", DMA_TCD_DADDR(i));
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R0, #+16]
        ADR.W    R0,`?<Constant "\\nDADDR = 0x%x">`
        BL       printf
//  603             }
//  604             break;
??dma_config_33:
        B.N      ??dma_config_17
//  605 		        		   
//  606           case SGA_TEST_CONFIG:
//  607 		
//  608             i = tcd_value->channelno ;
??dma_config_9:
        LDR      R5,[R4, #+32]
//  609 		        
//  610             printf("\nTesting DMA channel %d.", i);
        MOVS     R1,R5
        ADR.W    R0,`?<Constant "\\nTesting DMA channel %d.">`
        BL       printf
//  611 		        		   	
//  612             DMA_TCD_SADDR(i) = tcd_value->saddr;
        LSLS     R0,R5,#+5
        LDR.W    R1,??DataTable79_36  ;; 0x40009000
        LDR      R2,[R4, #+0]
        STR      R2,[R0, R1]
//  613 	
//  614             DMA_TCD_ATTR(i) = tcd_value->tcdAttr; 
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+6]
        STRH     R1,[R0, #+6]
//  615 							
//  616             DMA_TCD_SOFF(i) = tcd_value->soff;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+4]
        STRH     R1,[R0, #+4]
//  617 	
//  618             DMA_TCD_NBYTES_MLNO(i) = tcd_value->nbytes;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+8]
        STR      R1,[R0, #+8]
//  619 	
//  620             DMA_TCD_SLAST(i) = tcd_value->slast;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+12]
        STR      R1,[R0, #+12]
//  621 
//  622             DMA_TCD_DADDR(i) = tcd_value->daddr;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+16]
        STR      R1,[R0, #+16]
//  623 	
//  624             DMA_TCD_CITER_ELINKNO(i) =  DMA_CITER_ELINKNO_CITER(tcd_value->loopcount) ;
        LDR.W    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+40]
        LSLS     R1,R1,#+17
        LSRS     R1,R1,#+17
        STRH     R1,[R0, #+22]
//  625 								
//  626             DMA_TCD_DOFF(i) = tcd_value->doff;
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+20]
        STRH     R1,[R0, #+20]
//  627 									
//  628             DMA_TCD_DLASTSGA(i) = tcd_value->link;
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+44]
        STR      R1,[R0, #+24]
//  629 
//  630             DMA_TCD_BITER_ELINKNO(i) =  DMA_BITER_ELINKNO_BITER(tcd_value->loopcount);
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+40]
        LSLS     R1,R1,#+17
        LSRS     R1,R1,#+17
        STRH     R1,[R0, #+30]
//  631 	
//  632             DMA_TCD_CSR(i) = tcd_value->csr;	
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+28]
        STRH     R1,[R0, #+28]
//  633           
//  634             break;
        B.N      ??dma_config_17
//  635 		        
//  636           case SGA_ENB: 	
//  637             /* In order to follow the coherency model, the following
//  638                 steps are REQUIRED to correctly enable scatter/gather
//  639                 functionality:
//  640 		
//  641                 1. Perform a write to the CSR to clear the DONE bit
//  642                 2. Then perform another write to the CSR to set the E_SG bit */
//  643             /* Make sure the DONE bit is cleared before enabling link */
//  644             /* Keep trying to clear DONE bit until it is detected cleared */	
//  645 	    	
//  646             i = tcd_value->channelno ;
??dma_config_12:
        LDR      R5,[R4, #+32]
        B.N      ??dma_config_34
//  647 	               
//  648             while ((DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) != 0)
//  649             {
//  650               DMA_TCD_CSR(i) = 0 ;
??dma_config_35:
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        MOVS     R1,#+0
        STRH     R1,[R0, #+28]
//  651             }														
??dma_config_34:
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BMI.N    ??dma_config_35
//  652 		
//  653             /* Keep trying to set E_SG bit until it is detected set */	
//  654             while ((DMA_TCD_CSR(i) & DMA_CSR_ESG_MASK) == 0)
??dma_config_36:
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+27
        BMI.N    ??dma_config_37
//  655             {
//  656               DMA_TCD_CSR(i) = ( 0
//  657                                   |  DMA_CSR_ESG_MASK 
//  658                                 );
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        MOVS     R1,#+16
        STRH     R1,[R0, #+28]
        B.N      ??dma_config_36
//  659             }					
//  660             break;
??dma_config_37:
        B.N      ??dma_config_17
//  661 		            
//  662           case XFR_WAIT_ERROR_CHECK: 	/* Wait for DMA to complete */
//  663 			
//  664             i = tcd_value->channelno ;
??dma_config_11:
        LDR      R5,[R4, #+32]
//  665             //printf("\nbefore while..");																	
//  666             while((( DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) == 0) && ( DMA_ES == 0));
??dma_config_38:
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BMI.N    ??dma_config_39
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_config_38
//  667             //printf("\nafter while..");
//  668             /* Check for errors */
//  669             if (DMA_ES)
??dma_config_39:
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_config_40
//  670             {
//  671               //printf("\nDMA_TCD_CSR = "); Print16(DMA_TCD_CSR(i));
//  672               //printf("\nDMA_ES = "); Print32(DMA_ES);
//  673               //printf("\nDMA_ERR = "); Print32(DMA_ERR);
//  674 	      dma_error++; 	
        LDR.N    R0,??DataTable79_39
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable79_39
        STR      R0,[R1, #+0]
//  675               if ((DMA_ES & DMA_ES_DAE_MASK) != 0)
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??dma_config_41
//  676               {
//  677                 printf("\nDAE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nDAE error detected c...">`
        BL       printf
//  678                 j++;
        ADDS     R6,R6,#+1
//  679               }	
//  680               if((DMA_ES & DMA_ES_DBE_MASK) != 0)
??dma_config_41:
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??dma_config_42
//  681               {
//  682                 printf("\nDBE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nDBE error detected c...">`
        BL       printf
//  683                 j++;
        ADDS     R6,R6,#+1
//  684               }
//  685               if((DMA_ES & DMA_ES_DOE_MASK) != 0)
??dma_config_42:
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??dma_config_43
//  686               {
//  687                 printf("\nDOE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nDOE error detected c...">`
        BL       printf
//  688                 j++;
        ADDS     R6,R6,#+1
//  689               }
//  690               if((DMA_ES & DMA_ES_NCE_MASK) != 0)
??dma_config_43:
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??dma_config_44
//  691               {
//  692                 printf("\nNCE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nNCE error detected c...">`
        BL       printf
//  693                 j++;
        ADDS     R6,R6,#+1
//  694               }
//  695               if((DMA_ES & DMA_ES_SAE_MASK) != 0)
??dma_config_44:
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??dma_config_45
//  696               {
//  697                 printf("\nSAE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nSAE error detected c...">`
        BL       printf
//  698                 j++;
        ADDS     R6,R6,#+1
//  699               }
//  700               if((DMA_ES & DMA_ES_CPE_MASK) != 0)
??dma_config_45:
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BPL.N    ??dma_config_46
//  701               {
//  702                 printf("\nCPE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nCPE error detected c...">`
        BL       printf
//  703                 j++;
        ADDS     R6,R6,#+1
//  704               }
//  705               if((DMA_ES & DMA_ES_SBE_MASK) != 0)
??dma_config_46:
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??dma_config_47
//  706               {
//  707                 printf("\nSBE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nSBE error detected c...">`
        BL       printf
//  708                 j++;
        ADDS     R6,R6,#+1
//  709               }
//  710               if((DMA_ES & DMA_ES_SGE_MASK) != 0)
??dma_config_47:
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??dma_config_48
//  711               {
//  712                 printf("\nSGE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nSGE error detected c...">`
        BL       printf
//  713                 j++;
        ADDS     R6,R6,#+1
//  714               } 
//  715               if((DMA_ES & DMA_ES_SOE_MASK) != 0)
??dma_config_48:
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??dma_config_49
//  716               {
//  717                 printf("\nSOE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nSOE error detected c...">`
        BL       printf
//  718                 j++;
        ADDS     R6,R6,#+1
//  719               }
//  720               if((DMA_ES & DMA_ES_ECX_MASK) != 0)
??dma_config_49:
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??dma_config_50
//  721               {
//  722                 printf("\nError cancel transfer detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nError cancel transfe...">`
        BL       printf
//  723                 j++;
        ADDS     R6,R6,#+1
//  724               }
//  725               if (j == 0)
??dma_config_50:
        CMP      R6,#+0
        BNE.N    ??dma_config_51
//  726                 printf("\nERROR NOT DETECTED!!!\n");		        
        ADR.W    R0,`?<Constant "\\nERROR NOT DETECTED!!!\\n">`
        BL       printf
        B.N      ??dma_config_51
//  727                 //printf("\nDMAERR = "); Print32(DMA_ERR);
//  728             }
//  729 	    else
//  730               printf("\nNO ERROR DETECTED!!!\n");
??dma_config_40:
        ADR.W    R0,`?<Constant "\\nNO ERROR DETECTED!!!\\n">`
        BL       printf
//  731 	            	
//  732 	    break;
??dma_config_51:
        B.N      ??dma_config_17
//  733 	            	
//  734           case ERROR_CLR:     
//  735 			
//  736             printf("\nBefore DMA_ERR = 0x%x", DMA_ERR);
??dma_config_14:
        LDR.N    R0,??DataTable79_40  ;; 0x4000802c
        LDR      R1,[R0, #+0]
        ADR.W    R0,`?<Constant "\\nBefore DMA_ERR = 0x%x">`
        BL       printf
//  737             DMA_CERR = DMA_CERR_CAEI_MASK;
        LDR.N    R0,??DataTable79_41  ;; 0x4000801e
        MOVS     R1,#+64
        STRB     R1,[R0, #+0]
//  738             //printf("\nAfter Clear Error.");
//  739             printf("\nAfter DMA_ERR = 0x%x", DMA_ERR);
        LDR.N    R0,??DataTable79_40  ;; 0x4000802c
        LDR      R1,[R0, #+0]
        ADR.W    R0,`?<Constant "\\nAfter DMA_ERR = 0x%x">`
        BL       printf
//  740             printf("\nDMA_ES = 0x%x", DMA_ES);
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R1,[R0, #+0]
        ADR.W    R0,`?<Constant "\\nDMA_ES = 0x%x">`
        BL       printf
//  741             break;
        B.N      ??dma_config_17
//  742 		            
//  743           case INSERT_CPE_ERR:
//  744 			
//  745             i = tcd_value->channelno ;
??dma_config_13:
        LDR      R5,[R4, #+32]
//  746             DMA_DCHPRI1 = 0x01;
        LDR.N    R0,??DataTable79_42  ;; 0x40008102
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  747             DMA_DCHPRI2 = 0x01;
        LDR.N    R0,??DataTable79_43  ;; 0x40008101
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  748             /*
//  749             for(j=0;j<2;j++)
//  750             {
//  751               //DMA_DCHPRI(j) = 0x01;
//  752               //printf("\nDCHPRI("); Print8(j); printf(") = "); Print8(DMA_DCHPRI(j));
//  753             }
//  754             */        
//  755             break;
        B.N      ??dma_config_17
//  756 	                
//  757           case CONFIG_PRIORITY:
//  758 			
//  759             DMA_DCHPRI0 = 0x80 + 0;	//0x80+ 5;
??dma_config_16:
        LDR.N    R0,??DataTable79_44  ;; 0x40008103
        MOVS     R1,#+128
        STRB     R1,[R0, #+0]
//  760             DMA_DCHPRI1 = 0x80 + 1;	//0xC0 + 1;	    	
        LDR.N    R0,??DataTable79_42  ;; 0x40008102
        MOVS     R1,#+129
        STRB     R1,[R0, #+0]
//  761             DMA_DCHPRI2 = 0x80 + 2;
        LDR.N    R0,??DataTable79_43  ;; 0x40008101
        MOVS     R1,#+130
        STRB     R1,[R0, #+0]
//  762             DMA_DCHPRI3 = 0x80 + 3;	    	
        LDR.N    R0,??DataTable79_45  ;; 0x40008100
        MOVS     R1,#+131
        STRB     R1,[R0, #+0]
//  763             DMA_DCHPRI4 = 0x80 + 4;
        LDR.N    R0,??DataTable79_46  ;; 0x40008107
        MOVS     R1,#+132
        STRB     R1,[R0, #+0]
//  764             DMA_DCHPRI5 = 0x80 + 5;	//0;
        LDR.N    R0,??DataTable79_47  ;; 0x40008106
        MOVS     R1,#+133
        STRB     R1,[R0, #+0]
//  765             DMA_DCHPRI6 = 0x80 + 6;
        LDR.N    R0,??DataTable79_48  ;; 0x40008105
        MOVS     R1,#+134
        STRB     R1,[R0, #+0]
//  766             DMA_DCHPRI7 = 0x80 + 7;
        LDR.N    R0,??DataTable79_49  ;; 0x40008104
        MOVS     R1,#+135
        STRB     R1,[R0, #+0]
//  767             DMA_DCHPRI8 = 0x80 + 8;
        LDR.N    R0,??DataTable79_50  ;; 0x4000810b
        MOVS     R1,#+136
        STRB     R1,[R0, #+0]
//  768             DMA_DCHPRI9 = 0x80 + 9;
        LDR.N    R0,??DataTable79_51  ;; 0x4000810a
        MOVS     R1,#+137
        STRB     R1,[R0, #+0]
//  769             DMA_DCHPRI10 = 0x80 + 10;
        LDR.N    R0,??DataTable79_52  ;; 0x40008109
        MOVS     R1,#+138
        STRB     R1,[R0, #+0]
//  770             DMA_DCHPRI11 = 0x80 + 11;
        LDR.N    R0,??DataTable79_53  ;; 0x40008108
        MOVS     R1,#+139
        STRB     R1,[R0, #+0]
//  771             DMA_DCHPRI12 = 0x80 + 12;
        LDR.N    R0,??DataTable79_54  ;; 0x4000810f
        MOVS     R1,#+140
        STRB     R1,[R0, #+0]
//  772             DMA_DCHPRI13 = 0x80 + 13;
        LDR.N    R0,??DataTable79_55  ;; 0x4000810e
        MOVS     R1,#+141
        STRB     R1,[R0, #+0]
//  773             DMA_DCHPRI14 = 0x80 + 14;
        LDR.N    R0,??DataTable79_56  ;; 0x4000810d
        MOVS     R1,#+142
        STRB     R1,[R0, #+0]
//  774             DMA_DCHPRI15 = 0x80 + 15;    
        LDR.N    R0,??DataTable79_57  ;; 0x4000810c
        MOVS     R1,#+143
        STRB     R1,[R0, #+0]
//  775 	        
//  776             DMA_CR = 0x0000;
        LDR.N    R0,??DataTable79_58  ;; 0x40008000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  777         
//  778             break;
        B.N      ??dma_config_17
//  779 	                
//  780           case CHECK_PRI:
//  781 		
//  782             i = tcd_value->channelno ;
??dma_config_15:
        LDR      R5,[R4, #+32]
//  783             j = tcd_value->link ;
        LDR      R6,[R4, #+44]
//  784 			
//  785             while((((DMA_TCD_CSR(i) & DMA_CSR_ACTIVE_MASK) == 0) || (( DMA_TCD_CSR(j) & DMA_CSR_DONE_MASK) == 0)) && (DMA_ES == 0));
??dma_config_52:
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+25
        BPL.N    ??dma_config_53
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R6, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BMI.N    ??dma_config_54
??dma_config_53:
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_config_52
//  786             //while((!( DMA_TCD_CSR(i) &  DMA_TCD_CSR_ACTIVE)) & (!( DMA_ES)) & (!( DMA_TCD_CSR(j) &  DMA_TCD_CSR_DONE))  );
//  787             printf("\nChannel %d transfer is complete and channel %d is preempted \n", j, i);
??dma_config_54:
        MOVS     R2,R5
        MOVS     R1,R6
        ADR.W    R0,`?<Constant "\\nChannel %d transfer ...">`
        BL       printf
//  788     		    
//  789             while((((DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) == 0) || (( DMA_TCD_CSR(j) & DMA_CSR_DONE_MASK) == 0)) && (DMA_ES == 0));        
??dma_config_55:
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BPL.N    ??dma_config_56
        LDR.N    R0,??DataTable79_36  ;; 0x40009000
        ADDS     R0,R0,R6, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BMI.N    ??dma_config_57
??dma_config_56:
        LDR.N    R0,??DataTable79_38  ;; 0x40008004
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_config_55
//  790             //while((!( DMA_TCD_CSR(j) &  DMA_TCD_CSR_DONE)) & (!( DMA_ES)) & (!( DMA_TCD_CSR(j) &  DMA_TCD_CSR_DONE)));
//  791             printf("\nBoth the channels have completed the transfer\n");
??dma_config_57:
        ADR.W    R0,`?<Constant "\\nBoth the channels ha...">`
        BL       printf
//  792                     
//  793             break;	               
//  794 	}
//  795 }
??dma_config_17:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75:
        DC32     res_ptr

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_1:
        DC32     `?<Constant "Valid \\'wrt\\' syntax:\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_2:
        DC32     `?<Constant "Set PTD7  Period > wr...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_3:
        DC32     `?<Constant "Set PTD7  Duty > wrt ...">`
//  796 
//  797 
//  798 //////////////////////////////////
//  799 ////////////////////////////////////
//  800 //////////////////////////////////////
//  801 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  802 void Set_Pit0(void)
//  803 {
//  804   SIM_SCGC6 |= SIM_SCGC6_PIT_MASK;      // turn on PIT cloccks
Set_Pit0:
        LDR.N    R0,??DataTable79_13  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable79_13  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  805   PIT_MCR    = 1;                    // reset MDIS -> enable the module
        LDR.N    R0,??DataTable79_59  ;; 0x40037000
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  806 //  PIT_LDVAL0 = 0x017d7840;           // free running on 32 bits 
//  807   //PIT_TCTRL0 = PIT_TCTRL_TIE_MASK;   // start the timer
//  808   //PIT_TCTRL0 |= PIT_TCTRL_TEN_MASK;   // start the timer
//  809   
//  810 }  
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable76:
        DC32     `?<Constant "Set PTA16 Period > wr...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable76_1:
        DC32     `?<Constant "Set PTA16 Duty > wrt ...">`
//  811 //////////////////////////////////////
//  812 
//  813 
//  814 /*
//  815  * ISR for PORTC interrupts
//  816  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  817 void portc_isr(void)
//  818 {
//  819   PORTC_ISFR=0xFFFFFFFF;  //Clear Port C ISR flags
portc_isr:
        LDR.N    R0,??DataTable79_60  ;; 0x4004b0a0
        MOVS     R1,#-1
        STR      R1,[R0, #+0]
//  820 }
        BX       LR               ;; return
//  821 
//  822 /*
//  823  * ISR for PORTE interrupts
//  824  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  825 void porte_isr(void)
//  826 {
//  827   PORTE_ISFR=0xFFFFFFFF;  //Clear Port E ISR flags
porte_isr:
        LDR.N    R0,??DataTable79_61  ;; 0x4004d0a0
        MOVS     R1,#-1
        STR      R1,[R0, #+0]
//  828 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable78:
        DC32     `?<Constant "Set PTD7 Period > wrt...">`
//  829 
//  830 /*
//  831  * ISR for PORTA interrupts
//  832  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  833 void porta_isr(void)
//  834 {
//  835   PORTA_ISFR=0xFFFFFFFF;  //Clear Port A ISR flags
porta_isr:
        LDR.N    R0,??DataTable79_62  ;; 0x400490a0
        MOVS     R1,#-1
        STR      R1,[R0, #+0]
//  836 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79:
        DC32     `?<Constant "Pit1   = %d \\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_1:
        DC32     `?<Constant "Set PTD7 Duty > wrt  ...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_2:
        DC32     `?<Constant "Set PTA16 Period > wr...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_3:
        DC32     `?<Constant "Set PTA16 Duty > wrt ...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_4:
        DC32     0x2dc6c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_5:
        DC32     0x17700

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_6:
        DC32     Period

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_7:
        DC32     Dma_Source_WORD

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_8:
        DC32     `?<Constant "\\nDma_Source_WORD[1] =...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_9:
        DC32     `?<Constant "Dma_Source_WORD[2] = ...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_10:
        DC32     Period1

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_11:
        DC32     Dma_Source_WORD1

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_12:
        DC32     `?<Constant "Register value not in...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_13:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_14:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_15:
        DC32     `?<Constant "\\nStarting eDMA 32-bit...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_16:
        DC32     tcd

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_17:
        DC32     0x400ff0cc

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_18:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_19:
        DC32     Dma_Source_WORD+0x4

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_20:
        DC32     0x40021001

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_21:
        DC32     0x400ff00c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_22:
        DC32     Dma_Source_WORD1+0x4

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_23:
        DC32     `?<Constant "TWR-K40X256 GPIO Exam...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_24:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_25:
        DC32     0x4003710c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_26:
        DC32     0x4003711c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_27:
        DC32     0x400ff0c4

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_28:
        DC32     0x400ff004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_29:
        DC32     0x40037118

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_30:
        DC32     0x40037108

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_31:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_32:
        DC32     0x30100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_33:
        DC32     0x40049040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_34:
        DC32     0x400ff0d4

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_35:
        DC32     0x400ff014

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_36:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_37:
        DC32     0x4000801d

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_38:
        DC32     0x40008004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_39:
        DC32     dma_error

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_40:
        DC32     0x4000802c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_41:
        DC32     0x4000801e

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_42:
        DC32     0x40008102

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_43:
        DC32     0x40008101

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_44:
        DC32     0x40008103

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_45:
        DC32     0x40008100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_46:
        DC32     0x40008107

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_47:
        DC32     0x40008106

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_48:
        DC32     0x40008105

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_49:
        DC32     0x40008104

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_50:
        DC32     0x4000810b

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_51:
        DC32     0x4000810a

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_52:
        DC32     0x40008109

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_53:
        DC32     0x40008108

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_54:
        DC32     0x4000810f

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_55:
        DC32     0x4000810e

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_56:
        DC32     0x4000810d

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_57:
        DC32     0x4000810c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_58:
        DC32     0x40008000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_59:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_60:
        DC32     0x4004b0a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_61:
        DC32     0x4004d0a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_62:
        DC32     0x400490a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "help">`:
        ; Initializer data, 8 bytes
        DC8 104, 101, 108, 112, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Help">`:
        ; Initializer data, 8 bytes
        DC8 72, 101, 108, 112, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "<cmd>">`:
        ; Initializer data, 8 bytes
        DC8 60, 99, 109, 100, 62, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "set">`:
        ; Initializer data, 4 bytes
        DC8 115, 101, 116, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Set Config">`:
        ; Initializer data, 12 bytes
        DC8 83, 101, 116, 32, 67, 111, 110, 102, 105, 103
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "<option value>">`:
        ; Initializer data, 16 bytes
        DC8 60, 111, 112, 116, 105, 111, 110, 32, 118, 97
        DC8 108, 117, 101, 62, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "show">`:
        ; Initializer data, 8 bytes
        DC8 115, 104, 111, 119, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Show Config">`:
        ; Initializer data, 12 bytes
        DC8 83, 104, 111, 119, 32, 67, 111, 110, 102, 105
        DC8 103, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "<option>">`:
        ; Initializer data, 12 bytes
        DC8 60, 111, 112, 116, 105, 111, 110, 62, 0, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "rd">`:
        ; Initializer data, 4 bytes
        DC8 114, 100, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Register Display">`:
        ; Initializer data, 20 bytes
        DC8 82, 101, 103, 105, 115, 116, 101, 114, 32, 68
        DC8 105, 115, 112, 108, 97, 121, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(0)
        DATA
`?<Constant "">`:
        ; Initializer data, 1 bytes
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "wrt">`:
        ; Initializer data, 4 bytes
        DC8 119, 114, 116, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Write PIT  <register ...">`:
        ; Initializer data, 36 bytes
        DC8 87, 114, 105, 116, 101, 32, 80, 73, 84, 32
        DC8 32, 60, 114, 101, 103, 105, 115, 116, 101, 114
        DC8 32, 105, 110, 100, 101, 120, 62, 32, 60, 118
        DC8 97, 108, 117, 101, 62, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\n--------------------...">`:
        ; Initializer data, 48 bytes
        DC8 10, 45, 45, 45, 45, 45, 45, 45, 45, 45
        DC8 45, 45, 45, 45, 45, 45, 45, 45, 45, 45
        DC8 45, 45, 45, 45, 45, 45, 45, 45, 45, 45
        DC8 45, 45, 45, 45, 45, 45, 45, 45, 45, 45
        DC8 45, 45, 45, 45, 10, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "       PIT Register R...">`:
        ; Initializer data, 36 bytes
        DC8 32, 32, 32, 32, 32, 32, 32, 80, 73, 84
        DC8 32, 82, 101, 103, 105, 115, 116, 101, 114, 32
        DC8 82, 101, 97, 100, 32, 85, 116, 105, 108, 105
        DC8 116, 121, 10, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "---------------------...">`:
        ; Initializer data, 48 bytes
        DC8 45, 45, 45, 45, 45, 45, 45, 45, 45, 45
        DC8 45, 45, 45, 45, 45, 45, 45, 45, 45, 45
        DC8 45, 45, 45, 45, 45, 45, 45, 45, 45, 45
        DC8 45, 45, 45, 45, 45, 45, 45, 45, 45, 45
        DC8 45, 45, 45, 10, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "sysclk">`:
        ; Initializer data, 8 bytes
        DC8 115, 121, 115, 99, 108, 107, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Pit0   = %d \\r\\n">`:
        ; Initializer data, 16 bytes
        DC8 80, 105, 116, 48, 32, 32, 32, 61, 32, 37
        DC8 100, 32, 13, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Pit1   = %d \\r\\n">`:
        ; Initializer data, 16 bytes
        DC8 80, 105, 116, 49, 32, 32, 32, 61, 32, 37
        DC8 100, 32, 13, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant " PWM Write Utility\\n">`:
        ; Initializer data, 20 bytes
        DC8 32, 80, 87, 77, 32, 87, 114, 105, 116, 101
        DC8 32, 85, 116, 105, 108, 105, 116, 121, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Valid \\'wrt\\' syntax:\\n">`:
        ; Initializer data, 24 bytes
        DC8 86, 97, 108, 105, 100, 32, 39, 119, 114, 116
        DC8 39, 32, 115, 121, 110, 116, 97, 120, 58, 10
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Set PTD7  Period > wr...">`:
        ; Initializer data, 44 bytes
        DC8 83, 101, 116, 32, 80, 84, 68, 55, 32, 32
        DC8 80, 101, 114, 105, 111, 100, 32, 62, 32, 119
        DC8 114, 116, 32, 32, 60, 48, 62, 32, 60, 118
        DC8 97, 108, 117, 101, 40, 72, 122, 41, 62, 10
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Set PTD7  Duty > wrt ...">`:
        ; Initializer data, 48 bytes
        DC8 83, 101, 116, 32, 80, 84, 68, 55, 32, 32
        DC8 68, 117, 116, 121, 32, 62, 32, 119, 114, 116
        DC8 32, 32, 60, 49, 62, 32, 60, 118, 97, 108
        DC8 117, 101, 40, 112, 101, 114, 99, 101, 110, 116
        DC8 41, 62, 32, 10, 10, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Set PTA16 Period > wr...">`:
        ; Initializer data, 44 bytes
        DC8 83, 101, 116, 32, 80, 84, 65, 49, 54, 32
        DC8 80, 101, 114, 105, 111, 100, 32, 62, 32, 119
        DC8 114, 116, 32, 32, 60, 50, 62, 32, 60, 118
        DC8 97, 108, 117, 101, 40, 72, 122, 41, 62, 10
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Set PTA16 Duty > wrt ...">`:
        ; Initializer data, 48 bytes
        DC8 83, 101, 116, 32, 80, 84, 65, 49, 54, 32
        DC8 68, 117, 116, 121, 32, 62, 32, 119, 114, 116
        DC8 32, 32, 60, 51, 62, 32, 60, 118, 97, 108
        DC8 117, 101, 40, 112, 101, 114, 99, 101, 110, 116
        DC8 41, 62, 32, 10, 10, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Set PTD7 Period > wrt...">`:
        ; Initializer data, 44 bytes
        DC8 83, 101, 116, 32, 80, 84, 68, 55, 32, 80
        DC8 101, 114, 105, 111, 100, 32, 62, 32, 119, 114
        DC8 116, 32, 32, 60, 48, 62, 32, 60, 118, 97
        DC8 108, 117, 101, 40, 72, 122, 41, 62, 32, 10
        DC8 10, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Set PTD7 Duty > wrt  ...">`:
        ; Initializer data, 48 bytes
        DC8 83, 101, 116, 32, 80, 84, 68, 55, 32, 68
        DC8 117, 116, 121, 32, 62, 32, 119, 114, 116, 32
        DC8 32, 60, 49, 62, 32, 60, 118, 97, 108, 117
        DC8 101, 40, 112, 101, 114, 99, 101, 110, 116, 41
        DC8 62, 32, 10, 10, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Set PTA16 Period > wr...">_1`:
        ; Initializer data, 44 bytes
        DC8 83, 101, 116, 32, 80, 84, 65, 49, 54, 32
        DC8 80, 101, 114, 105, 111, 100, 32, 62, 32, 119
        DC8 114, 116, 32, 32, 60, 50, 62, 32, 60, 118
        DC8 97, 108, 117, 101, 40, 72, 122, 41, 62, 32
        DC8 10, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Set PTA16 Duty > wrt ...">_1`:
        ; Initializer data, 48 bytes
        DC8 83, 101, 116, 32, 80, 84, 65, 49, 54, 32
        DC8 68, 117, 116, 121, 32, 62, 32, 119, 114, 116
        DC8 32, 32, 60, 52, 62, 32, 60, 118, 97, 108
        DC8 117, 101, 40, 112, 101, 114, 99, 101, 110, 116
        DC8 41, 62, 32, 10, 10, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nDma_Source_WORD[1] =...">`:
        ; Initializer data, 28 bytes
        DC8 10, 68, 109, 97, 95, 83, 111, 117, 114, 99
        DC8 101, 95, 87, 79, 82, 68, 91, 49, 93, 32
        DC8 61, 32, 37, 100, 10, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Dma_Source_WORD[2] = ...">`:
        ; Initializer data, 28 bytes
        DC8 68, 109, 97, 95, 83, 111, 117, 114, 99, 101
        DC8 95, 87, 79, 82, 68, 91, 50, 93, 32, 61
        DC8 32, 37, 100, 10, 10, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Register value not in...">`:
        ; Initializer data, 40 bytes
        DC8 82, 101, 103, 105, 115, 116, 101, 114, 32, 118
        DC8 97, 108, 117, 101, 32, 110, 111, 116, 32, 105
        DC8 110, 32, 118, 97, 108, 105, 100, 32, 114, 97
        DC8 110, 103, 101, 46, 13, 10, 10, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nStarting eDMA 32-bit...">`:
        ; Initializer data, 56 bytes
        DC8 10, 83, 116, 97, 114, 116, 105, 110, 103, 32
        DC8 101, 68, 77, 65, 32, 51, 50, 45, 98, 105
        DC8 116, 32, 109, 101, 109, 111, 114, 121, 32, 116
        DC8 111, 32, 109, 101, 109, 111, 114, 121, 32, 116
        DC8 114, 97, 110, 115, 102, 101, 114, 32, 116, 101
        DC8 115, 116, 33, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "TWR-K40X256 GPIO Exam...">`:
        ; Initializer data, 28 bytes
        DC8 84, 87, 82, 45, 75, 52, 48, 88, 50, 53
        DC8 54, 32, 71, 80, 73, 79, 32, 69, 120, 97
        DC8 109, 112, 108, 101, 33, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        DATA
`?<Constant "\\n">`:
        ; Initializer data, 2 bytes
        DC8 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nERROR!!! An error oc...">`:
        ; Initializer data, 48 bytes
        DC8 10, 69, 82, 82, 79, 82, 33, 33, 33, 32
        DC8 65, 110, 32, 101, 114, 114, 111, 114, 32, 111
        DC8 99, 117, 114, 114, 101, 100, 32, 119, 104, 105
        DC8 108, 101, 32, 112, 114, 111, 99, 101, 115, 115
        DC8 105, 110, 103, 46, 10, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nDMA_ES = 0x%x">`:
        ; Initializer data, 16 bytes
        DC8 10, 68, 77, 65, 95, 69, 83, 32, 61, 32
        DC8 48, 120, 37, 120, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nDMA_ERR = 0x%x">`:
        ; Initializer data, 16 bytes
        DC8 10, 68, 77, 65, 95, 69, 82, 82, 32, 61
        DC8 32, 48, 120, 37, 120, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nData error!">`:
        ; Initializer data, 16 bytes
        DC8 10, 68, 97, 116, 97, 32, 101, 114, 114, 111
        DC8 114, 33, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nSADDR: 0x%x = 0x%x">`:
        ; Initializer data, 20 bytes
        DC8 10, 83, 65, 68, 68, 82, 58, 32, 48, 120
        DC8 37, 120, 32, 61, 32, 48, 120, 37, 120, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nDADDR: 0x%x = 0x%x">`:
        ; Initializer data, 20 bytes
        DC8 10, 68, 65, 68, 68, 82, 58, 32, 48, 120
        DC8 37, 120, 32, 61, 32, 48, 120, 37, 120, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nTesting DMA channel %d">`:
        ; Initializer data, 24 bytes
        DC8 10, 84, 101, 115, 116, 105, 110, 103, 32, 68
        DC8 77, 65, 32, 99, 104, 97, 110, 110, 101, 108
        DC8 32, 37, 100, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nSLAST adjustment is ...">`:
        ; Initializer data, 32 bytes
        DC8 10, 83, 76, 65, 83, 84, 32, 97, 100, 106
        DC8 117, 115, 116, 109, 101, 110, 116, 32, 105, 115
        DC8 32, 99, 111, 114, 114, 101, 99, 116, 46, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nERROR!!! SLAST adjus...">`:
        ; Initializer data, 40 bytes
        DC8 10, 69, 82, 82, 79, 82, 33, 33, 33, 32
        DC8 83, 76, 65, 83, 84, 32, 97, 100, 106, 117
        DC8 115, 116, 109, 101, 110, 116, 32, 110, 111, 116
        DC8 32, 99, 111, 114, 114, 101, 99, 116, 46, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nSADDR = 0x%x">`:
        ; Initializer data, 16 bytes
        DC8 10, 83, 65, 68, 68, 82, 32, 61, 32, 48
        DC8 120, 37, 120, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nDLAST adjustment is ...">`:
        ; Initializer data, 32 bytes
        DC8 10, 68, 76, 65, 83, 84, 32, 97, 100, 106
        DC8 117, 115, 116, 109, 101, 110, 116, 32, 105, 115
        DC8 32, 99, 111, 114, 114, 101, 99, 116, 46, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nERROR!!! DLAST adjus...">`:
        ; Initializer data, 44 bytes
        DC8 10, 69, 82, 82, 79, 82, 33, 33, 33, 32
        DC8 68, 76, 65, 83, 84, 32, 97, 100, 106, 117
        DC8 115, 116, 109, 101, 110, 116, 32, 110, 111, 116
        DC8 32, 99, 111, 114, 114, 101, 99, 116, 46, 10
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nDADDR = 0x%x">`:
        ; Initializer data, 16 bytes
        DC8 10, 68, 65, 68, 68, 82, 32, 61, 32, 48
        DC8 120, 37, 120, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nTesting DMA channel %d.">`:
        ; Initializer data, 28 bytes
        DC8 10, 84, 101, 115, 116, 105, 110, 103, 32, 68
        DC8 77, 65, 32, 99, 104, 97, 110, 110, 101, 108
        DC8 32, 37, 100, 46, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nDAE error detected c...">`:
        ; Initializer data, 32 bytes
        DC8 10, 68, 65, 69, 32, 101, 114, 114, 111, 114
        DC8 32, 100, 101, 116, 101, 99, 116, 101, 100, 32
        DC8 99, 111, 114, 114, 101, 99, 116, 108, 121, 46
        DC8 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nDBE error detected c...">`:
        ; Initializer data, 32 bytes
        DC8 10, 68, 66, 69, 32, 101, 114, 114, 111, 114
        DC8 32, 100, 101, 116, 101, 99, 116, 101, 100, 32
        DC8 99, 111, 114, 114, 101, 99, 116, 108, 121, 46
        DC8 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nDOE error detected c...">`:
        ; Initializer data, 32 bytes
        DC8 10, 68, 79, 69, 32, 101, 114, 114, 111, 114
        DC8 32, 100, 101, 116, 101, 99, 116, 101, 100, 32
        DC8 99, 111, 114, 114, 101, 99, 116, 108, 121, 46
        DC8 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nNCE error detected c...">`:
        ; Initializer data, 32 bytes
        DC8 10, 78, 67, 69, 32, 101, 114, 114, 111, 114
        DC8 32, 100, 101, 116, 101, 99, 116, 101, 100, 32
        DC8 99, 111, 114, 114, 101, 99, 116, 108, 121, 46
        DC8 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nSAE error detected c...">`:
        ; Initializer data, 32 bytes
        DC8 10, 83, 65, 69, 32, 101, 114, 114, 111, 114
        DC8 32, 100, 101, 116, 101, 99, 116, 101, 100, 32
        DC8 99, 111, 114, 114, 101, 99, 116, 108, 121, 46
        DC8 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nCPE error detected c...">`:
        ; Initializer data, 32 bytes
        DC8 10, 67, 80, 69, 32, 101, 114, 114, 111, 114
        DC8 32, 100, 101, 116, 101, 99, 116, 101, 100, 32
        DC8 99, 111, 114, 114, 101, 99, 116, 108, 121, 46
        DC8 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nSBE error detected c...">`:
        ; Initializer data, 32 bytes
        DC8 10, 83, 66, 69, 32, 101, 114, 114, 111, 114
        DC8 32, 100, 101, 116, 101, 99, 116, 101, 100, 32
        DC8 99, 111, 114, 114, 101, 99, 116, 108, 121, 46
        DC8 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nSGE error detected c...">`:
        ; Initializer data, 32 bytes
        DC8 10, 83, 71, 69, 32, 101, 114, 114, 111, 114
        DC8 32, 100, 101, 116, 101, 99, 116, 101, 100, 32
        DC8 99, 111, 114, 114, 101, 99, 116, 108, 121, 46
        DC8 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nSOE error detected c...">`:
        ; Initializer data, 32 bytes
        DC8 10, 83, 79, 69, 32, 101, 114, 114, 111, 114
        DC8 32, 100, 101, 116, 101, 99, 116, 101, 100, 32
        DC8 99, 111, 114, 114, 101, 99, 116, 108, 121, 46
        DC8 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nError cancel transfe...">`:
        ; Initializer data, 44 bytes
        DC8 10, 69, 114, 114, 111, 114, 32, 99, 97, 110
        DC8 99, 101, 108, 32, 116, 114, 97, 110, 115, 102
        DC8 101, 114, 32, 100, 101, 116, 101, 99, 116, 101
        DC8 100, 32, 99, 111, 114, 114, 101, 99, 116, 108
        DC8 121, 46, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nERROR NOT DETECTED!!!\\n">`:
        ; Initializer data, 24 bytes
        DC8 10, 69, 82, 82, 79, 82, 32, 78, 79, 84
        DC8 32, 68, 69, 84, 69, 67, 84, 69, 68, 33
        DC8 33, 33, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nNO ERROR DETECTED!!!\\n">`:
        ; Initializer data, 24 bytes
        DC8 10, 78, 79, 32, 69, 82, 82, 79, 82, 32
        DC8 68, 69, 84, 69, 67, 84, 69, 68, 33, 33
        DC8 33, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nBefore DMA_ERR = 0x%x">`:
        ; Initializer data, 24 bytes
        DC8 10, 66, 101, 102, 111, 114, 101, 32, 68, 77
        DC8 65, 95, 69, 82, 82, 32, 61, 32, 48, 120
        DC8 37, 120, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nAfter DMA_ERR = 0x%x">`:
        ; Initializer data, 24 bytes
        DC8 10, 65, 102, 116, 101, 114, 32, 68, 77, 65
        DC8 95, 69, 82, 82, 32, 61, 32, 48, 120, 37
        DC8 120, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nChannel %d transfer ...">`:
        ; Initializer data, 64 bytes
        DC8 10, 67, 104, 97, 110, 110, 101, 108, 32, 37
        DC8 100, 32, 116, 114, 97, 110, 115, 102, 101, 114
        DC8 32, 105, 115, 32, 99, 111, 109, 112, 108, 101
        DC8 116, 101, 32, 97, 110, 100, 32, 99, 104, 97
        DC8 110, 110, 101, 108, 32, 37, 100, 32, 105, 115
        DC8 32, 112, 114, 101, 101, 109, 112, 116, 101, 100
        DC8 32, 10, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\nBoth the channels ha...">`:
        ; Initializer data, 48 bytes
        DC8 10, 66, 111, 116, 104, 32, 116, 104, 101, 32
        DC8 99, 104, 97, 110, 110, 101, 108, 115, 32, 104
        DC8 97, 118, 101, 32, 99, 111, 109, 112, 108, 101
        DC8 116, 101, 100, 32, 116, 104, 101, 32, 116, 114
        DC8 97, 110, 115, 102, 101, 114, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
UIF_CMDTAB:
        ; Initializer data, 140 bytes
        DC32 `?<Constant "help">`, 0, 1, 0, uif_cmd_help, `?<Constant "Help">`, `?<Constant "<cmd>">`, `?<Constant "set">`, 0, 2
        DC32 0, uif_cmd_set, `?<Constant "Set Config">`, `?<Constant "<option value>">`, `?<Constant "show">`, 0, 1, 0, uif_cmd_show, `?<Constant "Show Config">`
        DC32 `?<Constant "<option>">`, `?<Constant "rd">`, 0, 0, 0, cmd_rd, `?<Constant "Register Display">`, `?<Constant "">`, `?<Constant "wrt">`, 0
        DC32 3, 0, cmd_wrt, `?<Constant "Write PIT  <register ...">`
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
UIF_SETCMDTAB:
        ; Initializer data, 20 bytes
        DC32 `?<Constant "sysclk">`, 0, 1, 0, `?<Constant "">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
UIF_NUM_CMD:
        ; Initializer data, 4 bytes
        DC32 5

        SECTION `.text`:CODE:NOROOT(2)
        DATA
UIF_NUM_SETCMD:
        ; Initializer data, 4 bytes
        DC32 1

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
//   108 bytes in section .bss
// 5 419 bytes in section .text
// 
// 5 419 bytes of CODE memory
//   108 bytes of DATA memory
//
//Errors: none
//Warnings: none
