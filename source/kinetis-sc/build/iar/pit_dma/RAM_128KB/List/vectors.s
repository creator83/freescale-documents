///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.1.52143/W32 for ARM    17/Feb/2011  21:31:29 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å /
//                    [\kinetis-sc\src\cpu\vectors.c                          /
//    Command line =  "D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^ /
//                    Å[\kinetis-sc\src\cpu\vectors.c" -D IAR -D TWR_K40X256  /
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
//                    [\kinetis-sc\build\iar\pit_dma\RAM_128KB\List\vectors.s /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME vectors

        EXTERN __BOOT_STACK_ADDRESS
        EXTERN __startup
        EXTERN porta_isr
        EXTERN portc_isr
        EXTERN porte_isr
        EXTERN printf

        PUBLIC __vector_table
        PUBLIC default_isr

// D:\Profiles\B17685\My Documents\FAE\MCU\Kinetis\ÉÇÅ[É^Å[\kinetis-sc\src\cpu\vectors.c
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
//   16 #pragma location = ".intvec"

        SECTION `.intvec`:CONST:REORDER:NOROOT(2)
//   17 const vector_entry  __vector_table[] = //@ ".intvec" =
__vector_table:
        DATA
        DC32 __BOOT_STACK_ADDRESS, __startup, default_isr, default_isr
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
        DC32 default_isr, default_isr, default_isr, default_isr, porta_isr
        DC32 default_isr, portc_isr, default_isr, porte_isr, default_isr
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
        DC32 0FFFFFFFEH
//   18 {
//   19    VECTOR_000,           /* Initial SP           */
//   20    VECTOR_001,           /* Initial PC           */
//   21    VECTOR_002,
//   22    VECTOR_003,
//   23    VECTOR_004,
//   24    VECTOR_005,
//   25    VECTOR_006,
//   26    VECTOR_007,
//   27    VECTOR_008,
//   28    VECTOR_009,
//   29    VECTOR_010,
//   30    VECTOR_011,
//   31    VECTOR_012,
//   32    VECTOR_013,
//   33    VECTOR_014,
//   34    VECTOR_015,
//   35    VECTOR_016,
//   36    VECTOR_017,
//   37    VECTOR_018,
//   38    VECTOR_019,
//   39    VECTOR_020,
//   40    VECTOR_021,
//   41    VECTOR_022,
//   42    VECTOR_023,
//   43    VECTOR_024,
//   44    VECTOR_025,
//   45    VECTOR_026,
//   46    VECTOR_027,
//   47    VECTOR_028,
//   48    VECTOR_029,
//   49    VECTOR_030,
//   50    VECTOR_031,
//   51    VECTOR_032,
//   52    VECTOR_033,
//   53    VECTOR_034,
//   54    VECTOR_035,
//   55    VECTOR_036,
//   56    VECTOR_037,
//   57    VECTOR_038,
//   58    VECTOR_039,
//   59    VECTOR_040,
//   60    VECTOR_041,
//   61    VECTOR_042,
//   62    VECTOR_043,
//   63    VECTOR_044,
//   64    VECTOR_045,
//   65    VECTOR_046,
//   66    VECTOR_047,
//   67    VECTOR_048,
//   68    VECTOR_049,
//   69    VECTOR_050,
//   70    VECTOR_051,
//   71    VECTOR_052,
//   72    VECTOR_053,
//   73    VECTOR_054,
//   74    VECTOR_055,
//   75    VECTOR_056,
//   76    VECTOR_057,
//   77    VECTOR_058,
//   78    VECTOR_059,
//   79    VECTOR_060,
//   80    VECTOR_061,
//   81    VECTOR_062,
//   82    VECTOR_063,
//   83    VECTOR_064,
//   84    VECTOR_065,
//   85    VECTOR_066,
//   86    VECTOR_067,
//   87    VECTOR_068,
//   88    VECTOR_069,
//   89    VECTOR_070,
//   90    VECTOR_071,
//   91    VECTOR_072,
//   92    VECTOR_073,
//   93    VECTOR_074,
//   94    VECTOR_075,
//   95    VECTOR_076,
//   96    VECTOR_077,
//   97    VECTOR_078,
//   98    VECTOR_079,
//   99    VECTOR_080,
//  100    VECTOR_081,
//  101    VECTOR_082,
//  102    VECTOR_083,
//  103    VECTOR_084,
//  104    VECTOR_085,
//  105    VECTOR_086,
//  106    VECTOR_087,
//  107    VECTOR_088,
//  108    VECTOR_089,
//  109    VECTOR_090,
//  110    VECTOR_091,
//  111    VECTOR_092,
//  112    VECTOR_093,
//  113    VECTOR_094,
//  114    VECTOR_095,
//  115    VECTOR_096,
//  116    VECTOR_097,
//  117    VECTOR_098,
//  118    VECTOR_099,
//  119    VECTOR_100,
//  120    VECTOR_101,
//  121    VECTOR_102,
//  122    VECTOR_103,
//  123    VECTOR_104,
//  124    VECTOR_105,
//  125    VECTOR_106,
//  126    VECTOR_107,
//  127    VECTOR_108,
//  128    VECTOR_109,
//  129    VECTOR_110,
//  130    VECTOR_111,
//  131    VECTOR_112,
//  132    VECTOR_113,
//  133    VECTOR_114,
//  134    VECTOR_115,
//  135    VECTOR_116,
//  136    VECTOR_117,
//  137    VECTOR_118,
//  138    VECTOR_119,
//  139    VECTOR_120,
//  140    VECTOR_121,
//  141    VECTOR_122,
//  142    VECTOR_123,
//  143    VECTOR_124,
//  144    VECTOR_125,
//  145    VECTOR_126,
//  146    VECTOR_127,
//  147    VECTOR_128,
//  148    VECTOR_129,
//  149    VECTOR_130,
//  150    VECTOR_131,
//  151    VECTOR_132,
//  152    VECTOR_133,
//  153    VECTOR_134,
//  154    VECTOR_135,
//  155    VECTOR_136,
//  156    VECTOR_137,
//  157    VECTOR_138,
//  158    VECTOR_139,
//  159    VECTOR_140,
//  160    VECTOR_141,
//  161    VECTOR_142,
//  162    VECTOR_143,
//  163    VECTOR_144,
//  164    VECTOR_145,
//  165    VECTOR_146,
//  166    VECTOR_147,
//  167    VECTOR_148,
//  168    VECTOR_149,
//  169    VECTOR_150,
//  170    VECTOR_151,
//  171    VECTOR_152,
//  172    VECTOR_153,
//  173    VECTOR_154,
//  174    VECTOR_155,
//  175    VECTOR_156,
//  176    VECTOR_157,
//  177    VECTOR_158,
//  178    VECTOR_159,
//  179    VECTOR_160,
//  180    VECTOR_161,
//  181    VECTOR_162,
//  182    VECTOR_163,
//  183    VECTOR_164,
//  184    VECTOR_165,
//  185    VECTOR_166,
//  186    VECTOR_167,
//  187    VECTOR_168,
//  188    VECTOR_169,
//  189    VECTOR_170,
//  190    VECTOR_171,
//  191    VECTOR_172,
//  192    VECTOR_173,
//  193    VECTOR_174,
//  194    VECTOR_175,
//  195    VECTOR_176,
//  196    VECTOR_177,
//  197    VECTOR_178,
//  198    VECTOR_179,
//  199    VECTOR_180,
//  200    VECTOR_181,
//  201    VECTOR_182,
//  202    VECTOR_183,
//  203    VECTOR_184,
//  204    VECTOR_185,
//  205    VECTOR_186,
//  206    VECTOR_187,
//  207    VECTOR_188,
//  208    VECTOR_189,
//  209    VECTOR_190,
//  210    VECTOR_191,
//  211    VECTOR_192,
//  212    VECTOR_193,
//  213    VECTOR_194,
//  214    VECTOR_195,
//  215    VECTOR_196,
//  216    VECTOR_197,
//  217    VECTOR_198,
//  218    VECTOR_199,
//  219    VECTOR_200,
//  220    VECTOR_201,
//  221    VECTOR_202,
//  222    VECTOR_203,
//  223    VECTOR_204,
//  224    VECTOR_205,
//  225    VECTOR_206,
//  226    VECTOR_207,
//  227    VECTOR_208,
//  228    VECTOR_209,
//  229    VECTOR_210,
//  230    VECTOR_211,
//  231    VECTOR_212,
//  232    VECTOR_213,
//  233    VECTOR_214,
//  234    VECTOR_215,
//  235    VECTOR_216,
//  236    VECTOR_217,
//  237    VECTOR_218,
//  238    VECTOR_219,
//  239    VECTOR_220,
//  240    VECTOR_221,
//  241    VECTOR_222,
//  242    VECTOR_223,
//  243    VECTOR_224,
//  244    VECTOR_225,
//  245    VECTOR_226,
//  246    VECTOR_227,
//  247    VECTOR_228,
//  248    VECTOR_229,
//  249    VECTOR_230,
//  250    VECTOR_231,
//  251    VECTOR_232,
//  252    VECTOR_233,
//  253    VECTOR_234,
//  254    VECTOR_235,
//  255    VECTOR_236,
//  256    VECTOR_237,
//  257    VECTOR_238,
//  258    VECTOR_239,
//  259    VECTOR_240,
//  260    VECTOR_241,
//  261    VECTOR_242,
//  262    VECTOR_243,
//  263    VECTOR_244,
//  264    VECTOR_245,
//  265    VECTOR_246,
//  266    VECTOR_247,
//  267    VECTOR_248,
//  268    VECTOR_249,
//  269    VECTOR_250,
//  270    VECTOR_251,
//  271    VECTOR_252,
//  272    VECTOR_253,
//  273    VECTOR_254,
//  274    VECTOR_255,
//  275    CONFIG_1,
//  276    CONFIG_2,
//  277    CONFIG_3,
//  278    CONFIG_4,
//  279 
//  280 };
//  281 // VECTOR_TABLE end
//  282 /******************************************************************************
//  283 * default_isr(void)
//  284 *
//  285 * Default ISR definition.
//  286 *
//  287 * In:  n/a
//  288 * Out: n/a
//  289 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  290 void default_isr(void)
//  291 {
default_isr:
        PUSH     {R7,LR}
//  292    #define VECTORNUM                     (*(volatile uint8_t*)(0xE000ED04))
//  293 
//  294    printf("\n****default_isr entered on vector %d*****\r\n\n",VECTORNUM);
        LDR.N    R0,??DataTable1  ;; 0xe000ed04
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADR.W    R0,`?<Constant "\\n****default_isr ente...">`
        BL       printf
//  295    return;
        POP      {R0,PC}          ;; return
//  296 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1:
        DC32     0xe000ed04

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "\\n****default_isr ente...">`:
        ; Initializer data, 48 bytes
        DC8 10, 42, 42, 42, 42, 100, 101, 102, 97, 117
        DC8 108, 116, 95, 105, 115, 114, 32, 101, 110, 116
        DC8 101, 114, 101, 100, 32, 111, 110, 32, 118, 101
        DC8 99, 116, 111, 114, 32, 37, 100, 42, 42, 42
        DC8 42, 42, 13, 10, 10, 0, 0, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
//  297 /******************************************************************************/
//  298 /* End of "vectors.c" */
// 
// 1 040 bytes in section .intvec
//    70 bytes in section .text
// 
//    70 bytes of CODE  memory
// 1 040 bytes of CONST memory
//
//Errors: none
//Warnings: none
