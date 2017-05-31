///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.1.52143/W32 for ARM    15/Feb/2011  13:17:23 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETIS /
//                    512_SC\kinetis-sc\src\projects\gpio\gpio_k40_DMA2.c     /
//    Command line =  "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETI /
//                    S512_SC\kinetis-sc\src\projects\gpio\gpio_k40_DMA2.c"   /
//                    -D IAR -D TWR_K40X256 -lCN "D:\Profiles\B17685\My       /
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
//                    d\iar\gpio\..\..\..\src\drivers\adc16\" -I              /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETI /
//                    S512_SC\kinetis-sc\build\iar\gpio\..\..\..\src\drivers\ /
//                    uart\" -I "D:\Profiles\B17685\My                        /
//                    Documents\FAE\MCU\Kinetis\KINETIS512_SC\kinetis-sc\buil /
//                    d\iar\gpio\..\..\..\src\drivers\mcg\" -I                /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETI /
//                    S512_SC\kinetis-sc\build\iar\gpio\..\..\..\src\drivers\ /
//                    wdog\" -I "D:\Profiles\B17685\My                        /
//                    Documents\FAE\MCU\Kinetis\KINETIS512_SC\kinetis-sc\buil /
//                    d\iar\gpio\..\..\..\src\platforms\" -I                  /
//                    "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETI /
//                    S512_SC\kinetis-sc\build\iar\gpio\..\" -Ol              /
//                    --use_c++_inline                                        /
//    List file    =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETIS /
//                    512_SC\kinetis-sc\build\iar\gpio\RAM_128KB\List\gpio_k4 /
//                    0_DMA2.s                                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME gpio_k40_DMA2

        EXTERN enable_irq
        EXTERN get_value
        EXTERN printf
        EXTERN run_cmd
        EXTERN uif_cmd_help
        EXTERN uif_cmd_set
        EXTERN uif_cmd_show

        PUBLIC ADC1_Cal
        PUBLIC ADC_DATA
        PUBLIC ADC_PDATA
        PUBLIC Dma_Source_WORD
        PUBLIC Set_ADC1
        PUBLIC Set_Pit0
        PUBLIC Set_Pit1
        PUBLIC UIF_CMDTAB
        PUBLIC UIF_NUM_CMD
        PUBLIC UIF_NUM_SETCMD
        PUBLIC UIF_SETCMDTAB
        PUBLIC cmd_rd
        PUBLIC cmd_wrt
        PUBLIC delay
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

// D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\KINETIS512_SC\kinetis-sc\src\projects\gpio\gpio_k40_DMA2.c
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
//   24 uint32 Dma_Source_WORD[2], ADC_DATA, ADC_PDATA;
Dma_Source_WORD:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADC_DATA:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADC_PDATA:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 int *res_ptr;
res_ptr:
        DS8 4
//   26 #define DMA_TCD_SADDR(x)                            DMA_SADDR_REG(DMA_BASE_PTR,x) 
//   27 #define DMA_TCD_SOFF(x)                             DMA_SOFF_REG(DMA_BASE_PTR,x)
//   28 #define DMA_TCD_ATTR(x)                             DMA_ATTR_REG(DMA_BASE_PTR,x)
//   29 #define DMA_TCD_NBYTES_MLNO(x)                      DMA_NBYTES_MLNO_REG(DMA_BASE_PTR,x)
//   30 #define DMA_TCD_NBYTES_MLOFFNO(x)                   DMA_NBYTES_MLOFFNO_REG(DMA_BASE_PTR,x)
//   31 #define DMA_TCD_NBYTES_MLOFFYES(x)                  DMA_NBYTES_MLOFFYES_REG(DMA_BASE_PTR,x)
//   32 #define DMA_TCD_SLAST(x)                            DMA_SLAST_REG(DMA_BASE_PTR,x)
//   33 #define DMA_TCD_DADDR(x)                            DMA_DADDR_REG(DMA_BASE_PTR,x)
//   34 #define DMA_TCD_DOFF(x)                             DMA_DOFF_REG(DMA_BASE_PTR,x)
//   35 #define DMA_TCD_CITER_ELINKYES(x)                   DMA_CITER_ELINKYES_REG(DMA_BASE_PTR,x)
//   36 #define DMA_TCD_CITER_ELINKNO(x)                    DMA_CITER_ELINKNO_REG(DMA_BASE_PTR,x)
//   37 #define DMA_TCD_DLASTSGA(x)                         DMA_DLAST_SGA_REG(DMA_BASE_PTR,x)
//   38 #define DMA_TCD_CSR(x)                              DMA_CSR_REG(DMA_BASE_PTR,x)
//   39 #define DMA_TCD_BITER_ELINKNO(x)                    DMA_BITER_ELINKNO_REG(DMA_BASE_PTR,x)
//   40 #define DMA_TCD_BITER_ELINKYES(x)                   DMA_BITER_ELINKYES_REG(DMA_BASE_PTR,x)
//   41 #define DMAMUX_CHCFG(x)                             DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,x)
//   42 
//   43 struct dma_tcd {
//   44 	uint32_t saddr;
//   45 	int16_t soff;
//   46 	uint16_t tcdAttr;
//   47 	uint32_t nbytes;
//   48 	int32_t slast;
//   49 	uint32_t daddr;
//   50 	int16_t doff;
//   51 	uint16_t citer;
//   52 	int32_t dlast_sga;
//   53 	uint16_t csr;	
//   54 	uint16_t biter;
//   55 	int channelno;
//   56 	uint32_t testdata;
//   57 	int loopcount;
//   58     uint32_t link;
//   59 };
//   60 
//   61 enum COMMAND
//   62 {
//   63 	CONFIG_BASIC_XFR,
//   64 	MEM_FILL,
//   65 	DMA_SOFT_START,
//   66 	XFR_OVER_WAIT,
//   67 	CMP_MEM,
//   68 	CONFIG_BASIC_XFR_ERR,
//   69 	MINOR_LOOP_CH_LINK,
//   70 	MAJOR_LOOP_LINK_EN,
//   71 	SLAST_CHECK,
//   72 	DLAST_CHECK,
//   73 	SGA_TEST_CONFIG,
//   74 	SGA_ENB,
//   75 	XFR_WAIT_ERROR_CHECK,
//   76 	ERROR_CLR,
//   77 	INSERT_CPE_ERR,
//   78 	CONFIG_PRIORITY,
//   79 	CHECK_PRI
//   80 };
//   81 
//   82 struct dummy_tcd {
//   83 
//   84 	uint32_t saddr;
//   85 	int16_t soff;
//   86 	uint16_t attr;
//   87 	uint32_t nbytes;
//   88 	int32_t slast;
//   89 	uint32_t daddr;
//   90 	int16_t doff;
//   91 	uint16_t citer;
//   92 	int32_t dlast_sga;
//   93 	uint16_t csr;
//   94 	uint16_t biter;
//   95 	
//   96 };
//   97 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   98 struct dma_tcd tcd;
tcd:
        DS8 48
//   99 
//  100 //Function declarations
//  101 void cmd_rd (int, char **);
//  102 void cmd_wrt (int, char **);
//  103 void init_gpio(void);
//  104 void delay(void);
//  105 void dma_config(int COMMAND , struct dma_tcd *tcd_value);
//  106 void Set_Pit0(void);
//  107 void Set_Pit1(void);
//  108 int8 ADC1_Cal(void);
//  109 void Set_ADC1(void);
//  110 
//  111 UIF_CMD UIF_CMDTAB[] =
//  112 {
//  113     UIF_CMDS_ALL
//  114     {"rd",0,0,0,cmd_rd, "Register Display",""},
//  115     {"wrt",0,3,0,cmd_wrt, "Write PIT  <register index> <value>"},
//  116 
//  117 };
//  118 
//  119 UIF_SETCMD UIF_SETCMDTAB[] =
//  120 {
//  121     {"sysclk", 0,1,0,""},
//  122 };
//  123 
//  124 const int UIF_NUM_CMD    = UIF_CMDTAB_SIZE;
//  125 const int UIF_NUM_SETCMD = UIF_SETCMDTAB_SIZE;
//  126 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  127 void cmd_rd (int argc, char **argv)
//  128 {
cmd_rd:
        PUSH     {R7,LR}
//  129 
//  130     printf("\n-------------------------------------------\n");
        LDR.W    R0,??DataTable74
        BL       printf
//  131     printf("       PIT Register Read Utility\n");
        LDR.W    R0,??DataTable74_1
        BL       printf
//  132     printf("-------------------------------------------\n");
        LDR.W    R0,??DataTable74_2
        BL       printf
//  133     printf("\n");
        ADR.N    R0,??DataTable68  ;; "\n"
        BL       printf
//  134         printf("Pit0   = %d \r\n", (PIT_LDVAL0));
        LDR.W    R0,??DataTable74_3  ;; 0x40037100
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable74_4
        BL       printf
//  135         printf("Pit1   = %d \r\n", (PIT_LDVAL1));
        LDR.W    R0,??DataTable74_5  ;; 0x40037110
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable78
        BL       printf
//  136         
//  137    
//  138 }// end cmd_rd
        POP      {R0,PC}          ;; return
//  139 
//  140 //******************************************************************************
//  141 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  142 void
//  143 cmd_wrt (int argc, char **argv)
//  144 {
cmd_wrt:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
        MOVS     R4,R1
//  145     uint32 regindex;
//  146     uint32 regvalue;
//  147     
//  148     int result = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  149     res_ptr = &result;
        LDR.W    R0,??DataTable74_6
        ADD      R1,SP,#+0
        STR      R1,[R0, #+0]
//  150          
//  151     printf("\n-------------------------------------------\n");
        LDR.W    R0,??DataTable74
        BL       printf
//  152     printf(" PIT Single Register Write Utility\n");
        LDR.W    R0,??DataTable74_7
        BL       printf
//  153     printf("-------------------------------------------\n");
        LDR.W    R0,??DataTable74_2
        BL       printf
//  154     printf("\n");
        ADR.N    R0,??DataTable68  ;; "\n"
        BL       printf
//  155     printf("Valid 'wrt' syntax:\n");
        LDR.W    R0,??DataTable74_8
        BL       printf
//  156          printf("PIT0 frequency(Hz) > wrt  <0> <value(Hz)> \n\n");
        LDR.W    R0,??DataTable74_9
        BL       printf
//  157          printf("PIT1 frequency(Hz) > wrt  <1> <value(Hz)> \n\n");
        LDR.W    R0,??DataTable74_10
        BL       printf
//  158          printf("PIT0 to PIT1 phase(counts from A to B)> wrt  <2> <value(counts)> \n\n");
        LDR.W    R0,??DataTable74_11
        BL       printf
//  159          printf("PIT1 to PIT0 phase(counts from B to A)> wrt  <3> <value(counts)> \n\n");
        LDR.W    R0,??DataTable74_12
        BL       printf
//  160          
//  161     if (argc != 3)
        CMP      R5,#+3
        BEQ.N    ??cmd_wrt_0
//  162     {
//  163         printf("Valid 'wrt' syntax:\n");
        LDR.W    R0,??DataTable74_8
        BL       printf
//  164         printf("PIT0 frequency(Hz) > wrt  <0> <value(Hz)> \n\n");
        LDR.W    R0,??DataTable74_9
        BL       printf
//  165         printf("PIT1 frequency(Hz) > wrt  <1> <value(Hz)> \n\n");
        LDR.W    R0,??DataTable74_10
        BL       printf
//  166         printf("PIT0 to PIT1 phase(counts from A to B)> wrt  <2> <value(counts)> \n\n");
        LDR.W    R0,??DataTable74_11
        BL       printf
//  167         printf("PIT1 to PIT0 phase(counts from B to A) > wrt  <3> <value(counts)> \n\n");
        LDR.W    R0,??DataTable74_13
        BL       printf
//  168 
//  169         return;
        B.N      ??cmd_wrt_1
//  170     }
//  171     else{
//  172       
//  173         regindex = get_value(argv[1],res_ptr,10);
??cmd_wrt_0:
        MOVS     R2,#+10
        LDR.W    R0,??DataTable74_6
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, #+4]
        BL       get_value
        MOVS     R5,R0
//  174         regvalue = get_value(argv[2],res_ptr,10);
        MOVS     R2,#+10
        LDR.W    R0,??DataTable74_6
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, #+8]
        BL       get_value
//  175                 
//  176          if(regvalue<4294967294){        
        CMN      R0,#+2
        BCS.W    ??cmd_wrt_2
//  177               switch (regindex){
        CMP      R5,#+0
        BEQ.N    ??cmd_wrt_3
        CMP      R5,#+2
        BEQ.N    ??cmd_wrt_4
        BCC.N    ??cmd_wrt_5
        CMP      R5,#+3
        BEQ.N    ??cmd_wrt_6
        B.N      ??cmd_wrt_7
//  178                  case 0: PIT_LDVAL0 = (48000000/regvalue)/3 -3*32000/regvalue;
??cmd_wrt_3:
        LDR.W    R1,??DataTable76  ;; 0x2dc6c00
        UDIV     R1,R1,R0
        MOVS     R2,#+3
        UDIV     R1,R1,R2
        LDR.W    R2,??DataTable76_1  ;; 0x17700
        UDIV     R0,R2,R0
        SUBS     R0,R1,R0
        LDR.W    R1,??DataTable74_3  ;; 0x40037100
        STR      R0,[R1, #+0]
//  179                     break;
        B.N      ??cmd_wrt_8
//  180                  case 1: PIT_LDVAL1 =  (48000000/regvalue)/2 -3*32000/regvalue;
??cmd_wrt_5:
        LDR.W    R1,??DataTable76  ;; 0x2dc6c00
        UDIV     R1,R1,R0
        LDR.W    R2,??DataTable76_1  ;; 0x17700
        UDIV     R0,R2,R0
        RSBS     R0,R0,R1, LSR #+1
        LDR.W    R1,??DataTable74_5  ;; 0x40037110
        STR      R0,[R1, #+0]
//  181                     break;
        B.N      ??cmd_wrt_8
//  182                  case 2: 
//  183                    {thld1 = PIT_LDVAL1;
??cmd_wrt_4:
        LDR.W    R1,??DataTable77
        LDR.W    R2,??DataTable74_5  ;; 0x40037110
        LDR      R2,[R2, #+0]
        STR      R2,[R1, #+0]
//  184                     thld2 = 2* regvalue;
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable77_1
        STR      R0,[R1, #+0]
//  185                      // disable the timer
//  186                     PIT_TCTRL0 &= !PIT_TCTRL_TEN_MASK;  
        LDR.W    R0,??DataTable77_2  ;; 0x40037108
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable77_2  ;; 0x40037108
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//  187                     PIT_TCTRL1 &= !PIT_TCTRL_TEN_MASK;
        LDR.W    R1,??DataTable77_3  ;; 0x40037118
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable77_3  ;; 0x40037118
        MOVS     R3,#+0
        STR      R3,[R2, #+0]
//  188                       // Set GPIO to known state
//  189                     GPIOD_PSOR = 0x00000080;
        LDR.W    R2,??DataTable77_4  ;; 0x400ff0c4
        MOVS     R3,#+128
        STR      R3,[R2, #+0]
//  190                     GPIOA_PSOR = 0x00010000;
        LDR.W    R2,??DataTable77_5  ;; 0x400ff004
        MOVS     R3,#+65536
        STR      R3,[R2, #+0]
//  191                       //Clear flag for short pulse
//  192                     PIT_TFLG1 = PIT_TFLG_TIF_MASK;
        LDR.W    R2,??DataTable77_6  ;; 0x4003711c
        MOVS     R3,#+1
        STR      R3,[R2, #+0]
//  193                       // Load the new values
//  194                     PIT_LDVAL1 = thld2;
        LDR.W    R2,??DataTable74_5  ;; 0x40037110
        LDR.W    R3,??DataTable77_1
        LDR      R3,[R3, #+0]
        STR      R3,[R2, #+0]
//  195                     PIT_LDVAL0 = thld1;
        LDR.W    R2,??DataTable74_3  ;; 0x40037100
        LDR.W    R3,??DataTable77
        LDR      R3,[R3, #+0]
        STR      R3,[R2, #+0]
//  196                     // start the timer
//  197                     PIT_TCTRL1 |= PIT_TCTRL_TEN_MASK;   
        LDR.W    R2,??DataTable77_3  ;; 0x40037118
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1
        LDR.W    R3,??DataTable77_3  ;; 0x40037118
        STR      R2,[R3, #+0]
//  198                     PIT_TCTRL0 |= PIT_TCTRL_TEN_MASK;
        LDR.W    R2,??DataTable77_2  ;; 0x40037108
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1
        LDR.W    R3,??DataTable77_2  ;; 0x40037108
        STR      R2,[R3, #+0]
//  199                      // wait and set the true period
//  200                     while(!(PIT_TFLG1&1));
??cmd_wrt_9:
        LDR.W    R0,??DataTable77_6  ;; 0x4003711c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??cmd_wrt_9
//  201                     PIT_LDVAL1 = thld1;
        LDR.N    R0,??DataTable74_5  ;; 0x40037110
        LDR.W    R1,??DataTable77
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  202                    }
//  203                     break;
        B.N      ??cmd_wrt_8
//  204                  case 3: 
//  205                    {thld1 = PIT_LDVAL0;
??cmd_wrt_6:
        LDR.W    R1,??DataTable77
        LDR.N    R2,??DataTable74_3  ;; 0x40037100
        LDR      R2,[R2, #+0]
        STR      R2,[R1, #+0]
//  206                      thld2 = 2* regvalue;
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable77_1
        STR      R0,[R1, #+0]
//  207                      // disable the timer
//  208                     PIT_TCTRL0 &= !PIT_TCTRL_TEN_MASK;   
        LDR.W    R0,??DataTable77_2  ;; 0x40037108
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable77_2  ;; 0x40037108
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//  209                     PIT_TCTRL1 &= !PIT_TCTRL_TEN_MASK;
        LDR.W    R1,??DataTable77_3  ;; 0x40037118
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable77_3  ;; 0x40037118
        MOVS     R3,#+0
        STR      R3,[R2, #+0]
//  210                    
//  211                      // Set GPIO to known state
//  212                     GPIOD_PSOR = 0x00000080;
        LDR.W    R2,??DataTable77_4  ;; 0x400ff0c4
        MOVS     R3,#+128
        STR      R3,[R2, #+0]
//  213                     GPIOA_PSOR = 0x00010000; 
        LDR.W    R2,??DataTable77_5  ;; 0x400ff004
        MOVS     R3,#+65536
        STR      R3,[R2, #+0]
//  214                     
//  215                       //Clear flag for short pulse
//  216                     PIT_TFLG0 = PIT_TFLG_TIF_MASK;
        LDR.W    R2,??DataTable78_1  ;; 0x4003710c
        MOVS     R3,#+1
        STR      R3,[R2, #+0]
//  217                     // start the timer
//  218                     PIT_LDVAL0 = thld2;
        LDR.N    R2,??DataTable74_3  ;; 0x40037100
        LDR.W    R3,??DataTable77_1
        LDR      R3,[R3, #+0]
        STR      R3,[R2, #+0]
//  219                     PIT_LDVAL1 = thld1;
        LDR.N    R2,??DataTable74_5  ;; 0x40037110
        LDR.W    R3,??DataTable77
        LDR      R3,[R3, #+0]
        STR      R3,[R2, #+0]
//  220                      // wait and set the true period
//  221                     PIT_TCTRL0 |= PIT_TCTRL_TEN_MASK;   // start the timer
        LDR.W    R2,??DataTable77_2  ;; 0x40037108
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1
        LDR.W    R3,??DataTable77_2  ;; 0x40037108
        STR      R2,[R3, #+0]
//  222                     PIT_TCTRL1 |= PIT_TCTRL_TEN_MASK;
        LDR.W    R2,??DataTable77_3  ;; 0x40037118
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1
        LDR.W    R3,??DataTable77_3  ;; 0x40037118
        STR      R2,[R3, #+0]
//  223                     // wait and set the true period
//  224                     while(!(PIT_TFLG0&1));
??cmd_wrt_10:
        LDR.W    R0,??DataTable78_1  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??cmd_wrt_10
//  225                     PIT_LDVAL0 = thld1;
        LDR.N    R0,??DataTable74_3  ;; 0x40037100
        LDR.W    R1,??DataTable77
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  226                     
//  227                    }
//  228                     break;
        B.N      ??cmd_wrt_8
//  229                  
//  230                  default: break;
??cmd_wrt_7:
        B.N      ??cmd_wrt_8
//  231               } // end switch/case regindex
//  232          } // if
//  233         else 
//  234         printf("Register value not in valid range.\r\n\n");
??cmd_wrt_2:
        LDR.W    R0,??DataTable79
        BL       printf
//  235        
//  236     }// end else
//  237 }// end cmd_wrt
??cmd_wrt_8:
??cmd_wrt_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable68:
        DC8      "\n",0x0,0x0
//  238 
//  239 /************************************************************************************ 
//  240 *  DMA 32-bit transmit test 
//  241 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  242 void dma_32bit (void)
//  243 {volatile uint32 *tempptr;
dma_32bit:
        PUSH     {R7,LR}
//  244        
//  245   SIM_SCGC6 |= SIM_SCGC6_DMAMUX_MASK;
        LDR.W    R0,??DataTable78_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable78_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  246   DMAMUX_CHCFG0|=DMAMUX_CHCFG_SOURCE(52);  //PORTD 
        LDR.W    R0,??DataTable78_3  ;; 0x40021000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x34
        LDR.W    R1,??DataTable78_3  ;; 0x40021000
        STRB     R0,[R1, #+0]
//  247   DMAMUX_CHCFG0 |= DMAMUX_CHCFG_ENBL_MASK|DMAMUX_CHCFG_TRIG_MASK;
        LDR.W    R0,??DataTable78_3  ;; 0x40021000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0xC0
        LDR.W    R1,??DataTable78_3  ;; 0x40021000
        STRB     R0,[R1, #+0]
//  248   
//  249   DMAMUX_CHCFG1|=DMAMUX_CHCFG_SOURCE(49);  //PORTD 
        LDR.W    R0,??DataTable78_4  ;; 0x40021001
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x31
        LDR.W    R1,??DataTable78_4  ;; 0x40021001
        STRB     R0,[R1, #+0]
//  250   DMAMUX_CHCFG1 |= DMAMUX_CHCFG_ENBL_MASK|DMAMUX_CHCFG_TRIG_MASK;
        LDR.W    R0,??DataTable78_4  ;; 0x40021001
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0xC0
        LDR.W    R1,??DataTable78_4  ;; 0x40021001
        STRB     R0,[R1, #+0]
//  251   
//  252   
//  253   
//  254 	printf("\nStarting eDMA 32-bit memory to memory transfer test!\n");
        LDR.W    R0,??DataTable78_5
        BL       printf
//  255         tempptr = &Dma_Source_WORD[0];
        LDR.W    R0,??DataTable78_6
//  256 	
//  257 	tcd.saddr = (uint32_t)tempptr;
        LDR.W    R1,??DataTable78_7
        STR      R0,[R1, #+0]
//  258 	tcd.daddr = 0x400Ff0CC; //ADDRESS of PTD_PTOR
        LDR.W    R0,??DataTable78_7
        LDR.W    R1,??DataTable78_8  ;; 0x400ff0cc
        STR      R1,[R0, #+16]
//  259 	
//  260 	tcd.nbytes = 4;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+4
        STR      R1,[R0, #+8]
//  261 	tcd.tcdAttr = DMA_ATTR_SSIZE(2) | DMA_ATTR_DSIZE(2); //EDMA_TCD_ATTR_SSIZE_32BIT|EDMA_TCD_ATTR_DSIZE_32BIT ;
        LDR.W    R0,??DataTable78_7
        MOVW     R1,#+514
        STRH     R1,[R0, #+6]
//  262 	tcd.soff = 0x0;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  263 	tcd.doff = 0x0;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+0
        STRH     R1,[R0, #+20]
//  264 	tcd.slast = 0x0;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  265 	tcd.loopcount = 0x1;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+1
        STR      R1,[R0, #+40]
//  266 	tcd.dlast_sga = 0x0;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  267 	tcd.csr = 0x0;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+0
        STRH     R1,[R0, #+28]
//  268 	
//  269         tcd.channelno = 0;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
//  270     
//  271         dma_config(CONFIG_BASIC_XFR, &tcd);
        LDR.W    R1,??DataTable78_7
        MOVS     R0,#+0
        BL       dma_config
//  272         DMA_ERQ|= 1;
        LDR.W    R0,??DataTable79_1  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable79_1  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  273         /////////////////////////////////////////////////
//  274         //Set up DMA CH 1
//  275         ///////////////////////////////////////////
//  276         tempptr = &Dma_Source_WORD[1];
        LDR.W    R0,??DataTable79_2
//  277 	
//  278 	tcd.saddr = (uint32_t)tempptr;
        LDR.W    R1,??DataTable78_7
        STR      R0,[R1, #+0]
//  279 	tcd.daddr = 0x400Ff00C; //ADDRESS of PTD_PTOR
        LDR.W    R0,??DataTable78_7
        LDR.W    R1,??DataTable79_3  ;; 0x400ff00c
        STR      R1,[R0, #+16]
//  280 	//tcd.daddr = 0x400Ff0CC;
//  281 	tcd.nbytes = 4;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+4
        STR      R1,[R0, #+8]
//  282 	tcd.tcdAttr = DMA_ATTR_SSIZE(2) | DMA_ATTR_DSIZE(2); //EDMA_TCD_ATTR_SSIZE_32BIT|EDMA_TCD_ATTR_DSIZE_32BIT ;
        LDR.W    R0,??DataTable78_7
        MOVW     R1,#+514
        STRH     R1,[R0, #+6]
//  283 	tcd.soff = 0x0;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  284 	tcd.doff = 0x0;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+0
        STRH     R1,[R0, #+20]
//  285 	tcd.slast = 0x0;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  286 	tcd.loopcount = 0x1;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+1
        STR      R1,[R0, #+40]
//  287 	tcd.dlast_sga = 0x0;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  288 	tcd.csr = 0x0;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+0
        STRH     R1,[R0, #+28]
//  289 	
//  290         tcd.channelno = 1;
        LDR.W    R0,??DataTable78_7
        MOVS     R1,#+1
        STR      R1,[R0, #+32]
//  291     
//  292         dma_config(CONFIG_BASIC_XFR, &tcd);
        LDR.W    R1,??DataTable78_7
        MOVS     R0,#+0
        BL       dma_config
//  293         DMA_ERQ|= 2;
        LDR.W    R0,??DataTable79_1  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable79_1  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  294        
//  295    	
//  296 }
        POP      {R0,PC}          ;; return
//  297 
//  298 //**************************************************************/
//  299 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  300 void main (void)
//  301 {
main:
        PUSH     {R7,LR}
//  302   
//  303   printf("TWR-K40X256 GPIO Example!\n");
        LDR.W    R0,??DataTable79_4
        BL       printf
//  304 
//  305   /* Turn on all port clocks */
//  306   SIM_SCGC5 = SIM_SCGC5_PORTA_MASK | SIM_SCGC5_PORTB_MASK | SIM_SCGC5_PORTC_MASK | SIM_SCGC5_PORTD_MASK | SIM_SCGC5_PORTE_MASK;
        LDR.W    R0,??DataTable79_5  ;; 0x40048038
        MOV      R1,#+15872
        STR      R1,[R0, #+0]
//  307 
//  308   /* Enable GPIOC interrupts in NVIC */
//  309   enable_irq(89); //GPIOC Vector is 105. IRQ# is 105-16=89
        MOVS     R0,#+89
        BL       enable_irq
//  310 
//  311   /* Initialize GPIO on TWR-K40X256 */
//  312   init_gpio();
        BL       init_gpio
//  313   
//  314   Set_ADC1();
        BL       Set_ADC1
//  315   
//  316   Dma_Source_WORD[0]= 0x00000080;
        LDR.W    R0,??DataTable78_6
        MOVS     R1,#+128
        STR      R1,[R0, #+0]
//  317   Dma_Source_WORD[1]= 0x00010000;
        LDR.W    R0,??DataTable78_6
        MOVS     R1,#+65536
        STR      R1,[R0, #+4]
//  318   GPIOD_PTOR = 0x00000080;
        LDR.W    R0,??DataTable78_8  ;; 0x400ff0cc
        MOVS     R1,#+128
        STR      R1,[R0, #+0]
//  319    GPIOD_PTOR = 0x00000080;
        LDR.W    R0,??DataTable78_8  ;; 0x400ff0cc
        MOVS     R1,#+128
        STR      R1,[R0, #+0]
//  320     GPIOA_PTOR = 0x00010000;
        LDR.W    R0,??DataTable79_3  ;; 0x400ff00c
        MOVS     R1,#+65536
        STR      R1,[R0, #+0]
//  321    GPIOA_PTOR =  0x00010000;
        LDR.W    R0,??DataTable79_3  ;; 0x400ff00c
        MOVS     R1,#+65536
        STR      R1,[R0, #+0]
//  322   dma_32bit();
        BL       dma_32bit
//  323    
//  324   ADC_PDATA = 0;
        LDR.W    R0,??DataTable79_6
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  325  //set Pit
//  326   Set_Pit0();
        BL       Set_Pit0
//  327   Set_Pit1();
        BL       Set_Pit1
//  328           PIT_LDVAL0 = 1777;
        LDR.N    R0,??DataTable74_3  ;; 0x40037100
        MOVW     R1,#+1777
        STR      R1,[R0, #+0]
//  329           PIT_LDVAL1 = 1777;
        LDR.N    R0,??DataTable74_5  ;; 0x40037110
        MOVW     R1,#+1777
        STR      R1,[R0, #+0]
//  330           
//  331           PIT_TFLG0 = PIT_TFLG_TIF_MASK;
        LDR.W    R0,??DataTable78_1  ;; 0x4003710c
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  332           GPIOD_PSOR = 0x00000080;
        LDR.W    R0,??DataTable77_4  ;; 0x400ff0c4
        MOVS     R1,#+128
        STR      R1,[R0, #+0]
//  333           GPIOA_PSOR = 0x00010000;
        LDR.W    R0,??DataTable77_5  ;; 0x400ff004
        MOVS     R1,#+65536
        STR      R1,[R0, #+0]
//  334           PIT_TCTRL1 |= PIT_TCTRL_TEN_MASK;   // start the timer
        LDR.W    R0,??DataTable77_3  ;; 0x40037118
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable77_3  ;; 0x40037118
        STR      R0,[R1, #+0]
//  335           PIT_TCTRL0 |= PIT_TCTRL_TEN_MASK;
        LDR.W    R0,??DataTable77_2  ;; 0x40037108
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable77_2  ;; 0x40037108
        STR      R0,[R1, #+0]
//  336               
//  337   while(1){
//  338           
//  339     run_cmd();
??main_0:
        BL       run_cmd
        B.N      ??main_0
//  340   
//  341   
//  342   }//While(1)
//  343   
//  344   }//Main
//  345   
//  346   
//  347   
//  348 
//  349 
//  350 /*
//  351  * Initialize GPIO for Tower switches and LED's
//  352  *
//  353  *   PTC5 - SW6
//  354  *   PTC13 - SW7
//  355  *
//  356  *   PTB11 - Blue LED (D17)
//  357  *   PTC9 - Green LED (D14)
//  358  *   PTC8 - Yellow LED (D15)
//  359  *   PTC7 - Orange LED (D16)
//  360  *
//  361  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  362 void init_gpio()
//  363 {
//  364   //Set PTC5 and PTC13 (connected to SW6 and SW7) for GPIO functionality, falling IRQ,
//  365   //   and to use internal pull-ups. (pin defaults to input state)
//  366  // PORTC_PCR5=(0|PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK);
//  367  // PORTC_PCR13=(0|PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK);
//  368 
//  369   //Set PTB11, PTC7, PTC8, and PTC9 (connected to LED's) for GPIO functionality
//  370   PORTB_PCR11=(0|PORT_PCR_MUX(1));
init_gpio:
        LDR.W    R0,??DataTable79_7  ;; 0x4004a02c
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  371   PORTC_PCR7=(0|PORT_PCR_MUX(1));
        LDR.W    R0,??DataTable79_8  ;; 0x4004b01c
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  372   PORTC_PCR8=(0|PORT_PCR_MUX(1));
        LDR.W    R0,??DataTable79_9  ;; 0x4004b020
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  373   PORTC_PCR9=(0|PORT_PCR_MUX(1));
        LDR.W    R0,??DataTable79_10  ;; 0x4004b024
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  374   
//  375   //DMA outputs
//  376   PORTD_PCR6|=(0|PORT_PCR_MUX(1));
        LDR.W    R0,??DataTable79_11  ;; 0x4004c018
        LDR      R0,[R0, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable79_11  ;; 0x4004c018
        STR      R0,[R1, #+0]
//  377   PORTD_PCR7|=(0|PORT_PCR_MUX(1)|PORT_PCR_IRQC(0x3));
        LDR.W    R0,??DataTable79_12  ;; 0x4004c01c
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable79_13  ;; 0x30100
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable79_12  ;; 0x4004c01c
        STR      R0,[R1, #+0]
//  378   PORTA_PCR16|=(0|PORT_PCR_MUX(1)|PORT_PCR_IRQC(0x3));
        LDR.W    R0,??DataTable79_14  ;; 0x40049040
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable79_13  ;; 0x30100
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable79_14  ;; 0x40049040
        STR      R0,[R1, #+0]
//  379 
//  380 
//  381   //Change PTB11, PTC7, PTC8, PTC9 to outputs
//  382   GPIOB_PDDR=GPIO_PDDR_PDD(GPIO_PIN(11));
        LDR.W    R0,??DataTable79_15  ;; 0x400ff054
        MOV      R1,#+2048
        STR      R1,[R0, #+0]
//  383   GPIOC_PDDR=GPIO_PDDR_PDD(GPIO_PIN(7) | GPIO_PIN(8) | GPIO_PIN(9));	
        LDR.W    R0,??DataTable79_16  ;; 0x400ff094
        MOV      R1,#+896
        STR      R1,[R0, #+0]
//  384   
//  385   GPIOD_PDDR|=GPIO_PDDR_PDD(GPIO_PIN(7) | GPIO_PIN(6) );	
        LDR.W    R0,??DataTable79_17  ;; 0x400ff0d4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xC0
        LDR.W    R1,??DataTable79_17  ;; 0x400ff0d4
        STR      R0,[R1, #+0]
//  386   GPIOA_PDDR|=GPIO_PDDR_PDD(GPIO_PIN(16));	
        LDR.W    R0,??DataTable79_18  ;; 0x400ff014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable79_18  ;; 0x400ff014
        STR      R0,[R1, #+0]
//  387 }
        BX       LR               ;; return
//  388 /********************************************************************/
//  389 
//  390 /*
//  391  * ISR for PORTC interrupts
//  392  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  393 void portc_isr(void)
//  394 {
portc_isr:
        PUSH     {R7,LR}
//  395   if(PORTC_ISFR & PORT_ISFR_ISF(GPIO_PIN(5)))
        LDR.W    R0,??DataTable79_19  ;; 0x4004b0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??portc_isr_0
//  396   {
//  397      printf("SW6 Pressed\n");
        LDR.W    R0,??DataTable79_20
        BL       printf
//  398   }
//  399   if(PORTC_ISFR & PORT_ISFR_ISF(GPIO_PIN(13)))
??portc_isr_0:
        LDR.W    R0,??DataTable79_19  ;; 0x4004b0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BPL.N    ??portc_isr_1
//  400   {
//  401      printf("SW7 Pressed\n");
        LDR.W    R0,??DataTable79_21
        BL       printf
//  402   }
//  403   PORTC_ISFR=0xFFFFFFFF;  //Clear Port C ISR flags
??portc_isr_1:
        LDR.W    R0,??DataTable79_19  ;; 0x4004b0a0
        MOVS     R1,#-1
        STR      R1,[R0, #+0]
//  404 }
        POP      {R0,PC}          ;; return
//  405 
//  406 /*
//  407  * ISR for PORTE interrupts
//  408  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  409 void porte_isr(void)
//  410 {
//  411   PORTE_ISFR=0xFFFFFFFF;  //Clear Port E ISR flags
porte_isr:
        LDR.W    R0,??DataTable79_22  ;; 0x4004d0a0
        MOVS     R1,#-1
        STR      R1,[R0, #+0]
//  412 }
        BX       LR               ;; return
//  413 
//  414 /*
//  415  * ISR for PORTA interrupts
//  416  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  417 void porta_isr(void)
//  418 {
//  419   PORTA_ISFR=0xFFFFFFFF;  //Clear Port A ISR flags
porta_isr:
        LDR.W    R0,??DataTable79_23  ;; 0x400490a0
        MOVS     R1,#-1
        STR      R1,[R0, #+0]
//  420 }
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
        DC32     res_ptr

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_7:
        DC32     `?<Constant " PIT Single Register ...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_8:
        DC32     `?<Constant "Valid \\'wrt\\' syntax:\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_9:
        DC32     `?<Constant "PIT0 frequency(Hz) > ...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_10:
        DC32     `?<Constant "PIT1 frequency(Hz) > ...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_11:
        DC32     `?<Constant "PIT0 to PIT1 phase(co...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_12:
        DC32     `?<Constant "PIT1 to PIT0 phase(co...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_13:
        DC32     `?<Constant "PIT1 to PIT0 phase(co...">_1`
//  421 
//  422 
//  423 /*
//  424  * Function to provide a short delay
//  425  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  426 void delay()
//  427 {
//  428   unsigned int i, n;
//  429   for(i=0;i<30000;i++)
delay:
        MOVS     R0,#+0
        B.N      ??delay_0
//  430   {
//  431     for(n=0;n<200;n++)
//  432     {
//  433       asm("nop");
??delay_1:
        nop              
//  434     }
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
//  435   }
//  436 }
??delay_3:
        BX       LR               ;; return
//  437 ///////////////////////////////////////////////////////////////////////
//  438 //////////////////////////////////////////////////////////////////////
//  439 //////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  440 void dma_config(int COMMAND , struct dma_tcd *tcd_value)
//  441 {
dma_config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R1
//  442 	int  i=0,j=0;
        MOVS     R5,#+0
        MOVS     R6,#+0
//  443 	
//  444 	switch(COMMAND) 
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
//  445 	{
//  446 	  case CONFIG_BASIC_XFR:	
//  447 	    
//  448             i = tcd_value->channelno;
??dma_config_0:
        LDR      R5,[R4, #+32]
//  449             //printf("\nTesting DMA channel "); Print8(i); printf("\n");	   	
//  450             DMA_TCD_SADDR(i) = tcd_value->saddr;
        LSLS     R0,R5,#+5
        LDR.W    R1,??DataTable79_24  ;; 0x40009000
        LDR      R2,[R4, #+0]
        STR      R2,[R0, R1]
//  451 		    
//  452 	    DMA_TCD_ATTR(i) = tcd_value->tcdAttr;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+6]
        STRH     R1,[R0, #+6]
//  453 	        
//  454 	    DMA_TCD_SOFF(i) = tcd_value->soff;	  
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+4]
        STRH     R1,[R0, #+4]
//  455 	       	
//  456 	    DMA_TCD_NBYTES_MLNO(i) = tcd_value->nbytes;	
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+8]
        STR      R1,[R0, #+8]
//  457 		    	    
//  458 	    DMA_TCD_SLAST(i) = tcd_value->slast;	        
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+12]
        STR      R1,[R0, #+12]
//  459 	        
//  460 	    DMA_TCD_DADDR(i) = tcd_value->daddr;	    
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+16]
        STR      R1,[R0, #+16]
//  461 	            
//  462 	    DMA_TCD_CITER_ELINKNO(i) = DMA_CITER_ELINKNO_CITER(tcd_value->loopcount);	        
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+40]
        LSLS     R1,R1,#+17
        LSRS     R1,R1,#+17
        STRH     R1,[R0, #+22]
//  463 		    
//  464             DMA_TCD_DOFF(i) = tcd_value->doff;	
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+20]
        STRH     R1,[R0, #+20]
//  465 		    	    
//  466 	    DMA_TCD_DLASTSGA(i) = tcd_value->dlast_sga;	        
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+24]
        STR      R1,[R0, #+24]
//  467 	        
//  468             DMA_TCD_BITER_ELINKNO(i) = DMA_BITER_ELINKNO_BITER(tcd_value->loopcount);
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+40]
        LSLS     R1,R1,#+17
        LSRS     R1,R1,#+17
        STRH     R1,[R0, #+30]
//  469 		    
//  470             DMA_TCD_CSR(i) = tcd_value->csr;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+28]
        STRH     R1,[R0, #+28]
//  471             
//  472 	
//  473 	    break;
        B.N      ??dma_config_17
//  474 		
//  475           case MEM_FILL:  
//  476 		
//  477 	    i = tcd_value->channelno;
??dma_config_2:
        LDR      R5,[R4, #+32]
//  478 	    for( j=0; j < tcd_value->nbytes; j++)	//j=j+4
        MOVS     R6,#+0
        B.N      ??dma_config_18
//  479 	    {
//  480 	      //*((unsigned long int *)(tcd_value->saddr +j)) = tcd_value->testdata;
//  481 	      *((unsigned char *)(tcd_value->saddr +j)) = j + i;
??dma_config_19:
        ADDS     R0,R5,R6
        LDR      R1,[R4, #+0]
        STRB     R0,[R6, R1]
//  482 	      //printf("\n"); Print8(*((unsigned char *)(tcd_value->saddr +j)));
//  483 	    }
        ADDS     R6,R6,#+1
??dma_config_18:
        LDR      R0,[R4, #+8]
        CMP      R6,R0
        BCC.N    ??dma_config_19
//  484             //*((unsigned long int *)(tcd_value->saddr +j)) = 0x0+j;
//  485             break;
        B.N      ??dma_config_17
//  486 		
//  487 	  case DMA_SOFT_START: 
//  488 		
//  489 	    i = tcd_value->channelno;		
??dma_config_1:
        LDR      R5,[R4, #+32]
//  490 	    //printf("\nDMA channel %d started.\n", i);
//  491 	    DMA_SSRT = tcd_value->channelno;     
        LDR      R0,[R4, #+32]
        LDR.W    R1,??DataTable79_25  ;; 0x4000801d
        STRB     R0,[R1, #+0]
//  492 	    break;
        B.N      ??dma_config_17
//  493 		        
//  494           case XFR_OVER_WAIT: 
//  495 		
//  496 	    i = tcd_value->channelno;
??dma_config_4:
        LDR      R5,[R4, #+32]
//  497 	    //printf("\nBefore waiting.");
//  498             //printf("\nDMA_TCD_CSR %d = 0x%x", i, DMA_TCD_CSR(i));
//  499             //printf("\nDMA_CSR & MASK = 0x%x", (DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK));
//  500             //printf("\nDMA_ES = 0x%x", DMA_ES);
//  501 	    while((( DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) == 0) && ( DMA_ES == 0));
??dma_config_20:
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BMI.N    ??dma_config_21
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_config_20
//  502 	    //while((DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) == 0);
//  503 	    //printf("\nAfter waiting.");			
//  504 	    if (DMA_ES)
??dma_config_21:
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_config_22
//  505 	    {
//  506               dma_error++;
        LDR.W    R0,??DataTable79_27
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable79_27
        STR      R0,[R1, #+0]
//  507               printf("\nERROR!!! An error ocurred while processing.\n");
        LDR.W    R0,??DataTable79_28
        BL       printf
//  508 	      printf("\nDMA_ES = 0x%x", DMA_ES);
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable79_29
        BL       printf
//  509               printf("\nDMA_ERR = 0x%x", DMA_ERR);
        LDR.W    R0,??DataTable79_30  ;; 0x4000802c
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable79_31
        BL       printf
//  510 	    }  
//  511 	    break;
??dma_config_22:
        B.N      ??dma_config_17
//  512 		        
//  513           case CMP_MEM:
//  514 		
//  515             j = tcd_value->channelno;
??dma_config_3:
        LDR      R6,[R4, #+32]
//  516             //printf("\nCSR0 = "); //Print16(DMA_TCD_CSR(0));
//  517             for(i=0; i < (tcd_value->nbytes); i++)
        MOVS     R5,#+0
        B.N      ??dma_config_23
??dma_config_24:
        ADDS     R5,R5,#+1
??dma_config_23:
        LDR      R0,[R4, #+8]
        CMP      R5,R0
        BCS.N    ??dma_config_25
//  518             {		            	
//  519               /*
//  520 	      printf("\nSADDR: ");
//  521               Print32((unsigned long int)(tcd_value->saddr+ i)); printf(" = ");
//  522               Print8(*(unsigned char *)( tcd_value->saddr+ i));		          
//  523               printf("\nDADDR: ");
//  524               Print32((unsigned long int)(tcd_value->daddr+ i)); printf(" = ");
//  525               Print8(*(unsigned char *)( tcd_value->daddr+ i));
//  526               printf("\n");
//  527      	      */
//  528               if ( (*(unsigned char *)(tcd_value->saddr + i)) != (*(unsigned char *)(tcd_value->daddr + i)) )
        LDR      R0,[R4, #+0]
        LDRB     R0,[R5, R0]
        LDR      R1,[R4, #+16]
        LDRB     R1,[R5, R1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BEQ.N    ??dma_config_24
//  529               {
//  530                 dma_error++;
        LDR.W    R0,??DataTable79_27
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable79_27
        STR      R0,[R1, #+0]
//  531                 printf("\nData error!");
        LDR.W    R0,??DataTable79_32
        BL       printf
//  532          	printf("\nSADDR: 0x%x = 0x%x", ((unsigned long int)(tcd_value->saddr+i)), (*(unsigned char *)( tcd_value->saddr+i)));       
        LDR      R0,[R4, #+0]
        LDRB     R2,[R5, R0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[R4, #+0]
        ADDS     R1,R5,R0
        LDR.W    R0,??DataTable79_33
        BL       printf
//  533                 printf("\nDADDR: 0x%x = 0x%x", ((unsigned long int)(tcd_value->daddr+i)), (*(unsigned char *)( tcd_value->daddr+i)));
        LDR      R0,[R4, #+16]
        LDRB     R2,[R5, R0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[R4, #+16]
        ADDS     R1,R5,R0
        LDR.W    R0,??DataTable79_34
        BL       printf
//  534                 break;
//  535               }
//  536             }
//  537           
//  538             break;                
??dma_config_25:
        B.N      ??dma_config_17
//  539             
//  540           case CONFIG_BASIC_XFR_ERR:
//  541         
//  542             i = tcd_value->channelno ;
??dma_config_6:
        LDR      R5,[R4, #+32]
//  543             printf("\nTesting DMA channel %d", i);
        MOVS     R1,R5
        LDR.W    R0,??DataTable79_35
        BL       printf
//  544             DMA_TCD_SADDR(i) = tcd_value->saddr ;
        LSLS     R0,R5,#+5
        LDR.W    R1,??DataTable79_24  ;; 0x40009000
        LDR      R2,[R4, #+0]
        STR      R2,[R0, R1]
//  545 	
//  546             DMA_TCD_ATTR(i) = tcd_value->tcdAttr; 
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+6]
        STRH     R1,[R0, #+6]
//  547 							
//  548             DMA_TCD_SOFF(i) = tcd_value->soff;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+4]
        STRH     R1,[R0, #+4]
//  549 	
//  550             DMA_TCD_NBYTES_MLNO(i) = tcd_value->nbytes;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+8]
        STR      R1,[R0, #+8]
//  551 	
//  552             DMA_TCD_SLAST(i) = tcd_value->slast;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+12]
        STR      R1,[R0, #+12]
//  553 
//  554             DMA_TCD_DADDR(i) = tcd_value->daddr;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+16]
        STR      R1,[R0, #+16]
//  555 	
//  556             //DMA_TCD_CITER_ELINKNO(i) = tcd_value->citer;
//  557             DMA_TCD_CITER_ELINKYES(i) = tcd_value->citer;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+22]
        STRH     R1,[R0, #+22]
//  558 								
//  559             DMA_TCD_DOFF(i) = tcd_value->doff;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+20]
        STRH     R1,[R0, #+20]
//  560 									
//  561             DMA_TCD_DLASTSGA(i) = tcd_value->dlast_sga;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+24]
        STR      R1,[R0, #+24]
//  562 
//  563             //DMA_TCD_BITER_ELINKNO(i) = tcd_value->biter;
//  564             DMA_TCD_BITER_ELINKYES(i) = tcd_value->biter;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+30]
        STRH     R1,[R0, #+30]
//  565 	
//  566             DMA_TCD_CSR(i) = tcd_value->csr;	
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+28]
        STRH     R1,[R0, #+28]
//  567 		        
//  568             break; 
        B.N      ??dma_config_17
//  569         		
//  570           case MINOR_LOOP_CH_LINK:
//  571 		
//  572             i = tcd_value->channelno ;
??dma_config_5:
        LDR      R5,[R4, #+32]
//  573 		
//  574             j = tcd_value->link ;
        LDR      R6,[R4, #+44]
//  575 
//  576             
//  577 		        		   	
//  578             DMA_TCD_SADDR(i) = tcd_value->saddr ;
        LSLS     R0,R5,#+5
        LDR.W    R1,??DataTable79_24  ;; 0x40009000
        LDR      R2,[R4, #+0]
        STR      R2,[R0, R1]
//  579 	
//  580             DMA_TCD_ATTR(i) = tcd_value->tcdAttr; 
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+6]
        STRH     R1,[R0, #+6]
//  581 							
//  582             DMA_TCD_SOFF(i) = tcd_value->soff;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+4]
        STRH     R1,[R0, #+4]
//  583 	
//  584             DMA_TCD_NBYTES_MLNO(i) = tcd_value->nbytes;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+8]
        STR      R1,[R0, #+8]
//  585 	
//  586             DMA_TCD_SLAST(i) = 0x0;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  587 
//  588             DMA_TCD_DADDR(i) = tcd_value->daddr;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+16]
        STR      R1,[R0, #+16]
//  589 	
//  590             DMA_TCD_CITER_ELINKYES(i) =  DMA_CITER_ELINKYES_CITER(tcd_value->loopcount)| DMA_CITER_ELINKYES_ELINK_MASK | DMA_CITER_ELINKYES_LINKCH(j) ;
        LDR      R0,[R4, #+40]
        LSLS     R0,R0,#+23
        LSRS     R0,R0,#+23
        LSLS     R1,R6,#+9
        ANDS     R1,R1,#0x1E00
        ORRS     R0,R1,R0
        ORRS     R0,R0,#0x8000
        LDR.W    R1,??DataTable79_24  ;; 0x40009000
        ADDS     R1,R1,R5, LSL #+5
        STRH     R0,[R1, #+22]
//  591 																											
//  592             DMA_TCD_DOFF(i) = tcd_value->doff;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+20]
        STRH     R1,[R0, #+20]
//  593 									
//  594             DMA_TCD_DLASTSGA(i) = 0x0;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  595 
//  596             DMA_TCD_BITER_ELINKYES(i) =  DMA_BITER_ELINKYES_BITER(tcd_value->loopcount)| DMA_BITER_ELINKYES_ELINK_MASK | DMA_BITER_ELINKYES_LINKCH(j);
        LDR      R0,[R4, #+40]
        LSLS     R0,R0,#+23
        LSRS     R0,R0,#+23
        LSLS     R1,R6,#+9
        ANDS     R1,R1,#0x1E00
        ORRS     R0,R1,R0
        ORRS     R0,R0,#0x8000
        LDR.W    R1,??DataTable79_24  ;; 0x40009000
        ADDS     R1,R1,R5, LSL #+5
        STRH     R0,[R1, #+30]
//  597 	
//  598             DMA_TCD_CSR(i) = 0x0;	
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        MOVS     R1,#+0
        STRH     R1,[R0, #+28]
//  599 		        
//  600             //printf("\nDMA_TCD_CITER_ELINKYES %d = 0x%x", i , DMA_TCD_CITER_ELINKYES(i));
//  601             //printf("\nDMA_TCD_BITER_ELINKYES %d = 0x%x", i , DMA_TCD_BITER_ELINKYES(i));
//  602             break;
        B.N      ??dma_config_17
//  603 
//  604           case MAJOR_LOOP_LINK_EN:
//  605 	  		
//  606             i = tcd_value->channelno;
??dma_config_8:
        LDR      R5,[R4, #+32]
//  607             j = tcd_value->link;
        LDR      R6,[R4, #+44]
        B.N      ??dma_config_26
//  608             /* In order to follow the coherency model, the following
//  609                 steps are REQUIRED to correctly enable major channel
//  610                 linking:
//  611 		
//  612                 1. Perform a write to the CSR to clear the DONE bit
//  613                 2. Then perform another write to the CSR to set the MAJORELINK bit */
//  614             
//  615             /* Make sure the DONE bit is cleared before enabling link */
//  616 			
//  617             /* Keep trying to clear DONE bit until it is detected cleared */	
//  618             while ((DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) != 0)
//  619             {
//  620               DMA_TCD_CSR(i) = 0 ;
??dma_config_27:
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        MOVS     R1,#+0
        STRH     R1,[R0, #+28]
//  621             }														
??dma_config_26:
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BMI.N    ??dma_config_27
//  622 			
//  623             /* Keep trying to set E_LINK bit until it is detected set */	
//  624             while ((DMA_TCD_CSR(i) & DMA_CSR_MAJORELINK_MASK) == 0)
??dma_config_28:
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+26
        BMI.N    ??dma_config_29
//  625             {
//  626               DMA_TCD_CSR(i) = ( 0
//  627                                   |  DMA_CSR_MAJORLINKCH(j)
//  628                                   |  DMA_CSR_MAJORELINK_MASK 
//  629                                 );									
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LSLS     R1,R6,#+8
        ANDS     R1,R1,#0xF00
        ORRS     R1,R1,#0x20
        STRH     R1,[R0, #+28]
        B.N      ??dma_config_28
//  630             }
//  631 	    //printf("\nDMA_TCD_CSR %d = 0x%x", i, DMA_TCD_CSR(i));			
//  632             break;
??dma_config_29:
        B.N      ??dma_config_17
//  633      
//  634           case SLAST_CHECK:
//  635 			
//  636             i = tcd_value->channelno ;		
??dma_config_7:
        LDR      R5,[R4, #+32]
//  637 		
//  638             if ( DMA_TCD_SADDR(i) == tcd_value->saddr)
        LSLS     R0,R5,#+5
        LDR.W    R1,??DataTable79_24  ;; 0x40009000
        LDR      R0,[R0, R1]
        LDR      R1,[R4, #+0]
        CMP      R0,R1
        BNE.N    ??dma_config_30
//  639               printf("\nSLAST adjustment is correct.");
        ADR.W    R0,`?<Constant "\\nSLAST adjustment is ...">`
        BL       printf
        B.N      ??dma_config_31
//  640             else
//  641             {
//  642               dma_error++;
??dma_config_30:
        LDR.W    R0,??DataTable79_27
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable79_27
        STR      R0,[R1, #+0]
//  643               printf("\nERROR!!! SLAST adjustment not correct.");
        ADR.W    R0,`?<Constant "\\nERROR!!! SLAST adjus...">`
        BL       printf
//  644               printf("\nSADDR = 0x%x", DMA_TCD_SADDR(i));
        LSLS     R0,R5,#+5
        LDR.W    R1,??DataTable79_24  ;; 0x40009000
        LDR      R1,[R0, R1]
        ADR.W    R0,`?<Constant "\\nSADDR = 0x%x">`
        BL       printf
//  645             }
//  646             break;
??dma_config_31:
        B.N      ??dma_config_17
//  647 		         
//  648           case DLAST_CHECK:
//  649 			
//  650             i = tcd_value->channelno ;		
??dma_config_10:
        LDR      R5,[R4, #+32]
//  651 		
//  652             if ( DMA_TCD_DADDR(i) == tcd_value->daddr)
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R0,[R0, #+16]
        LDR      R1,[R4, #+16]
        CMP      R0,R1
        BNE.N    ??dma_config_32
//  653               printf("\nDLAST adjustment is correct.");
        ADR.W    R0,`?<Constant "\\nDLAST adjustment is ...">`
        BL       printf
        B.N      ??dma_config_33
//  654             else
//  655             {
//  656               dma_error++;
??dma_config_32:
        LDR.W    R0,??DataTable79_27
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable79_27
        STR      R0,[R1, #+0]
//  657               printf("\nERROR!!! DLAST adjustment not correct.\n");
        ADR.W    R0,`?<Constant "\\nERROR!!! DLAST adjus...">`
        BL       printf
//  658               printf("\nDADDR = 0x%x", DMA_TCD_DADDR(i));
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R0, #+16]
        ADR.W    R0,`?<Constant "\\nDADDR = 0x%x">`
        BL       printf
//  659             }
//  660             break;
??dma_config_33:
        B.N      ??dma_config_17
//  661 		        		   
//  662           case SGA_TEST_CONFIG:
//  663 		
//  664             i = tcd_value->channelno ;
??dma_config_9:
        LDR      R5,[R4, #+32]
//  665 		        
//  666             printf("\nTesting DMA channel %d.", i);
        MOVS     R1,R5
        ADR.W    R0,`?<Constant "\\nTesting DMA channel %d.">`
        BL       printf
//  667 		        		   	
//  668             DMA_TCD_SADDR(i) = tcd_value->saddr;
        LSLS     R0,R5,#+5
        LDR.W    R1,??DataTable79_24  ;; 0x40009000
        LDR      R2,[R4, #+0]
        STR      R2,[R0, R1]
//  669 	
//  670             DMA_TCD_ATTR(i) = tcd_value->tcdAttr; 
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+6]
        STRH     R1,[R0, #+6]
//  671 							
//  672             DMA_TCD_SOFF(i) = tcd_value->soff;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+4]
        STRH     R1,[R0, #+4]
//  673 	
//  674             DMA_TCD_NBYTES_MLNO(i) = tcd_value->nbytes;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+8]
        STR      R1,[R0, #+8]
//  675 	
//  676             DMA_TCD_SLAST(i) = tcd_value->slast;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+12]
        STR      R1,[R0, #+12]
//  677 
//  678             DMA_TCD_DADDR(i) = tcd_value->daddr;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+16]
        STR      R1,[R0, #+16]
//  679 	
//  680             DMA_TCD_CITER_ELINKNO(i) =  DMA_CITER_ELINKNO_CITER(tcd_value->loopcount) ;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+40]
        LSLS     R1,R1,#+17
        LSRS     R1,R1,#+17
        STRH     R1,[R0, #+22]
//  681 								
//  682             DMA_TCD_DOFF(i) = tcd_value->doff;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+20]
        STRH     R1,[R0, #+20]
//  683 									
//  684             DMA_TCD_DLASTSGA(i) = tcd_value->link;
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+44]
        STR      R1,[R0, #+24]
//  685 
//  686             DMA_TCD_BITER_ELINKNO(i) =  DMA_BITER_ELINKNO_BITER(tcd_value->loopcount);
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDR      R1,[R4, #+40]
        LSLS     R1,R1,#+17
        LSRS     R1,R1,#+17
        STRH     R1,[R0, #+30]
//  687 	
//  688             DMA_TCD_CSR(i) = tcd_value->csr;	
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R1,[R4, #+28]
        STRH     R1,[R0, #+28]
//  689           
//  690             break;
        B.N      ??dma_config_17
//  691 		        
//  692           case SGA_ENB: 	
//  693             /* In order to follow the coherency model, the following
//  694                 steps are REQUIRED to correctly enable scatter/gather
//  695                 functionality:
//  696 		
//  697                 1. Perform a write to the CSR to clear the DONE bit
//  698                 2. Then perform another write to the CSR to set the E_SG bit */
//  699             /* Make sure the DONE bit is cleared before enabling link */
//  700             /* Keep trying to clear DONE bit until it is detected cleared */	
//  701 	    	
//  702             i = tcd_value->channelno ;
??dma_config_12:
        LDR      R5,[R4, #+32]
        B.N      ??dma_config_34
//  703 	               
//  704             while ((DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) != 0)
//  705             {
//  706               DMA_TCD_CSR(i) = 0 ;
??dma_config_35:
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        MOVS     R1,#+0
        STRH     R1,[R0, #+28]
//  707             }														
??dma_config_34:
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BMI.N    ??dma_config_35
//  708 		
//  709             /* Keep trying to set E_SG bit until it is detected set */	
//  710             while ((DMA_TCD_CSR(i) & DMA_CSR_ESG_MASK) == 0)
??dma_config_36:
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+27
        BMI.N    ??dma_config_37
//  711             {
//  712               DMA_TCD_CSR(i) = ( 0
//  713                                   |  DMA_CSR_ESG_MASK 
//  714                                 );
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        MOVS     R1,#+16
        STRH     R1,[R0, #+28]
        B.N      ??dma_config_36
//  715             }					
//  716             break;
??dma_config_37:
        B.N      ??dma_config_17
//  717 		            
//  718           case XFR_WAIT_ERROR_CHECK: 	/* Wait for DMA to complete */
//  719 			
//  720             i = tcd_value->channelno ;
??dma_config_11:
        LDR      R5,[R4, #+32]
//  721             //printf("\nbefore while..");																	
//  722             while((( DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) == 0) && ( DMA_ES == 0));
??dma_config_38:
        LDR.W    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BMI.N    ??dma_config_39
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_config_38
//  723             //printf("\nafter while..");
//  724             /* Check for errors */
//  725             if (DMA_ES)
??dma_config_39:
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_config_40
//  726             {
//  727               //printf("\nDMA_TCD_CSR = "); Print16(DMA_TCD_CSR(i));
//  728               //printf("\nDMA_ES = "); Print32(DMA_ES);
//  729               //printf("\nDMA_ERR = "); Print32(DMA_ERR);
//  730 	      dma_error++; 	
        LDR.W    R0,??DataTable79_27
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable79_27
        STR      R0,[R1, #+0]
//  731               if ((DMA_ES & DMA_ES_DAE_MASK) != 0)
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??dma_config_41
//  732               {
//  733                 printf("\nDAE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nDAE error detected c...">`
        BL       printf
//  734                 j++;
        ADDS     R6,R6,#+1
//  735               }	
//  736               if((DMA_ES & DMA_ES_DBE_MASK) != 0)
??dma_config_41:
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??dma_config_42
//  737               {
//  738                 printf("\nDBE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nDBE error detected c...">`
        BL       printf
//  739                 j++;
        ADDS     R6,R6,#+1
//  740               }
//  741               if((DMA_ES & DMA_ES_DOE_MASK) != 0)
??dma_config_42:
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??dma_config_43
//  742               {
//  743                 printf("\nDOE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nDOE error detected c...">`
        BL       printf
//  744                 j++;
        ADDS     R6,R6,#+1
//  745               }
//  746               if((DMA_ES & DMA_ES_NCE_MASK) != 0)
??dma_config_43:
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??dma_config_44
//  747               {
//  748                 printf("\nNCE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nNCE error detected c...">`
        BL       printf
//  749                 j++;
        ADDS     R6,R6,#+1
//  750               }
//  751               if((DMA_ES & DMA_ES_SAE_MASK) != 0)
??dma_config_44:
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??dma_config_45
//  752               {
//  753                 printf("\nSAE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nSAE error detected c...">`
        BL       printf
//  754                 j++;
        ADDS     R6,R6,#+1
//  755               }
//  756               if((DMA_ES & DMA_ES_CPE_MASK) != 0)
??dma_config_45:
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BPL.N    ??dma_config_46
//  757               {
//  758                 printf("\nCPE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nCPE error detected c...">`
        BL       printf
//  759                 j++;
        ADDS     R6,R6,#+1
//  760               }
//  761               if((DMA_ES & DMA_ES_SBE_MASK) != 0)
??dma_config_46:
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??dma_config_47
//  762               {
//  763                 printf("\nSBE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nSBE error detected c...">`
        BL       printf
//  764                 j++;
        ADDS     R6,R6,#+1
//  765               }
//  766               if((DMA_ES & DMA_ES_SGE_MASK) != 0)
??dma_config_47:
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??dma_config_48
//  767               {
//  768                 printf("\nSGE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nSGE error detected c...">`
        BL       printf
//  769                 j++;
        ADDS     R6,R6,#+1
//  770               } 
//  771               if((DMA_ES & DMA_ES_SOE_MASK) != 0)
??dma_config_48:
        LDR.W    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??dma_config_49
//  772               {
//  773                 printf("\nSOE error detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nSOE error detected c...">`
        BL       printf
//  774                 j++;
        ADDS     R6,R6,#+1
//  775               }
//  776               if((DMA_ES & DMA_ES_ECX_MASK) != 0)
??dma_config_49:
        LDR.N    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??dma_config_50
//  777               {
//  778                 printf("\nError cancel transfer detected correctly.\n");
        ADR.W    R0,`?<Constant "\\nError cancel transfe...">`
        BL       printf
//  779                 j++;
        ADDS     R6,R6,#+1
//  780               }
//  781               if (j == 0)
??dma_config_50:
        CMP      R6,#+0
        BNE.N    ??dma_config_51
//  782                 printf("\nERROR NOT DETECTED!!!\n");		        
        ADR.W    R0,`?<Constant "\\nERROR NOT DETECTED!!!\\n">`
        BL       printf
        B.N      ??dma_config_51
//  783                 //printf("\nDMAERR = "); Print32(DMA_ERR);
//  784             }
//  785 	    else
//  786               printf("\nNO ERROR DETECTED!!!\n");
??dma_config_40:
        ADR.W    R0,`?<Constant "\\nNO ERROR DETECTED!!!\\n">`
        BL       printf
//  787 	            	
//  788 	    break;
??dma_config_51:
        B.N      ??dma_config_17
//  789 	            	
//  790           case ERROR_CLR:     
//  791 			
//  792             printf("\nBefore DMA_ERR = 0x%x", DMA_ERR);
??dma_config_14:
        LDR.N    R0,??DataTable79_30  ;; 0x4000802c
        LDR      R1,[R0, #+0]
        ADR.W    R0,`?<Constant "\\nBefore DMA_ERR = 0x%x">`
        BL       printf
//  793             DMA_CERR = DMA_CERR_CAEI_MASK;
        LDR.N    R0,??DataTable79_36  ;; 0x4000801e
        MOVS     R1,#+64
        STRB     R1,[R0, #+0]
//  794             //printf("\nAfter Clear Error.");
//  795             printf("\nAfter DMA_ERR = 0x%x", DMA_ERR);
        LDR.N    R0,??DataTable79_30  ;; 0x4000802c
        LDR      R1,[R0, #+0]
        ADR.W    R0,`?<Constant "\\nAfter DMA_ERR = 0x%x">`
        BL       printf
//  796             printf("\nDMA_ES = 0x%x", DMA_ES);
        LDR.N    R0,??DataTable79_26  ;; 0x40008004
        LDR      R1,[R0, #+0]
        ADR.W    R0,`?<Constant "\\nDMA_ES = 0x%x">`
        BL       printf
//  797             break;
        B.N      ??dma_config_17
//  798 		            
//  799           case INSERT_CPE_ERR:
//  800 			
//  801             i = tcd_value->channelno ;
??dma_config_13:
        LDR      R5,[R4, #+32]
//  802             DMA_DCHPRI1 = 0x01;
        LDR.N    R0,??DataTable79_37  ;; 0x40008102
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  803             DMA_DCHPRI2 = 0x01;
        LDR.N    R0,??DataTable79_38  ;; 0x40008101
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  804             /*
//  805             for(j=0;j<2;j++)
//  806             {
//  807               //DMA_DCHPRI(j) = 0x01;
//  808               //printf("\nDCHPRI("); Print8(j); printf(") = "); Print8(DMA_DCHPRI(j));
//  809             }
//  810             */        
//  811             break;
        B.N      ??dma_config_17
//  812 	                
//  813           case CONFIG_PRIORITY:
//  814 			
//  815             DMA_DCHPRI0 = 0x80 + 0;	//0x80+ 5;
??dma_config_16:
        LDR.N    R0,??DataTable79_39  ;; 0x40008103
        MOVS     R1,#+128
        STRB     R1,[R0, #+0]
//  816             DMA_DCHPRI1 = 0x80 + 1;	//0xC0 + 1;	    	
        LDR.N    R0,??DataTable79_37  ;; 0x40008102
        MOVS     R1,#+129
        STRB     R1,[R0, #+0]
//  817             DMA_DCHPRI2 = 0x80 + 2;
        LDR.N    R0,??DataTable79_38  ;; 0x40008101
        MOVS     R1,#+130
        STRB     R1,[R0, #+0]
//  818             DMA_DCHPRI3 = 0x80 + 3;	    	
        LDR.N    R0,??DataTable79_40  ;; 0x40008100
        MOVS     R1,#+131
        STRB     R1,[R0, #+0]
//  819             DMA_DCHPRI4 = 0x80 + 4;
        LDR.N    R0,??DataTable79_41  ;; 0x40008107
        MOVS     R1,#+132
        STRB     R1,[R0, #+0]
//  820             DMA_DCHPRI5 = 0x80 + 5;	//0;
        LDR.N    R0,??DataTable79_42  ;; 0x40008106
        MOVS     R1,#+133
        STRB     R1,[R0, #+0]
//  821             DMA_DCHPRI6 = 0x80 + 6;
        LDR.N    R0,??DataTable79_43  ;; 0x40008105
        MOVS     R1,#+134
        STRB     R1,[R0, #+0]
//  822             DMA_DCHPRI7 = 0x80 + 7;
        LDR.N    R0,??DataTable79_44  ;; 0x40008104
        MOVS     R1,#+135
        STRB     R1,[R0, #+0]
//  823             DMA_DCHPRI8 = 0x80 + 8;
        LDR.N    R0,??DataTable79_45  ;; 0x4000810b
        MOVS     R1,#+136
        STRB     R1,[R0, #+0]
//  824             DMA_DCHPRI9 = 0x80 + 9;
        LDR.N    R0,??DataTable79_46  ;; 0x4000810a
        MOVS     R1,#+137
        STRB     R1,[R0, #+0]
//  825             DMA_DCHPRI10 = 0x80 + 10;
        LDR.N    R0,??DataTable79_47  ;; 0x40008109
        MOVS     R1,#+138
        STRB     R1,[R0, #+0]
//  826             DMA_DCHPRI11 = 0x80 + 11;
        LDR.N    R0,??DataTable79_48  ;; 0x40008108
        MOVS     R1,#+139
        STRB     R1,[R0, #+0]
//  827             DMA_DCHPRI12 = 0x80 + 12;
        LDR.N    R0,??DataTable79_49  ;; 0x4000810f
        MOVS     R1,#+140
        STRB     R1,[R0, #+0]
//  828             DMA_DCHPRI13 = 0x80 + 13;
        LDR.N    R0,??DataTable79_50  ;; 0x4000810e
        MOVS     R1,#+141
        STRB     R1,[R0, #+0]
//  829             DMA_DCHPRI14 = 0x80 + 14;
        LDR.N    R0,??DataTable79_51  ;; 0x4000810d
        MOVS     R1,#+142
        STRB     R1,[R0, #+0]
//  830             DMA_DCHPRI15 = 0x80 + 15;    
        LDR.N    R0,??DataTable79_52  ;; 0x4000810c
        MOVS     R1,#+143
        STRB     R1,[R0, #+0]
//  831 	        
//  832             DMA_CR = 0x0000;
        LDR.N    R0,??DataTable79_53  ;; 0x40008000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  833         
//  834             break;
        B.N      ??dma_config_17
//  835 	                
//  836           case CHECK_PRI:
//  837 		
//  838             i = tcd_value->channelno ;
??dma_config_15:
        LDR      R5,[R4, #+32]
//  839             j = tcd_value->link ;
        LDR      R6,[R4, #+44]
//  840 			
//  841             while((((DMA_TCD_CSR(i) & DMA_CSR_ACTIVE_MASK) == 0) || (( DMA_TCD_CSR(j) & DMA_CSR_DONE_MASK) == 0)) && (DMA_ES == 0));
??dma_config_52:
        LDR.N    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+25
        BPL.N    ??dma_config_53
        LDR.N    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R6, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BMI.N    ??dma_config_54
??dma_config_53:
        LDR.N    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_config_52
//  842             //while((!( DMA_TCD_CSR(i) &  DMA_TCD_CSR_ACTIVE)) & (!( DMA_ES)) & (!( DMA_TCD_CSR(j) &  DMA_TCD_CSR_DONE))  );
//  843             printf("\nChannel %d transfer is complete and channel %d is preempted \n", j, i);
??dma_config_54:
        MOVS     R2,R5
        MOVS     R1,R6
        ADR.W    R0,`?<Constant "\\nChannel %d transfer ...">`
        BL       printf
//  844     		    
//  845             while((((DMA_TCD_CSR(i) & DMA_CSR_DONE_MASK) == 0) || (( DMA_TCD_CSR(j) & DMA_CSR_DONE_MASK) == 0)) && (DMA_ES == 0));        
??dma_config_55:
        LDR.N    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R5, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BPL.N    ??dma_config_56
        LDR.N    R0,??DataTable79_24  ;; 0x40009000
        ADDS     R0,R0,R6, LSL #+5
        LDRH     R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BMI.N    ??dma_config_57
??dma_config_56:
        LDR.N    R0,??DataTable79_26  ;; 0x40008004
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_config_55
//  846             //while((!( DMA_TCD_CSR(j) &  DMA_TCD_CSR_DONE)) & (!( DMA_ES)) & (!( DMA_TCD_CSR(j) &  DMA_TCD_CSR_DONE)));
//  847             printf("\nBoth the channels have completed the transfer\n");
??dma_config_57:
        ADR.W    R0,`?<Constant "\\nBoth the channels ha...">`
        BL       printf
//  848                     
//  849             break;	               
//  850 	}
//  851 }
??dma_config_17:
        POP      {R4-R6,PC}       ;; return
//  852 
//  853 
//  854 //////////////////////////////////
//  855 ////////////////////////////////////
//  856 //////////////////////////////////////
//  857 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  858 void Set_Pit0(void)
//  859 {
//  860   SIM_SCGC6 |= SIM_SCGC6_PIT_MASK;      // turn on PIT cloccks
Set_Pit0:
        LDR.N    R0,??DataTable78_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable78_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  861   PIT_MCR    = 1;                    // reset MDIS -> enable the module
        LDR.N    R0,??DataTable79_54  ;; 0x40037000
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  862 //  PIT_LDVAL0 = 0x017d7840;           // free running on 32 bits 
//  863   //PIT_TCTRL0 = PIT_TCTRL_TIE_MASK;   // start the timer
//  864   //PIT_TCTRL0 |= PIT_TCTRL_TEN_MASK;   // start the timer
//  865   
//  866 }  
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable76:
        DC32     0x2dc6c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable76_1:
        DC32     0x17700
//  867 //////////////////////////////////////
//  868 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  869 void Set_Pit1(void)
//  870 {
//  871   SIM_SCGC6 |= SIM_SCGC6_PIT_MASK;      // turn on PIT cloccks
Set_Pit1:
        LDR.N    R0,??DataTable78_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable78_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  872   PIT_MCR    =1;                    // reset MDIS -> enable the module
        LDR.N    R0,??DataTable79_54  ;; 0x40037000
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  873  // PIT_LDVAL1 = 0x017d7840;           // free running on 32 bits 
//  874   //PIT_TCTRL0 = PIT_TCTRL_TIE_MASK;   // start the timer
//  875   //PIT_TCTRL1 |= PIT_TCTRL_TEN_MASK;   // start the timer
//  876   
//  877 }  
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77:
        DC32     thld1

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77_1:
        DC32     thld2

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77_2:
        DC32     0x40037108

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77_3:
        DC32     0x40037118

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77_4:
        DC32     0x400ff0c4

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77_5:
        DC32     0x400ff004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77_6:
        DC32     0x4003711c
//  878 
//  879 ///////////////////////////////////////////////////////////
//  880 //                  ADC1 SETUP                           //
//  881 // ADC1 wil run 16 bit conversion from two channels      //
//  882 // conversions will be hardware triggered by PDB         //
//  883 ///////////////////////////////////////////////////////////
//  884 
//  885 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  886 void Set_ADC1(void) {
Set_ADC1:
        PUSH     {R7,LR}
//  887   
//  888 SIM_SCGC3 |= (SIM_SCGC3_ADC1_MASK );     // ADC1 clock gate on
        LDR.N    R0,??DataTable79_55  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable79_55  ;; 0x40048030
        STR      R0,[R1, #+0]
//  889 
//  890 
//  891 
//  892 /* setup the initial ADC1 default configuration */
//  893 ADC1_CFG1  = ADLPC_NORMAL 
//  894            | ADC_CFG1_ADIV(ADIV_8) 
//  895            | ADLSMP_LONG 
//  896            | ADC_CFG1_MODE(MODE_16)
//  897            | ADC_CFG1_ADICLK(ADICLK_BUS); 
        LDR.N    R0,??DataTable79_56  ;; 0x400bb008
        MOVS     R1,#+124
        STR      R1,[R0, #+0]
//  898  
//  899 ADC1_CFG2  = MUXSEL_ADCA 
//  900            | ADACKEN_DISABLED 
//  901            | ADHSC_HISPEED 
//  902            | ADC_CFG2_ADLSTS(ADLSTS_20) ;
        LDR.N    R0,??DataTable79_57  ;; 0x400bb00c
        MOVS     R1,#+4
        STR      R1,[R0, #+0]
//  903  
//  904 ADC1_CV1 = 0x1234u ;    // don't care
        LDR.N    R0,??DataTable79_58  ;; 0x400bb018
        MOVW     R1,#+4660
        STR      R1,[R0, #+0]
//  905 ADC1_CV2 = 0x5678u ;    // don't care
        LDR.N    R0,??DataTable79_59  ;; 0x400bb01c
        MOVW     R1,#+22136
        STR      R1,[R0, #+0]
//  906  
//  907 ADC1_SC2  = ADTRG_SW 
//  908           | ACFE_DISABLED 
//  909           | ACFGT_GREATER 
//  910           | ACREN_ENABLED 
//  911           | DMAEN_DISABLED 
//  912           | ADC_SC2_REFSEL(REFSEL_EXT);  
        LDR.N    R0,??DataTable79_60  ;; 0x400bb020
        MOVS     R1,#+24
        STR      R1,[R0, #+0]
//  913   
//  914 ADC1_SC3  = CAL_OFF 
//  915           | ADCO_SINGLE 
//  916           | AVGE_ENABLED 
//  917           | ADC_SC3_AVGS(AVGS_32);
        LDR.N    R0,??DataTable79_61  ;; 0x400bb024
        MOVS     R1,#+7
        STR      R1,[R0, #+0]
//  918   
//  919 ADC1_PGA  = PGAEN_DISABLED 
//  920           | PGACHP_NOCHOP 
//  921           | PGALP_NORMAL 
//  922           | ADC_PGA_PGAG(PGAG_64);
        LDR.N    R0,??DataTable79_62  ;; 0x400bb050
        MOVS     R1,#+393216
        STR      R1,[R0, #+0]
//  923  
//  924 ADC1_SC1A = AIEN_OFF | DIFF_SINGLE | ADC_SC1_ADCH(23);   // channel 23 on ADC1 is connected to DAC1 output
        LDR.N    R0,??DataTable79_63  ;; 0x400bb000
        MOVS     R1,#+23
        STR      R1,[R0, #+0]
//  925 ADC1_SC1B = AIEN_OFF | DIFF_SINGLE | ADC_SC1_ADCH(20);   // channel 20 on ADC1 is connected to potentiometer      
        LDR.N    R0,??DataTable79_64  ;; 0x400bb004
        MOVS     R1,#+20
        STR      R1,[R0, #+0]
//  926   
//  927 
//  928 ADC1_Cal();                    // do the calibration
        BL       ADC1_Cal
//  929 
//  930 // reconfig again values that calibration has altered AND enable interrupts on "B" conversion
//  931 
//  932     
//  933 
//  934 ADC1_SC2  = ADTRG_SW
//  935           | ACFE_DISABLED 
//  936           | ACFGT_GREATER 
//  937           | ACREN_ENABLED 
//  938           | DMAEN_DISABLED 
//  939           | ADC_SC2_REFSEL(REFSEL_EXT);  
        LDR.N    R0,??DataTable79_60  ;; 0x400bb020
        MOVS     R1,#+24
        STR      R1,[R0, #+0]
//  940   
//  941 ADC1_SC3  = CAL_OFF 
//  942           | ADCO_SINGLE 
//  943           | AVGE_DISABLED 
//  944           | ADC_SC3_AVGS(AVGS_32);
        LDR.N    R0,??DataTable79_61  ;; 0x400bb024
        MOVS     R1,#+3
        STR      R1,[R0, #+0]
//  945 
//  946 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable78:
        DC32     `?<Constant "Pit1   = %d \\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable78_1:
        DC32     0x4003710c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable78_2:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable78_3:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable78_4:
        DC32     0x40021001

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable78_5:
        DC32     `?<Constant "\\nStarting eDMA 32-bit...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable78_6:
        DC32     Dma_Source_WORD

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable78_7:
        DC32     tcd

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable78_8:
        DC32     0x400ff0cc
//  947 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  948 int8 ADC1_Cal(void)
//  949 {
//  950 
//  951   unsigned short cal_var;
//  952   
//  953   ADC1_SC2 &=  ~ADC_SC2_ADTRG_MASK ; // Enable Software Conversion Trigger for Calibration Process    - ADC0_SC2 = ADC0_SC2 | ADC_SC2_ADTRGW(0);   
ADC1_Cal:
        LDR.N    R0,??DataTable79_60  ;; 0x400bb020
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.N    R1,??DataTable79_60  ;; 0x400bb020
        STR      R0,[R1, #+0]
//  954   ADC1_SC3 &= ( ~ADC_SC3_ADCO_MASK & ~ADC_SC3_AVGS_MASK ); // set single conversion, clear avgs bitfield for next writing
        LDR.N    R0,??DataTable79_61  ;; 0x400bb024
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xB
        LDR.N    R1,??DataTable79_61  ;; 0x400bb024
        STR      R0,[R1, #+0]
//  955   ADC1_SC3 |= ( ADC_SC3_AVGE_MASK | ADC_SC3_AVGS(AVGS_32) );  // Turn averaging ON and set at max value ( 32 )
        LDR.N    R0,??DataTable79_61  ;; 0x400bb024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x7
        LDR.N    R1,??DataTable79_61  ;; 0x400bb024
        STR      R0,[R1, #+0]
//  956   
//  957   
//  958   ADC1_SC3 |= ADC_SC3_CAL_MASK ;      // Start CAL
        LDR.N    R0,??DataTable79_61  ;; 0x400bb024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable79_61  ;; 0x400bb024
        STR      R0,[R1, #+0]
//  959   while ( ( ADC1_SC1A & ADC_SC1_COCO_MASK ) == COCO_NOT ); // Wait calibration end
??ADC1_Cal_0:
        LDR.N    R0,??DataTable79_63  ;; 0x400bb000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??ADC1_Cal_0
//  960   	
//  961   if ((ADC1_SC3 & ADC_SC3_CALF_MASK) == CALF_FAIL ) return(0);    // Check for Calibration fail error and return 
        LDR.N    R0,??DataTable79_61  ;; 0x400bb024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??ADC1_Cal_1
        MOVS     R0,#+0
        B.N      ??ADC1_Cal_2
//  962 
//  963   // Calculate plus-side calibration as per 21.4.7 
//  964   cal_var = 0x00;
??ADC1_Cal_1:
        MOVS     R0,#+0
//  965   
//  966   cal_var =  ADC1_CLP0; 
        LDR.N    R1,??DataTable79_65  ;; 0x400bb04c
        LDR      R1,[R1, #+0]
        MOVS     R0,R1
//  967   cal_var += ADC1_CLP1;
        LDR.N    R1,??DataTable79_66  ;; 0x400bb048
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
//  968   cal_var += ADC1_CLP2;
        LDR.N    R1,??DataTable79_67  ;; 0x400bb044
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
//  969   cal_var += ADC1_CLP3;
        LDR.N    R1,??DataTable79_68  ;; 0x400bb040
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
//  970   cal_var += ADC1_CLP4;
        LDR.N    R1,??DataTable79_69  ;; 0x400bb03c
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
//  971   cal_var += ADC1_CLPS;
        LDR.N    R1,??DataTable79_70  ;; 0x400bb038
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
//  972 
//  973   cal_var = cal_var/2;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R1,#+2
        SDIV     R0,R0,R1
//  974   cal_var |= 0x8000; // Set MSB
        ORRS     R0,R0,#0x8000
//  975 
//  976   ADC1_PG = ADC_PG_PG(cal_var);
        LDR.N    R1,??DataTable79_71  ;; 0x400bb02c
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, #+0]
//  977  
//  978 
//  979   // Calculate minus-side calibration as per 21.4.7 
//  980   cal_var = 0x00;
        MOVS     R0,#+0
//  981 
//  982   cal_var =  ADC1_CLM0; 
        LDR.N    R1,??DataTable79_72  ;; 0x400bb06c
        LDR      R1,[R1, #+0]
        MOVS     R0,R1
//  983   cal_var += ADC1_CLM1;
        LDR.N    R1,??DataTable79_73  ;; 0x400bb068
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
//  984   cal_var += ADC1_CLM2;
        LDR.N    R1,??DataTable79_74  ;; 0x400bb064
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
//  985   cal_var += ADC1_CLM3;
        LDR.N    R1,??DataTable79_75  ;; 0x400bb060
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
//  986   cal_var += ADC1_CLM4;
        LDR.N    R1,??DataTable79_76  ;; 0x400bb05c
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
//  987   cal_var += ADC1_CLMS;
        LDR.N    R1,??DataTable79_77  ;; 0x400bb058
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
//  988 
//  989   cal_var = cal_var/2;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R1,#+2
        SDIV     R0,R0,R1
//  990 
//  991   cal_var |= 0x8000; // Set MSB
        ORRS     R0,R0,#0x8000
//  992 
//  993   ADC1_MG = ADC_MG_MG(cal_var); 
        LDR.N    R1,??DataTable79_78  ;; 0x400bb030
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, #+0]
//  994   
//  995   ADC1_SC3 &= ~ADC_SC3_CAL_MASK ; /* Clear CAL bit */
        LDR.N    R0,??DataTable79_61  ;; 0x400bb024
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.N    R1,??DataTable79_61  ;; 0x400bb024
        STR      R0,[R1, #+0]
//  996 
//  997   return(0);
        MOVS     R0,#+0
??ADC1_Cal_2:
        BX       LR               ;; return
//  998 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79:
        DC32     `?<Constant "Register value not in...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_1:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_2:
        DC32     Dma_Source_WORD+0x4

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_3:
        DC32     0x400ff00c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_4:
        DC32     `?<Constant "TWR-K40X256 GPIO Exam...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_5:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_6:
        DC32     ADC_PDATA

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_7:
        DC32     0x4004a02c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_8:
        DC32     0x4004b01c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_9:
        DC32     0x4004b020

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_10:
        DC32     0x4004b024

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_11:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_12:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_13:
        DC32     0x30100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_14:
        DC32     0x40049040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_15:
        DC32     0x400ff054

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_16:
        DC32     0x400ff094

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_17:
        DC32     0x400ff0d4

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_18:
        DC32     0x400ff014

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_19:
        DC32     0x4004b0a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_20:
        DC32     `?<Constant "SW6 Pressed\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_21:
        DC32     `?<Constant "SW7 Pressed\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_22:
        DC32     0x4004d0a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_23:
        DC32     0x400490a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_24:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_25:
        DC32     0x4000801d

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_26:
        DC32     0x40008004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_27:
        DC32     dma_error

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_28:
        DC32     `?<Constant "\\nERROR!!! An error oc...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_29:
        DC32     `?<Constant "\\nDMA_ES = 0x%x">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_30:
        DC32     0x4000802c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_31:
        DC32     `?<Constant "\\nDMA_ERR = 0x%x">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_32:
        DC32     `?<Constant "\\nData error!">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_33:
        DC32     `?<Constant "\\nSADDR: 0x%x = 0x%x">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_34:
        DC32     `?<Constant "\\nDADDR: 0x%x = 0x%x">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_35:
        DC32     `?<Constant "\\nTesting DMA channel %d">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_36:
        DC32     0x4000801e

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_37:
        DC32     0x40008102

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_38:
        DC32     0x40008101

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_39:
        DC32     0x40008103

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_40:
        DC32     0x40008100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_41:
        DC32     0x40008107

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_42:
        DC32     0x40008106

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_43:
        DC32     0x40008105

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_44:
        DC32     0x40008104

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_45:
        DC32     0x4000810b

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_46:
        DC32     0x4000810a

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_47:
        DC32     0x40008109

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_48:
        DC32     0x40008108

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_49:
        DC32     0x4000810f

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_50:
        DC32     0x4000810e

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_51:
        DC32     0x4000810d

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_52:
        DC32     0x4000810c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_53:
        DC32     0x40008000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_54:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_55:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_56:
        DC32     0x400bb008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_57:
        DC32     0x400bb00c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_58:
        DC32     0x400bb018

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_59:
        DC32     0x400bb01c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_60:
        DC32     0x400bb020

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_61:
        DC32     0x400bb024

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_62:
        DC32     0x400bb050

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_63:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_64:
        DC32     0x400bb004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_65:
        DC32     0x400bb04c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_66:
        DC32     0x400bb048

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_67:
        DC32     0x400bb044

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_68:
        DC32     0x400bb040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_69:
        DC32     0x400bb03c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_70:
        DC32     0x400bb038

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_71:
        DC32     0x400bb02c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_72:
        DC32     0x400bb06c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_73:
        DC32     0x400bb068

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_74:
        DC32     0x400bb064

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_75:
        DC32     0x400bb060

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_76:
        DC32     0x400bb05c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_77:
        DC32     0x400bb058

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_78:
        DC32     0x400bb030

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
`?<Constant " PIT Single Register ...">`:
        ; Initializer data, 36 bytes
        DC8 32, 80, 73, 84, 32, 83, 105, 110, 103, 108
        DC8 101, 32, 82, 101, 103, 105, 115, 116, 101, 114
        DC8 32, 87, 114, 105, 116, 101, 32, 85, 116, 105
        DC8 108, 105, 116, 121, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "Valid \\'wrt\\' syntax:\\n">`:
        ; Initializer data, 24 bytes
        DC8 86, 97, 108, 105, 100, 32, 39, 119, 114, 116
        DC8 39, 32, 115, 121, 110, 116, 97, 120, 58, 10
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "PIT0 frequency(Hz) > ...">`:
        ; Initializer data, 48 bytes
        DC8 80, 73, 84, 48, 32, 102, 114, 101, 113, 117
        DC8 101, 110, 99, 121, 40, 72, 122, 41, 32, 62
        DC8 32, 119, 114, 116, 32, 32, 60, 48, 62, 32
        DC8 60, 118, 97, 108, 117, 101, 40, 72, 122, 41
        DC8 62, 32, 10, 10, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "PIT1 frequency(Hz) > ...">`:
        ; Initializer data, 48 bytes
        DC8 80, 73, 84, 49, 32, 102, 114, 101, 113, 117
        DC8 101, 110, 99, 121, 40, 72, 122, 41, 32, 62
        DC8 32, 119, 114, 116, 32, 32, 60, 49, 62, 32
        DC8 60, 118, 97, 108, 117, 101, 40, 72, 122, 41
        DC8 62, 32, 10, 10, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "PIT0 to PIT1 phase(co...">`:
        ; Initializer data, 68 bytes
        DC8 80, 73, 84, 48, 32, 116, 111, 32, 80, 73
        DC8 84, 49, 32, 112, 104, 97, 115, 101, 40, 99
        DC8 111, 117, 110, 116, 115, 32, 102, 114, 111, 109
        DC8 32, 65, 32, 116, 111, 32, 66, 41, 62, 32
        DC8 119, 114, 116, 32, 32, 60, 50, 62, 32, 60
        DC8 118, 97, 108, 117, 101, 40, 99, 111, 117, 110
        DC8 116, 115, 41, 62, 32, 10, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "PIT1 to PIT0 phase(co...">`:
        ; Initializer data, 68 bytes
        DC8 80, 73, 84, 49, 32, 116, 111, 32, 80, 73
        DC8 84, 48, 32, 112, 104, 97, 115, 101, 40, 99
        DC8 111, 117, 110, 116, 115, 32, 102, 114, 111, 109
        DC8 32, 66, 32, 116, 111, 32, 65, 41, 62, 32
        DC8 119, 114, 116, 32, 32, 60, 51, 62, 32, 60
        DC8 118, 97, 108, 117, 101, 40, 99, 111, 117, 110
        DC8 116, 115, 41, 62, 32, 10, 10, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "PIT1 to PIT0 phase(co...">_1`:
        ; Initializer data, 72 bytes
        DC8 80, 73, 84, 49, 32, 116, 111, 32, 80, 73
        DC8 84, 48, 32, 112, 104, 97, 115, 101, 40, 99
        DC8 111, 117, 110, 116, 115, 32, 102, 114, 111, 109
        DC8 32, 66, 32, 116, 111, 32, 65, 41, 32, 62
        DC8 32, 119, 114, 116, 32, 32, 60, 51, 62, 32
        DC8 60, 118, 97, 108, 117, 101, 40, 99, 111, 117
        DC8 110, 116, 115, 41, 62, 32, 10, 10, 0, 0
        DC8 0, 0

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

        SECTION `.text`:CODE:NOROOT(1)
        DATA
`?<Constant "\\n">`:
        ; Initializer data, 2 bytes
        DC8 10, 0

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
//    92 bytes in section .bss
// 5 787 bytes in section .text
// 
// 5 787 bytes of CODE memory
//    92 bytes of DATA memory
//
//Errors: none
//Warnings: 1
