/*
 * File:		uart.h
 * Purpose:     Provide common ColdFire uart routines for polled serial IO
 *
 * Notes:
 */

#ifndef __uart_H__
#define __uart_H__

/********************************************************************/


void uart_init (UART_MemMapPtr uartch, int sysclk, int baud);
char uart_getchar (UART_MemMapPtr channel);
void uart_putchar (UART_MemMapPtr channel, char ch);
int uart_getchar_present (UART_MemMapPtr channel);
void uart0_init (UARTLP_MemMapPtr uartch, int sysclk, int baud);
char uart0_getchar (UARTLP_MemMapPtr channel);
void uart0_putchar (UARTLP_MemMapPtr channel, char ch);
int uart0_getchar_present (UARTLP_MemMapPtr channel);

/********************************************************************/

#endif /* __uart_H__ */
