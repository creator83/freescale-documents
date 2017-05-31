/******************************************************************************
* File:    vectors.h
*
* Purpose: Provide custom interrupt service routines for Kinetis. 
*
* NOTE: This vector table is a superset table, so interrupt sources might be 
*       listed that are not available on the specific Kinetis device you are 
*       using.
******************************************************************************/

#ifndef __VECTORS_H
#define __VECTORS_H     1

// function prototype for default_isr in vectors.c
void default_isr(void);
void abort_isr(void);
void SRTC_ISR(void);

void hard_fault_handler_c(unsigned int * hardfault_args);

/* Interrupt Vector Table Function Pointers */
                                    
/* Interrupt Vector Table Function Pointers */
#define  DMA0_irq_no            0  // Vector No 16
#define  DMA1_irq_no            1  // Vector No 17
#define  DMA2_irq_no            2  // Vector No 18
#define  DMA3_irq_no            3  // Vector No 19
#define  FTFA_irq_no            5  // Vector No 21
#define  LVD_irq_no             6  // Vector No 22
#define  LLWU_irq_no            7  // Vector No 23
#define  I2C0_irq_no            8  // Vector No 24
#define  SPI0_irq_no            10  // Vector No 26
#define  UART0SE_irq_no         12  // Vector No 28
#define  ADC0_irq_no            15  // Vector No 31
#define  CMP0_irq_no            16  // Vector No 32
#define  TPM0_irq_no            17  // Vector No 33
#define  TPM1_irq_no            18  // Vector No 34
#define  RTCA_irq_no            20  // Vector No 36
#define  RTCS_irq_no            21  // Vector No 37
#define  PIT_irq_no             22  // Vector No 38
#define  DAC_irq_no             25  // Vector No 41
#define  TSI_irq_no             26  // Vector No 42
#define  MCG_irq_no             27  // Vector No 43
#define  LPTMR_irq_no           28  // Vector No 44
#define  PortA_irq_no           30  // Vector No 46
#define  PortD_irq_no           31  // Vector No 47

typedef void pointer(void);

extern void __startup(void);
extern unsigned long __BOOT_STACK_ADDRESS[];
extern void __iar_program_start(void);
extern void SRTC_ISR(void);
                                        // Address     Vector IRQ   Source module   Source description
#define VECTOR_000      (pointer*)__BOOT_STACK_ADDRESS	//          ARM core        Initial Supervisor SP
#define VECTOR_001      __startup	// 0x0000_0004 1 -          ARM core        Initial Program Counter
#define VECTOR_002      default_isr     // 0x0000_0008 2 -          ARM core        Non-maskable Interrupt (NMI)
#define VECTOR_003      default_isr     // 0x0000_000C 3 -          ARM core        Hard Fault
#define VECTOR_004      default_isr     // 0x0000_0010 4 -
#define VECTOR_005      default_isr     // 0x0000_0014 5 -         
#define VECTOR_006      default_isr     // 0x0000_0018 6 -          
#define VECTOR_007      default_isr     // 0x0000_001C 7 -                           
#define VECTOR_008      default_isr     // 0x0000_0020 8 -                           
#define VECTOR_009      default_isr     // 0x0000_0024 9 -
#define VECTOR_010      default_isr     // 0x0000_0028 10 -
#define VECTOR_011      default_isr     // 0x0000_002C 11 -         ARM core         Supervisor call (SVCall)
#define VECTOR_012      default_isr     // 0x0000_0030 12 -        
#define VECTOR_013      default_isr     // 0x0000_0034 13 -                          
#define VECTOR_014      default_isr     // 0x0000_0038 14 -         ARM core         Pendable request for system service (PendableSrvReq)
#define VECTOR_015      default_isr     // 0x0000_003C 15 -         ARM core         System tick timer (SysTick)
#define VECTOR_016      default_isr     // 0x0000_0040 16     0     DMA              DMA Channel 0 transfer complete
#define VECTOR_017      default_isr     // 0x0000_0044 17     1     DMA              DMA Channel 1 transfer complete
#define VECTOR_018      default_isr     // 0x0000_0048 18     2     DMA              DMA Channel 2 transfer complete
#define VECTOR_019      default_isr     // 0x0000_004C 19     3     DMA              DMA Channel 3 transfer complete
#define VECTOR_020      default_isr     // 0x0000_0050 20     
#define VECTOR_021      default_isr     // 0x0000_0054 21     5     FTFA             Command complete and read collision
#define VECTOR_022      default_isr     // 0x0000_0058 22     6     PMC              Low Voltage detect, low-voltage warning
#define VECTOR_023      default_isr     // 0x0000_005C 23     7     LLWU             Low Leakage Wakeup
#define VECTOR_024      default_isr     // 0x0000_0060 24     8     IIC0
#define VECTOR_025      default_isr     // 0x0000_0064 25     9                  
#define VECTOR_026      default_isr     // 0x0000_0068 26    10     SPI0             Single interrupt vector for all sources 
#define VECTOR_027      default_isr     // 0x0000_006C 27    11                
#define VECTOR_028      default_isr     // 0x0000_0070 28    12     UART0
#define VECTOR_029      default_isr     // 0x0000_0074 29    13     
#define VECTOR_030      default_isr     // 0x0000_0078 30    14     
#define VECTOR_031      default_isr     // 0x0000_007C 31    15     ADC0             DMA Channel 15 transfer complete
#define VECTOR_032      default_isr     // 0x0000_0080 32    16     CMP0             DMA Error Interrupt Channels 0-15
#define VECTOR_033      default_isr     // 0x0000_0084 33    17     TPM0             Normal interrupt
#define VECTOR_034      default_isr     // 0x0000_0088 34    18     TPM1  
#define VECTOR_035      default_isr     // 0x0000_008C 35    19     
#define VECTOR_036      default_isr     // 0x0000_0090 36    20     RTC              Alarm interrupt
#define VECTOR_037      default_isr     // 0x0000_0094 37    21     RTC              Seconds interrupt
#define VECTOR_038      default_isr     // 0x0000_0098 38    22     PIT
#define VECTOR_039      default_isr     // 0x0000_009C 39    23		
#define VECTOR_040      default_isr     // 0x0000_00A0 40    24     
#define VECTOR_041      default_isr     // 0x0000_00A4 41    25     DAC0
#define VECTOR_042      default_isr     // 0x0000_00A8 42    26     TSI0             Single interrupt vector for all sources
#define VECTOR_043      default_isr     // 0x0000_00AC 43    27     MCG              Single interrupt vector for all sources
#define VECTOR_044      default_isr     // 0x0000_00B0 44    28     LPTMR0           Single interrupt vector for all sources
#define VECTOR_045      default_isr     // 0x0000_00B4 45    29     
#define VECTOR_046      default_isr     // 0x0000_00B8 46    30     Port Control Module  Pin detect (Port A)
#define VECTOR_047      default_isr     // 0x0000_00BC 47    31     Port Control Moudle  Pin detect (Port D)
#define VECTOR_048      default_isr     // 0x0000_00C0 48    32     
#define VECTOR_049      default_isr     // 0x0000_00C4 49    33     
#define VECTOR_050      default_isr     // 0x0000_00C8 50    34     
#define VECTOR_051      default_isr     // 0x0000_00CC 51    35     
#define VECTOR_052      default_isr     // 0x0000_00D0 52    36     
#define VECTOR_053      default_isr     // 0x0000_00D4 53    37     
#define VECTOR_054      default_isr     // 0x0000_00D8 54    38     
#define VECTOR_055      default_isr     // 0x0000_00DC 55    39     
#define VECTOR_056      default_isr     // 0x0000_00E0 56    40     
#define VECTOR_057      default_isr     // 0x0000_00E4 57    41     
#define VECTOR_058      default_isr     // 0x0000_00E8 58    42     
#define VECTOR_059      default_isr     // 0x0000_00EC 59    43     
#define VECTOR_060      default_isr     // 0x0000_00F0 60    44     
#define VECTOR_061      default_isr     // 0x0000_00F4 61    45     
#define VECTOR_062      default_isr     // 0x0000_00F8 62    46     
#define VECTOR_063      default_isr     // 0x0000_00FC 63    47     
#define VECTOR_064      default_isr     // 0x0000_0100 64    48     
#define VECTOR_065      default_isr     // 0x0000_0104 65    49     
#define VECTOR_066      default_isr     // 0x0000_0108 66    50     
#define VECTOR_067      default_isr     // 0x0000_010C 67    51     
#define VECTOR_068      default_isr     // 0x0000_0110 68    52     
#define VECTOR_069      default_isr     // 0x0000_0114 69    53     
#define VECTOR_070      default_isr     // 0x0000_0118 70    54     
#define VECTOR_071      default_isr     // 0x0000_011C 71    55     
#define VECTOR_072      default_isr     // 0x0000_0120 72    56     
#define VECTOR_073      default_isr     // 0x0000_0124 73    57     
#define VECTOR_074      default_isr     // 0x0000_0128 74    58     
#define VECTOR_075      default_isr     // 0x0000_012C 75    59     
#define VECTOR_076      default_isr     // 0x0000_0130 76    60     
#define VECTOR_077      default_isr     // 0x0000_0134 77    61     
#define VECTOR_078      default_isr     // 0x0000_0138 78    62     
#define VECTOR_079      default_isr     // 0x0000_013C 79    63     
#define VECTOR_080      default_isr     // 0x0000_0140 80    64     
#define VECTOR_081      default_isr     // 0x0000_0144 81    65     
#define VECTOR_082      SRTC_ISR     // 0x0000_0148 82    66     
#define VECTOR_083      default_isr     // 0x0000_014C 83    67
#define VECTOR_084      default_isr     // 0x0000_0150 84    68     
#define VECTOR_085      default_isr     // 0x0000_0154 85    69     
#define VECTOR_086      default_isr     // 0x0000_0158 86    70     
#define VECTOR_087      default_isr     // 0x0000_015C 87    71     
#define VECTOR_088      default_isr     // 0x0000_0160 88    72     
#define VECTOR_089      default_isr     // 0x0000_0164 89    73     
#define VECTOR_090      default_isr     // 0x0000_0168 90    74     
#define VECTOR_091      default_isr     // 0x0000_016C 91    75		
#define VECTOR_092      default_isr     // 0x0000_0170 92    76		
#define VECTOR_093      default_isr     // 0x0000_0174 93    77		
#define VECTOR_094      default_isr     // 0x0000_0178 94    78		
#define VECTOR_095      default_isr     // 0x0000_017C 95    79     
#define VECTOR_096      default_isr     // 0x0000_0180 96    80     
#define VECTOR_097      default_isr     // 0x0000_0184 97    81     
#define VECTOR_098      default_isr     // 0x0000_0188 98    82     
#define VECTOR_099      default_isr     // 0x0000_018C 99    83     
#define VECTOR_100      default_isr     // 0x0000_0190 100   84     
#define VECTOR_101      default_isr     // 0x0000_0194 101   85     
#define VECTOR_102      default_isr     // 0x0000_0198 102   86     
#define VECTOR_103      abort_isr       // 0x0000_019C 103   87     
#define VECTOR_104      default_isr     // 0x0000_01A0 104   88     
#define VECTOR_105      default_isr     // 0x0000_01A4 105   89     
#define VECTOR_106      default_isr     // 0x0000_01A8 106   90     
#define VECTOR_107      default_isr     // 0x0000_01AC 107   91     
#define VECTOR_108      default_isr     // 0x0000_01B0 108   92    
#define VECTOR_109      default_isr     // 0x0000_01B4 109   93    
#define VECTOR_110      default_isr     // 0x0000_01B8 110   94    
#define VECTOR_111      default_isr     // 0x0000_01BC 111   95    
#define VECTOR_112      default_isr     // 0x0000_01C0 112   96    
#define VECTOR_113      default_isr     // 0x0000_01C4 113   97    
#define VECTOR_114      default_isr     // 0x0000_01C8 114   98    
#define VECTOR_115      default_isr     // 0x0000_01CC 115   99    
#define VECTOR_116      default_isr     // 0x0000_01D0 116   100
#define VECTOR_117      default_isr     // 0x0000_01D4 117   101
#define VECTOR_118      default_isr     // 0x0000_01D8 118   102
#define VECTOR_119      default_isr     // 0x0000_01DC 119   103
#define VECTOR_120      default_isr     // 
#define VECTOR_121      default_isr     // 
#define VECTOR_122      default_isr     // 
#define VECTOR_123      default_isr     // 
#define VECTOR_124      default_isr     // 
#define VECTOR_125      default_isr     // 
#define VECTOR_126      default_isr     // 
#define VECTOR_127      default_isr     // 
#define VECTOR_128      default_isr     // 
#define VECTOR_129      default_isr     // 
#define VECTOR_130      default_isr     // 
#define VECTOR_131      default_isr     // 
#define VECTOR_132      default_isr     // 
#define VECTOR_133      default_isr     // 
#define VECTOR_134      default_isr     // 
#define VECTOR_135      default_isr     // 
#define VECTOR_136      default_isr     // 
#define VECTOR_137      default_isr     // 
#define VECTOR_138      default_isr     // 
#define VECTOR_139      default_isr     // 
#define VECTOR_140      default_isr     // 
#define VECTOR_141      default_isr     // 
#define VECTOR_142      default_isr     // 
#define VECTOR_143      default_isr     // 
#define VECTOR_144      default_isr     // 
#define VECTOR_145      default_isr     // 
#define VECTOR_146      default_isr     // 
#define VECTOR_147      default_isr     // 
#define VECTOR_148      default_isr     // 
#define VECTOR_149      default_isr     // 
#define VECTOR_150      default_isr     // 
#define VECTOR_151      default_isr     // 
#define VECTOR_152      default_isr     // 
#define VECTOR_153      default_isr     // 
#define VECTOR_154      default_isr     // 
#define VECTOR_155      default_isr     // 
#define VECTOR_156      default_isr     // 
#define VECTOR_157      default_isr     // 
#define VECTOR_158      default_isr     // 
#define VECTOR_159      default_isr     // 
#define VECTOR_160      default_isr     // 
#define VECTOR_161      default_isr     // 
#define VECTOR_162      default_isr     // 
#define VECTOR_163      default_isr     // 
#define VECTOR_164      default_isr     // 
#define VECTOR_165      default_isr     // 
#define VECTOR_166      default_isr     // 
#define VECTOR_167      default_isr     // 
#define VECTOR_168      default_isr     // 
#define VECTOR_169      default_isr     // 
#define VECTOR_170      default_isr     // 
#define VECTOR_171      default_isr     // 
#define VECTOR_172      default_isr     // 
#define VECTOR_173      default_isr     // 
#define VECTOR_174      default_isr     // 
#define VECTOR_175      default_isr     // 
#define VECTOR_176      default_isr     // 
#define VECTOR_177      default_isr     // 
#define VECTOR_178      default_isr     // 
#define VECTOR_179      default_isr     // 
#define VECTOR_180      default_isr     // 
#define VECTOR_181      default_isr     // 
#define VECTOR_182      default_isr     // 
#define VECTOR_183      default_isr     // 
#define VECTOR_184      default_isr     // 
#define VECTOR_185      default_isr     // 
#define VECTOR_186      default_isr     // 
#define VECTOR_187      default_isr     // 
#define VECTOR_188      default_isr     // 
#define VECTOR_189      default_isr     // 
#define VECTOR_190      default_isr     // 
#define VECTOR_191      default_isr     // 
#define VECTOR_192      default_isr     // 
#define VECTOR_193      default_isr     // 
#define VECTOR_194      default_isr     // 
#define VECTOR_195      default_isr     // 
#define VECTOR_196      default_isr     // 
#define VECTOR_197      default_isr     // 
#define VECTOR_198      default_isr     // 
#define VECTOR_199      default_isr     // 
#define VECTOR_200      default_isr     // 
#define VECTOR_201      default_isr     // 
#define VECTOR_202      default_isr     // 
#define VECTOR_203      default_isr     // 
#define VECTOR_204      default_isr     // 
#define VECTOR_205      default_isr     // 
#define VECTOR_206      default_isr     // 
#define VECTOR_207      default_isr     // 
#define VECTOR_208      default_isr     // 
#define VECTOR_209      default_isr     // 
#define VECTOR_210      default_isr     // 
#define VECTOR_211      default_isr     // 
#define VECTOR_212      default_isr     // 
#define VECTOR_213      default_isr     // 
#define VECTOR_214      default_isr     // 
#define VECTOR_215      default_isr     // 
#define VECTOR_216      default_isr     // 
#define VECTOR_217      default_isr     // 
#define VECTOR_218      default_isr     // 
#define VECTOR_219      default_isr     // 
#define VECTOR_220      default_isr     // 
#define VECTOR_221      default_isr     // 
#define VECTOR_222      default_isr     // 
#define VECTOR_223      default_isr     // 
#define VECTOR_224      default_isr     // 
#define VECTOR_225      default_isr     // 
#define VECTOR_226      default_isr     // 
#define VECTOR_227      default_isr     // 
#define VECTOR_228      default_isr     // 
#define VECTOR_229      default_isr     // 
#define VECTOR_230      default_isr     // 
#define VECTOR_231      default_isr     // 
#define VECTOR_232      default_isr     // 
#define VECTOR_233      default_isr     // 
#define VECTOR_234      default_isr     // 
#define VECTOR_235      default_isr     // 
#define VECTOR_236      default_isr     // 
#define VECTOR_237      default_isr     // 
#define VECTOR_238      default_isr     // 
#define VECTOR_239      default_isr     // 
#define VECTOR_240      default_isr     // 
#define VECTOR_241      default_isr     // 
#define VECTOR_242      default_isr     // 
#define VECTOR_243      default_isr     // 
#define VECTOR_244      default_isr     // 
#define VECTOR_245      default_isr     // 
#define VECTOR_246      default_isr     // 
#define VECTOR_247      default_isr     // 
#define VECTOR_248      default_isr     // 
#define VECTOR_249      default_isr     // 
#define VECTOR_250      default_isr     // 
#define VECTOR_251      default_isr     // 
#define VECTOR_252      default_isr     // 
#define VECTOR_253      default_isr     // 
#define VECTOR_254      default_isr     // 
#define VECTOR_255      default_isr     // 
#ifdef BOOTLOADER_USER
#else
#define CONFIG_1		(pointer*)0xffffffff 
#define CONFIG_2		(pointer*)0xffffffff 
#define CONFIG_3		(pointer*)0xffffffff
//#define CONFIG_4		(pointer*)0xfffffffe //b5=1,b4=1,b0=1 div1 fast
#define CONFIG_4		(pointer*)0xfffffbfe //b5=1,b4=1,b0=1 div1 fast
//#define CONFIG_4	(pointer*)0xffffdffe //b5=0,b4=1,b0=1 div1 slow works
//#define CONFIG_4	(pointer*)0xffffcefe //b5=0,b4=0,b0=0;div8 slow
//#define CONFIG_4	(pointer*)0xffffeefe //b5=1,b4=0,b0=0 div8 fast 
//#define CONFIG_4	(pointer*)0xffffcffe //b5=0,b4=0,b0=1;div4 slow
//#define CONFIG_4	(pointer*)0xffffeffe //b5=1,b4=0,b0=1;div4 fast
//#define CONFIG_4	(pointer*)0xfffffefe //b5=1,b4=1,b0=0;div2 fast
//#define CONFIG_4	(pointer*)0xffffdefe //b5=0,b4=1,b0=0;div2 slow 
#endif
#endif /*__VECTORS_H*/

/* End of "vectors.h" */