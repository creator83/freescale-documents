/******************************************************************************
* File:    isr.h
* Purpose: Define interrupt service routines referenced by the vector table.
* Note: Only "vectors.c" should include this header file.
******************************************************************************/

#ifndef __ISR_H
#define __ISR_H 1


/* Example */
/*
#undef  VECTOR_101
#define VECTOR_101 lpt_isr


// ISR(s) are defined in your project directory.
extern void lpt_isr(void);
*/

#undef VECTOR_023
#define VECTOR_023 llwu_isr

#undef  VECTOR_044
#define VECTOR_044 LPTMR_IRQHandler

extern void llwu_isr(void);
extern void LPTMR_IRQHandler(void);

#endif  //__ISR_H

/* End of "isr.h" */
