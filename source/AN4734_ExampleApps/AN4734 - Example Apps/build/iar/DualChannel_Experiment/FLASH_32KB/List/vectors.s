///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:32 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\cpu\vectors.c                              /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\cpu\vectors.c" -D IAR -D FRDM -D EX2 -lCN  /
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
//                    st\vectors.s                                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME vectors

        #define SHT_PROGBITS 0x1

        EXTERN __BOOT_STACK_ADDRESS
        EXTERN __startup
        EXTERN llwu_isr

        PUBLIC SRTC_ISR
        PUBLIC __vector_table
        PUBLIC abort_isr
        PUBLIC default_isr
        PUBLIC hard_fault_handler_c

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\cpu\vectors.c
//    1 /******************************************************************************
//    2 * File:    vectors.c
//    3 *
//    4 * Purpose: Configure interrupt vector table for Kinetis.
//    5 ******************************************************************************/
//    6 
//    7 #include "vectors.h"
//    8 #include "isr.h"
//    9 #include "common.h"
//   10 
//   11 /******************************************************************************
//   12 * Vector Table
//   13 ******************************************************************************/
//   14 typedef void (*vector_entry)(void);
//   15 
//   16 #ifdef KEIL
//   17 #else
//   18 #pragma location = ".intvec"

        SECTION `.intvec`:CONST:REORDER:NOROOT(2)
//   19 const vector_entry  __vector_table[] = //@ ".intvec" =
__vector_table:
        DATA
        DC32 __BOOT_STACK_ADDRESS, __startup, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, llwu_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, llwu_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, SRTC_ISR, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, abort_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, 0FFFFFFFFH, 0FFFFFFFFH, 0FFFFFFFFH
        DC32 0FFFFFBFEH
//   20 #endif
//   21 {
//   22    VECTOR_000,           /* Initial SP           */
//   23    VECTOR_001,           /* Initial PC           */
//   24    VECTOR_002,
//   25    VECTOR_003,
//   26    VECTOR_004,
//   27    VECTOR_005,
//   28    VECTOR_006,
//   29    VECTOR_007,
//   30    VECTOR_008,
//   31    VECTOR_009,
//   32    VECTOR_010,
//   33    VECTOR_011,
//   34    VECTOR_012,
//   35    VECTOR_013,
//   36    VECTOR_014,
//   37    VECTOR_015,
//   38    VECTOR_016,
//   39    VECTOR_017,
//   40    VECTOR_018,
//   41    VECTOR_019,
//   42    VECTOR_020,
//   43    VECTOR_021,
//   44    VECTOR_022,
//   45    VECTOR_023,
//   46    VECTOR_024,
//   47    VECTOR_025,
//   48    VECTOR_026,
//   49    VECTOR_027,
//   50    VECTOR_028,
//   51    VECTOR_029,
//   52    VECTOR_030,
//   53    VECTOR_031,
//   54    VECTOR_032,
//   55    VECTOR_033,
//   56    VECTOR_034,
//   57    VECTOR_035,
//   58    VECTOR_036,
//   59    VECTOR_037,
//   60    VECTOR_038,
//   61    VECTOR_039,
//   62    VECTOR_040,
//   63    VECTOR_041,
//   64    VECTOR_042,
//   65    VECTOR_043,
//   66    VECTOR_044,
//   67    VECTOR_045,
//   68    VECTOR_046,
//   69    VECTOR_047,
//   70    VECTOR_048,
//   71    VECTOR_049,
//   72    VECTOR_050,
//   73    VECTOR_051,
//   74    VECTOR_052,
//   75    VECTOR_053,
//   76    VECTOR_054,
//   77    VECTOR_055,
//   78    VECTOR_056,
//   79    VECTOR_057,
//   80    VECTOR_058,
//   81    VECTOR_059,
//   82    VECTOR_060,
//   83    VECTOR_061,
//   84    VECTOR_062,
//   85    VECTOR_063,
//   86    VECTOR_064,
//   87    VECTOR_065,
//   88    VECTOR_066,
//   89    VECTOR_067,
//   90    VECTOR_068,
//   91    VECTOR_069,
//   92    VECTOR_070,
//   93    VECTOR_071,
//   94    VECTOR_072,
//   95    VECTOR_073,
//   96    VECTOR_074,
//   97    VECTOR_075,
//   98    VECTOR_076,
//   99    VECTOR_077,
//  100    VECTOR_078,
//  101    VECTOR_079,
//  102    VECTOR_080,
//  103    VECTOR_081,
//  104    VECTOR_082,
//  105    VECTOR_083,
//  106    VECTOR_084,
//  107    VECTOR_085,
//  108    VECTOR_086,
//  109    VECTOR_087,
//  110    VECTOR_088,
//  111    VECTOR_089,
//  112    VECTOR_090,
//  113    VECTOR_091,
//  114    VECTOR_092,
//  115    VECTOR_093,
//  116    VECTOR_094,
//  117    VECTOR_095,
//  118    VECTOR_096,
//  119    VECTOR_097,
//  120    VECTOR_098,
//  121    VECTOR_099,
//  122    VECTOR_100,
//  123    VECTOR_101,
//  124    VECTOR_102,
//  125    VECTOR_103,
//  126    VECTOR_104,
//  127    VECTOR_105,
//  128    VECTOR_106,
//  129    VECTOR_107,
//  130    VECTOR_108,
//  131    VECTOR_109,
//  132    VECTOR_110,
//  133    VECTOR_111,
//  134    VECTOR_112,
//  135    VECTOR_113,
//  136    VECTOR_114,
//  137    VECTOR_115,
//  138    VECTOR_116,
//  139    VECTOR_117,
//  140    VECTOR_118,
//  141    VECTOR_119,
//  142    VECTOR_120,
//  143    VECTOR_121,
//  144    VECTOR_122,
//  145    VECTOR_123,
//  146    VECTOR_124,
//  147    VECTOR_125,
//  148    VECTOR_126,
//  149    VECTOR_127,
//  150    VECTOR_128,
//  151    VECTOR_129,
//  152    VECTOR_130,
//  153    VECTOR_131,
//  154    VECTOR_132,
//  155    VECTOR_133,
//  156    VECTOR_134,
//  157    VECTOR_135,
//  158    VECTOR_136,
//  159    VECTOR_137,
//  160    VECTOR_138,
//  161    VECTOR_139,
//  162    VECTOR_140,
//  163    VECTOR_141,
//  164    VECTOR_142,
//  165    VECTOR_143,
//  166    VECTOR_144,
//  167    VECTOR_145,
//  168    VECTOR_146,
//  169    VECTOR_147,
//  170    VECTOR_148,
//  171    VECTOR_149,
//  172    VECTOR_150,
//  173    VECTOR_151,
//  174    VECTOR_152,
//  175    VECTOR_153,
//  176    VECTOR_154,
//  177    VECTOR_155,
//  178    VECTOR_156,
//  179    VECTOR_157,
//  180    VECTOR_158,
//  181    VECTOR_159,
//  182    VECTOR_160,
//  183    VECTOR_161,
//  184    VECTOR_162,
//  185    VECTOR_163,
//  186    VECTOR_164,
//  187    VECTOR_165,
//  188    VECTOR_166,
//  189    VECTOR_167,
//  190    VECTOR_168,
//  191    VECTOR_169,
//  192    VECTOR_170,
//  193    VECTOR_171,
//  194    VECTOR_172,
//  195    VECTOR_173,
//  196    VECTOR_174,
//  197    VECTOR_175,
//  198    VECTOR_176,
//  199    VECTOR_177,
//  200    VECTOR_178,
//  201    VECTOR_179,
//  202    VECTOR_180,
//  203    VECTOR_181,
//  204    VECTOR_182,
//  205    VECTOR_183,
//  206    VECTOR_184,
//  207    VECTOR_185,
//  208    VECTOR_186,
//  209    VECTOR_187,
//  210    VECTOR_188,
//  211    VECTOR_189,
//  212    VECTOR_190,
//  213    VECTOR_191,
//  214    VECTOR_192,
//  215    VECTOR_193,
//  216    VECTOR_194,
//  217    VECTOR_195,
//  218    VECTOR_196,
//  219    VECTOR_197,
//  220    VECTOR_198,
//  221    VECTOR_199,
//  222    VECTOR_200,
//  223    VECTOR_201,
//  224    VECTOR_202,
//  225    VECTOR_203,
//  226    VECTOR_204,
//  227    VECTOR_205,
//  228    VECTOR_206,
//  229    VECTOR_207,
//  230    VECTOR_208,
//  231    VECTOR_209,
//  232    VECTOR_210,
//  233    VECTOR_211,
//  234    VECTOR_212,
//  235    VECTOR_213,
//  236    VECTOR_214,
//  237    VECTOR_215,
//  238    VECTOR_216,
//  239    VECTOR_217,
//  240    VECTOR_218,
//  241    VECTOR_219,
//  242    VECTOR_220,
//  243    VECTOR_221,
//  244    VECTOR_222,
//  245    VECTOR_223,
//  246    VECTOR_224,
//  247    VECTOR_225,
//  248    VECTOR_226,
//  249    VECTOR_227,
//  250    VECTOR_228,
//  251    VECTOR_229,
//  252    VECTOR_230,
//  253    VECTOR_231,
//  254    VECTOR_232,
//  255    VECTOR_233,
//  256    VECTOR_234,
//  257    VECTOR_235,
//  258    VECTOR_236,
//  259    VECTOR_237,
//  260    VECTOR_238,
//  261    VECTOR_239,
//  262    VECTOR_240,
//  263    VECTOR_241,
//  264    VECTOR_242,
//  265    VECTOR_243,
//  266    VECTOR_244,
//  267    VECTOR_245,
//  268    VECTOR_246,
//  269    VECTOR_247,
//  270    VECTOR_248,
//  271    VECTOR_249,
//  272    VECTOR_250,
//  273    VECTOR_251,
//  274    VECTOR_252,
//  275    VECTOR_253,
//  276    VECTOR_254,
//  277    VECTOR_255,
//  278 #ifdef BOOTLOADER_USER
//  279 #else
//  280    CONFIG_1,
//  281    CONFIG_2,
//  282    CONFIG_3,
//  283    CONFIG_4,
//  284 #endif
//  285 };
//  286 // VECTOR_TABLE end
//  287 /******************************************************************************
//  288 * default_isr(void)
//  289 *
//  290 * Default ISR definition.
//  291 *
//  292 * In:  n/a
//  293 * Out: n/a
//  294 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  295 void default_isr(void)
//  296 {
//  297    #define VECTORNUM                     (*(volatile uint8_t*)(0xE000ED04))
//  298 
//  299     //while(1);
//  300   // printf("\n****default_isr entered on vector %d*****\r\n\n",VECTORNUM);
//  301    return;
default_isr:
        BX       LR               ;; return
//  302 }
//  303 
//  304 /******************************************************************************/
//  305 /* Generic interrupt handler for the PTA4 GPIO interrupt connected to an 
//  306  * abort switch. 
//  307  * NOTE: For true abort operation this handler should be modified
//  308  * to jump to the main process instead of executing a return.
//  309  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  310 void abort_isr(void)
//  311 {
//  312    //printf("\n****Abort button interrupt****\n\n");
//  313    return;
abort_isr:
        BX       LR               ;; return
//  314 }
//  315 /******************************************************************************/
//  316 /* Exception frame without floating-point storage 
//  317  * hard fault handler in C,
//  318  * with stack frame location as input parameter
//  319  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  320 void 
//  321 hard_fault_handler_c(unsigned int * hardfault_args)
//  322 {
//  323     /*  
//  324     unsigned int stacked_r0;
//  325     unsigned int stacked_r1;
//  326     unsigned int stacked_r2;
//  327     unsigned int stacked_r3;
//  328     unsigned int stacked_r12;
//  329     unsigned int stacked_lr;
//  330     unsigned int stacked_pc;
//  331     unsigned int stacked_psr;
//  332     
//  333     //Exception stack frame
//  334     stacked_r0 = ((unsigned long) hardfault_args[0]);
//  335     stacked_r1 = ((unsigned long) hardfault_args[1]);
//  336     stacked_r2 = ((unsigned long) hardfault_args[2]);
//  337     stacked_r3 = ((unsigned long) hardfault_args[3]);
//  338     
//  339     stacked_r12 = ((unsigned long) hardfault_args[4]);
//  340     stacked_lr = ((unsigned long) hardfault_args[5]);
//  341     stacked_pc = ((unsigned long) hardfault_args[6]);
//  342     stacked_psr = ((unsigned long) hardfault_args[7]);
//  343 
//  344     printf ("[Hard fault handler]\n");
//  345     printf ("R0 = %x\n", stacked_r0);
//  346     printf ("R1 = %x\n", stacked_r1);
//  347     printf ("R2 = %x\n", stacked_r2);
//  348     printf ("R3 = %x\n", stacked_r3);
//  349     printf ("R12 = %x\n", stacked_r12);
//  350     printf ("LR = %x\n", stacked_lr);
//  351     printf ("PC = %x\n", stacked_pc);
//  352     printf ("PSR = %x\n", stacked_psr);
//  353     printf ("BFAR = %x\n", (*((volatile unsigned long *)(0xE000ED38))));
//  354     printf ("CFSR = %x\n", (*((volatile unsigned long *)(0xE000ED28))));
//  355     printf ("HFSR = %x\n", (*((volatile unsigned long *)(0xE000ED2C))));
//  356     printf ("DFSR = %x\n", (*((volatile unsigned long *)(0xE000ED30))));
//  357     printf ("AFSR = %x\n", (*((volatile unsigned long *)(0xE000ED3C))));
//  358    */ 
//  359     //for(;;)
//  360     //;/*infinite loop*/
//  361 } 
hard_fault_handler_c:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  362 void SRTC_ISR(void) 
//  363 {
SRTC_ISR:
        PUSH     {R7,LR}
//  364   
//  365   volatile uint32 temp;
//  366   
//  367   // printf("SRTC_ISR entered\r\n");
//  368    
//  369    temp = RTC_SR;
        LDR      R0,??DataTable0  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
//  370    
//  371    if((RTC_SR & 0x01)== 0x01)
        LDR      R0,??DataTable0  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??SRTC_ISR_0
//  372      {
//  373       // printf("SRTC time invalid interrupt entered...\r\n");
//  374    	   RTC_SR &= 0x07;  //clear TCE, or SRTC_TSR can  not be written 
        LDR      R0,??DataTable0  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        LDR      R1,??DataTable0  ;; 0x4003d014
        STR      R0,[R1, #+0]
//  375    	   RTC_TSR = 0x00000005;  //clear TIF by writing to the seconds register
        LDR      R0,??DataTable0_1  ;; 0x4003d000
        MOVS     R1,#+5
        STR      R1,[R0, #+0]
        B        ??SRTC_ISR_1
//  376      }	
//  377    else if((RTC_SR & 0x02) == 0x02)
??SRTC_ISR_0:
        LDR      R0,??DataTable0  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL      ??SRTC_ISR_2
//  378    {
//  379    	 //  printf("SRTC time overflow interrupt entered...\r\n");
//  380    	   RTC_SR &= 0x07;  //clear TCE, or SRTC_STSR can  not be written
        LDR      R0,??DataTable0  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        LDR      R1,??DataTable0  ;; 0x4003d014
        STR      R0,[R1, #+0]
//  381    	   RTC_TSR = 0x00000005;  //clear TOF
        LDR      R0,??DataTable0_1  ;; 0x4003d000
        MOVS     R1,#+5
        STR      R1,[R0, #+0]
//  382            RTC_SR = 0x10; //start time again to exit wait loop in application code.
        LDR      R0,??DataTable0  ;; 0x4003d014
        MOVS     R1,#+16
        STR      R1,[R0, #+0]
        B        ??SRTC_ISR_1
//  383    }	 	
//  384    else if((RTC_SR & 0x04) == 0x04)
??SRTC_ISR_2:
        LDR      R0,??DataTable0  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL      ??SRTC_ISR_1
//  385    {
//  386    	  // printf("SRTC alarm interrupt entered...\r\n");
//  387    	   RTC_TAR = 0x0;// Write 0 to disable
        LDR      R0,??DataTable0_2  ;; 0x4003d008
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  388    	   //SPIOC_PTC_PDOR = 0x0001 ^ GPIOC_PTC_PDOR;
//  389    }	
//  390    else
//  391    {
//  392           // printf("No valid Flag was set!\n");
//  393    }
//  394    return;
??SRTC_ISR_1:
        POP      {R0,PC}          ;; return
//  395 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x4003d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0x4003d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     0x4003d008

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  396 
//  397 /* End of "vectors.c" */
// 
// 1 040 bytes in section .intvec
//   104 bytes in section .text
// 
//   104 bytes of CODE  memory
// 1 040 bytes of CONST memory
//
//Errors: none
//Warnings: none
