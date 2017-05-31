;*********************************************************************
; HEADER_START
;
;        $File Name: slfprgR-qc.asm$
;      Project:        Developper's HC08 Bootloader Slave
;      Description:    QB main bootloader file
;      Platform:       HC08
;      $Version: 6.0.7.0$
;      $Date: Oct-11-2011$ 
;      $Last Modified By: B20253$
;      Company:        Freescale Semiconductor
;      Security:       General Business
;
; =================================================================== 
; Copyright (c):      Freescale Semiconductor, 2004, All rights reserved.
;
; =================================================================== 
; THIS SOFTWARE IS PROVIDED BY FREESCALE "AS IS" AND ANY
; EXPRESSED OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
; PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL FREESCALE OR
; ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
; NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
; HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
; STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
; OF THE POSSIBILITY OF SUCH DAMAGE.
; ===================================================================
;
; HEADER_END

    include "reg-qc.h"

RCS_ENA        EQU     0           ; READ COMMAND SUPPORTED?

  IFNE RCS_ENA
RCS            EQU     $80         ; READ COMMAND SUPPORTED
  ELSE
RCS            EQU     0           ; READ COMMAND unSUPPORTED
  ENDIF

VER_NUM        EQU     1           ; FC protocol version number


ERBLK_LEN      EQU     64
WRBLK_LEN      EQU     32

            IF SIZE = 8            ; QC8
FLS_BEG        EQU     $DE00     ; specify memory limit!
IDENTS         MACRO
               DC.B    'QC8',0 ; QC8 string
               ENDM
            ENDIF
            
            IF SIZE = 16          ; QC16
FLS_BEG        EQU     $BE00     ; specify memory limit!
IDENTS         MACRO
               DC.B    'QC16',0  ; QC16 string
               ENDM
            ENDIF

FLS_END        EQU     $FCC0       ; this is APL_VECT address (also from PRM file)
INT_VECT       EQU     $FFD6


FLBPRMASK     EQU     $C000       ; this is CPU specific FLBPR mask (i.e. bits that are always in the address)

SPEED         EQU     8         ; 4 x f(BUS)

ROMSTART      EQU     $2800

GETBYTE       EQU     ROMSTART
RDVRRNG       EQU     ROMSTART+3
ERARNGE       EQU     ROMSTART+6 
PRGRNGE       EQU     ROMSTART+9
DELNUS        EQU     ROMSTART+12

RAMSTART      EQU     $80
CTRLBYT       EQU     RAMSTART+$08
CPUSPD        EQU     RAMSTART+$09
LADDR         EQU     RAMSTART+$0A
DATA          EQU     RAMSTART+$0C

TXDDDR        EQU     DDRB
TXDPORT       EQU     PTB
TXDBIT        EQU     5
RXDPORT       EQU     PTB
RXDBIT        EQU     4

;*******************************************************************************************

            XDEF    FLBPR   ; external define for FLBPR

            XDEF    main
            XDEF    VEC1
            XDEF    VEC2
            XDEF    VEC3
            XDEF    VEC4
            XDEF    VEC5
            XDEF    VEC6
            XDEF    VEC7
            XDEF    VEC8
            XDEF    VEC9
            XDEF    VEC10
            XDEF    VEC11
            XDEF    VEC12
            XDEF    VEC13
            XDEF    VEC14
            XDEF    VEC15
            XDEF    VEC16
            XDEF    VEC17
            XDEF    VEC18
            XDEF    VEC19
            XDEF    VEC20

WR_DATA     EQU     'W'
RD_DATA     EQU     'R'
ENDPRG      EQU     'Q'
ERASE       EQU     'E'
ACK         EQU     $FC
IDENT       EQU     'I'

T100MS      EQU     255

ILOP      MACRO
            DC.B    $32             ; this is illegal operation code
          ENDM
;*******************************************************************************************
MY_ZEROPAGE:   SECTION  SHORT

ADRS:       DS.W     1
LEN:        DS.B     1
STAT:       DS.B     1
STSRSR:     DS.B     1               ; storage for SRSR reg.

DEFAULT_RAM:    SECTION

;*******************************************************************************************
APL_VECT_ROM:   SECTION

APL_VECT:
PRIV:    DC.B    0,0,0,0,0,0,0,0 ; 8 bytes reserved for bootloader's private use
        
VEC0:   JMP     main            ; vector 0
VEC1:   JMP     main            ; vector 1
VEC2:   JMP     main            ; vector 2
VEC3:   JMP     main            ; vector 3
VEC4:   JMP     main            ; vector 4
VEC5:   JMP     main            ; vector 5
VEC6:   JMP     main            ; vector 6
VEC7:   JMP     main            ; vector 7
VEC8:   JMP     main            ; vector 8
VEC9:   JMP     main            ; vector 9
VEC10:  JMP     main            ; vector 10
VEC11:  JMP     main            ; vector 11
VEC12:  JMP     main            ; vector 12
VEC13:  JMP     main            ; vector 13
VEC14   JMP     main            ; vector 14
VEC15:  JMP     main            ; vector 15
VEC16:  JMP     main            ; vector 16
VEC17:  JMP     main            ; vector 17
VEC18:  JMP     main            ; vector 18
VEC19:  JMP     main            ; vector 19
VEC20:  JMP     main            ; vector 20

;*******************************************************************************************
FLB_PROT_ROM:   SECTION
      IF SIZE = 16      ; QC16
FLBPR:  DC.B    $FF   ; FLASH protection DISABLED
      ELSE
FLBPR:  DC.B    (FLS_END+2*ERBLK_LEN-FLBPRMASK)/ERBLK_LEN ; FLASH protection block start - MUST CHANGE ACCORDING TO MEMORY MAPPING
      ENDIF
CODE_ROM:   SECTION 

ID_STRING1:
        DC.B    VER_NUM | RCS   ; version number & "Read command supported" flag
        DC.W    FLS_BEG         ; START ADDRESS OF FLASH    
        DC.W    FLS_END         ; END ADDRESS OF FLASH    
        DC.W    APL_VECT        ; POINTER TO APPLICATION VECTOR TABLE
        DC.W    INT_VECT        ; POINTER TO BEGINING OF FLASH INT. VECTORS
        DC.W    ERBLK_LEN       ; ERASE BLCK LENGTH OF FLASH ALG.
        DC.W    WRBLK_LEN       ; WRITE BLCK LENGTH OF FLASH ALG.
ID_STRING1_END:

ID_STRING2:
       IDENTS
ID_STRING2_END:

;*******************************************************************************************
FL1_PROT_ROM:   SECTION
; 21 bytes
main:   
        LDA     OSCTRIMF        ;[3] fetch preprogrammed OSCTRIM
        STA     OSCTRIM         ;[2] trim ICG now
        
        LDA     SRSR            ;[3] fetch RESET status reg.
        STA     STSRSR          ;[2] store for later re-use
        TSTA                    ;[1] check if zero (this happens if RESET pulse is too short)

        BEQ     slfprg          ;[2] if so, jump to self programming                
        AND     #%10000000      ;[2] mask only POR RESET source      
        BNE     slfprg          ;[2] any of these sources, go to self programming
        JMP     VEC0             ;[3] jump to real application

FL0_PROT_ROM:   SECTION
; 14 bytes
slfprg: 
        MOV     #%10000001,CONFIG1 ;[3] COP disable, 
                                    ;ESCI clock = CGMCLK by default (via CONFIG2)
        MOV     #%00010000,OSCSC    ;[3] 8MHz Internal clock select
      

        BSET    6,SCC1          ;[2] SCI enable
        MOV     #%00001100,SCC2 ;[3] transmit & receive enable
        JMP     page0                 ;[3]

CODE_ROM:   SECTION 
page0:
        MOV     #%00110000,SCBR ;[3] 9600Bd @ 8MHz CGMXCLK (:13)
        CLR     SCC3                 ;[2] ctrl. reg

        LDA     SCS1                 ;[2]
        MOV     #ACK,SCDR            ;[2] present ACK (we're here)

        LDX     #T100MS
L2:     CLRA
L1:     BRSET   5,SCS1,CAUGHT
        DBNZA   L1
        DBNZX   L2

;       timeout
        ILOP          ; generate RESET by doing illegal operation
;*******************************************************************************************
CAUGHT:         ; CAUGHT IN SELF-PROGRAMMING?
        BSR     READ
      
        MOV     #SPEED,CPUSPD   ; feed the speed
        CLR     CTRLBYT         ; no mass erase   
                                ; this byte MUST be completely cleared for ROM routines to work on QC family!   
;*******************************************************************************************
; successful return from all write routines
SUCC:
        LDA     #ACK
        BSR     WRITE

;fall thru to background
;*******************************************************************************************
; BEGIN OF BACKGROUND COMMAND LOOP
BCKGND:
        BSR     READ
            
        CBEQA   #ERASE, ERASE_COM       ; Erase command
        CBEQA   #WR_DATA, WR_DATA_COM   ; Write (program) command
        CBEQA   #IDENT, IDENT_COM       ; Ident command
      IF RCS_ENA = 1
        CBEQA   #RD_DATA, RD_DATA_COM   ; Read command
      ENDIF

        ; if no valid command found (including Quit)
        ; generate reset too!
        ILOP          ; generate RESET by doing illegal operation
;*******************************************************************************************
IDENT_COM:                      ; TRANSFER OF IDENTIFICATION STRING
        MOV     #ID_STRING1_END-ID_STRING1, LEN
        LDHX    #ID_STRING1
        BSR     WRITE_LOOP
 
        LDHX    #PRIV         ; next 8 are from private area
        MOV     #8,LEN
        BSR     WRITE_LOOP

        MOV     #ID_STRING2_END-ID_STRING2, LEN
        LDHX    #ID_STRING2
        BSR     WRITE_LOOP

        BRA     BCKGND          ; finish without ACK
 ;*******************************************************************************************
WRITE_LOOP:                     ; start address in HX, length in LEN
        LDA     ,X
        BSR     WRITE
        AIX     #1
        DBNZ    LEN, WRITE_LOOP
        RTS
;*******************************************************************************************
      IF RCS_ENA = 1
RD_DATA_COM:

        BSR     READ
        STA     ADRS
        BSR     READ
        STA     ADRS+1
        BSR     READ
        STA     LEN
        LDHX    ADRS
        
        BSR     WRITE_LOOP

        BRA     BCKGND          ; finish without ACK
      ENDIF
;*******************************************************************************************
GETADDR:
        BSR     READ
        PSHA
        PULH                    ; store to H:x
        BSR     READ
        TAX                     ; store to h:X
        RTS                                 ; low in A as well
;*******************************************************************************************
WRITE:   
        BRCLR   6,SCS1,WRITE
        STA     SCDR
        RTS
READ:
        BRCLR   5,SCS1,READ
        LDA     SCDR
        RTS
;*******************************************************************************************
ERASE_COM:
        BSR     GETADDR         ; read adr. and return in H:X

      IF SIZE = 16      ; QC16
        CPHX    #(FLS_END+2*ERBLK_LEN)   ; self-protection since FLBPR is unusable
        BGE     SUCCERRER                ; on QC16
      ENDIF 
                              
        JSR     ERARNGE         ; call ROM erase routine
SUCCERRER:
        BRA     SUCC            ; refer status back to PC
;*******************************************************************************************
WR_DATA_COM:
        BSR     GETADDR         ; read adr. and return in H:X
        STHX    ADRS
        BSR     READ
        STA     STAT
        DECA
        STA     LEN
        LDHX    #DATA
WR_DATA_L1:
        BSR     READ
        STA     ,X
        AIX     #1
        DBNZ    STAT,WR_DATA_L1
                                ; START OF SELF-PROGRAMMING
        LDA     ADRS+1
        ADD     LEN
        STA     LADDR+1
        LDA     ADRS
        ADC     #0
        STA     LADDR
        LDHX    ADRS

      IF SIZE = 16      ; QC16
        CPHX    #(FLS_END+2*ERBLK_LEN)   ; self-protection since FLBPR is unusable
        BGE     SUCCERRWR                ; on QC16
      ENDIF

        JSR     PRGRNGE         ; call ROM erase routine
SUCCERRWR:        
        JMP     SUCC            ; refer status back to PC
;*******************************************************************************************
END  