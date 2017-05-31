///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.3.54009/W32 for ARM    18/Feb/2013  16:57:29 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\Profiles\B38350\My Documents\App Notes\Kinetis\L     /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\common\alloc.c                             /
//    Command line =  "D:\Profiles\B38350\My Documents\App Notes\Kinetis\L    /
//                    Series\CMP pin sampling\Example                         /
//                    Projects\src\common\alloc.c" -D IAR -D FRDM -D EX2      /
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
//                    st\alloc.s                                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME alloc

        #define SHT_PROGBITS 0x1

        SECTION HEAP:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        PUBLIC free
        PUBLIC malloc

// D:\Profiles\B38350\My Documents\App Notes\Kinetis\L Series\CMP pin sampling\Example Projects\src\common\alloc.c
//    1 /*
//    2  * File:        alloc.c
//    3  * Purpose:     generic malloc() and free() engine
//    4  *
//    5  * Notes:       99% of this code stolen/borrowed from the K&R C
//    6  *              examples.
//    7  *
//    8  */
//    9 
//   10 #include "common.h"
//   11 #include "stdlib.h"
//   12 
//   13 #pragma section = "HEAP"
//   14 
//   15 /********************************************************************/
//   16 
//   17 /*
//   18  * This struct forms the minimum block size which is allocated, and
//   19  * also forms the linked list for the memory space used with alloc()
//   20  * and free().  It is padded so that on a 32-bit machine, all malloc'ed
//   21  * pointers are 16-byte aligned.
//   22  */
//   23 typedef struct ALLOC_HDR
//   24 {
//   25     struct
//   26     {
//   27         struct ALLOC_HDR     *ptr;
//   28         unsigned int size;
//   29     } s;
//   30     unsigned int align;
//   31     unsigned int pad;
//   32 } ALLOC_HDR;
//   33 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   34 static ALLOC_HDR base;
base:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   35 static ALLOC_HDR *freep = NULL;
freep:
        DS8 4
//   36 
//   37 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   38 void
//   39 free (void *ap)
//   40 {
free:
        PUSH     {LR}
//   41     ALLOC_HDR *bp, *p;
//   42 
//   43     bp = (ALLOC_HDR *)ap - 1;   /* point to block header */
        SUBS     R0,R0,#+16
//   44     for (p = freep; !((bp > p) && (bp < p->s.ptr)) ; p = p->s.ptr)
        LDR      R1,??DataTable1
        LDR      R1,[R1, #+0]
        B        ??free_0
??free_1:
        LDR      R1,[R1, #+0]
??free_0:
        CMP      R1,R0
        BCS      ??free_2
        LDR      R2,[R1, #+0]
        CMP      R0,R2
        BCC      ??free_3
//   45     {
//   46         if ((p >= p->s.ptr) && ((bp > p) || (bp < p->s.ptr)))
??free_2:
        LDR      R2,[R1, #+0]
        CMP      R1,R2
        BCC      ??free_1
        CMP      R1,R0
        BCC      ??free_4
        LDR      R2,[R1, #+0]
        CMP      R0,R2
        BCS      ??free_1
//   47         {
//   48             break; /* freed block at start or end of arena */
//   49         }
//   50     }
//   51 
//   52     if ((bp + bp->s.size) == p->s.ptr)
??free_4:
??free_3:
        LDR      R2,[R0, #+4]
        MOVS     R3,#+16
        MULS     R2,R3,R2
        ADDS     R2,R0,R2
        LDR      R3,[R1, #+0]
        CMP      R2,R3
        BNE      ??free_5
//   53     {
//   54         bp->s.size += p->s.ptr->s.size;
        LDR      R2,[R0, #+4]
        LDR      R3,[R1, #+0]
        LDR      R3,[R3, #+4]
        ADDS     R2,R2,R3
        STR      R2,[R0, #+4]
//   55         bp->s.ptr = p->s.ptr->s.ptr;
        LDR      R2,[R1, #+0]
        LDR      R2,[R2, #+0]
        STR      R2,[R0, #+0]
        B        ??free_6
//   56     }
//   57     else
//   58     {
//   59         bp->s.ptr = p->s.ptr;
??free_5:
        LDR      R2,[R1, #+0]
        STR      R2,[R0, #+0]
//   60     }
//   61 
//   62     if ((p + p->s.size) == bp)
??free_6:
        LDR      R2,[R1, #+4]
        MOVS     R3,#+16
        MULS     R2,R3,R2
        ADDS     R2,R1,R2
        CMP      R2,R0
        BNE      ??free_7
//   63     {
//   64         p->s.size += bp->s.size;
        LDR      R2,[R1, #+4]
        LDR      R3,[R0, #+4]
        ADDS     R2,R2,R3
        STR      R2,[R1, #+4]
//   65         p->s.ptr = bp->s.ptr;
        LDR      R0,[R0, #+0]
        STR      R0,[R1, #+0]
        B        ??free_8
//   66     }
//   67     else
//   68     {
//   69         p->s.ptr = bp;
??free_7:
        STR      R0,[R1, #+0]
//   70     }
//   71 
//   72     freep = p;
??free_8:
        LDR      R0,??DataTable1
        STR      R1,[R0, #+0]
//   73 }
        POP      {PC}             ;; return
//   74 
//   75 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   76 void *
//   77 malloc (unsigned nbytes)
//   78 {
malloc:
        PUSH     {R4,LR}
        MOVS     R1,R0
//   79     /* Get addresses for the HEAP start and end */
//   80     #if defined(CW)  
//   81       extern char __HEAP_START[];
//   82       extern char __HEAP_END[];
//   83     #elif defined(IAR)
//   84       char* __HEAP_START = __section_begin("HEAP");
        LDR      R0,??DataTable1_1
//   85       char* __HEAP_END = __section_end("HEAP");
        LDR      R3,??DataTable1_2
//   86     #elif defined(KEIL)
//   87     #endif
//   88    
//   89     ALLOC_HDR *p, *prevp;
//   90     unsigned nunits;
//   91 
//   92     nunits = ((nbytes+sizeof(ALLOC_HDR)-1) / sizeof(ALLOC_HDR)) + 1;
        ADDS     R1,R1,#+15
        LSRS     R1,R1,#+4
        ADDS     R1,R1,#+1
//   93 
//   94     if ((prevp = freep) == NULL)
        LDR      R2,??DataTable1
        LDR      R2,[R2, #+0]
        CMP      R2,#+0
        BNE      ??malloc_0
//   95     {
//   96         p = (ALLOC_HDR *)__HEAP_START;
//   97         p->s.size = ( ((uint32)__HEAP_END - (uint32)__HEAP_START)
//   98             / sizeof(ALLOC_HDR) );
        SUBS     R2,R3,R0
        LSRS     R2,R2,#+4
        STR      R2,[R0, #+4]
//   99         p->s.ptr = &base;
        LDR      R2,??DataTable1_3
        STR      R2,[R0, #+0]
//  100         base.s.ptr = p;
        LDR      R2,??DataTable1_3
        STR      R0,[R2, #+0]
//  101         base.s.size = 0;
        LDR      R0,??DataTable1_3
        MOVS     R2,#+0
        STR      R2,[R0, #+4]
//  102         prevp = freep = &base;
        LDR      R2,??DataTable1_3
        LDR      R0,??DataTable1
        STR      R2,[R0, #+0]
//  103     }
//  104 
//  105     for (p = prevp->s.ptr; ; prevp = p, p = p->s.ptr)
??malloc_0:
        LDR      R0,[R2, #+0]
        B        ??malloc_1
??malloc_2:
        MOVS     R2,R0
        LDR      R0,[R0, #+0]
//  106     {
//  107         if (p->s.size >= nunits)
??malloc_1:
        LDR      R3,[R0, #+4]
        CMP      R3,R1
        BCC      ??malloc_3
//  108         {
//  109             if (p->s.size == nunits)
        LDR      R3,[R0, #+4]
        CMP      R3,R1
        BNE      ??malloc_4
//  110             {
//  111                 prevp->s.ptr = p->s.ptr;
        LDR      R1,[R0, #+0]
        STR      R1,[R2, #+0]
        B        ??malloc_5
//  112             }
//  113             else
//  114             {
//  115                 p->s.size -= nunits;
??malloc_4:
        LDR      R3,[R0, #+4]
        SUBS     R3,R3,R1
        STR      R3,[R0, #+4]
//  116                 p += p->s.size;
        LDR      R3,[R0, #+4]
        MOVS     R4,#+16
        MULS     R3,R4,R3
        ADDS     R0,R0,R3
//  117                 p->s.size = nunits;
        STR      R1,[R0, #+4]
//  118             }
//  119             freep = prevp;
??malloc_5:
        LDR      R1,??DataTable1
        STR      R2,[R1, #+0]
//  120             return (void *)(p + 1);
        ADDS     R0,R0,#+16
        B        ??malloc_6
//  121         }
//  122 
//  123         if (p == freep)
??malloc_3:
        LDR      R2,??DataTable1
        LDR      R2,[R2, #+0]
        CMP      R0,R2
        BNE      ??malloc_2
//  124             return NULL;
        MOVS     R0,#+0
??malloc_6:
        POP      {R4,PC}          ;; return
//  125     }
//  126 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     freep

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     SFB(HEAP)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     SFE(HEAP)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     base

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION HEAP:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  127 
//  128 /********************************************************************/
// 
//  20 bytes in section .bss
// 234 bytes in section .text
// 
// 234 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
