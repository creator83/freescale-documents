;*********************************************************************
; HEADER_START
;
;        $File Name: slfprg-s08acaw.asm$
;      Project:        Developper's HC08 Bootloader Slave
;      Description:    S08AW/AC main bootloader file
;      Platform:       HCS08
;      $Version: 10.0.16.0$
;      $Date: Sep-10-2012$ 
;      $Last Modified By: r30323$
;      Company:        Freescale Semiconductor
;      Security:       General Business
;
; =================================================================== 
; Copyright (c):      Freescale Semiconductor, 2009, All rights reserved.
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

; labels FAMILY, SCI, SIZE and IRQOPTION defined externally:
; FAMILY=0 means AW family is required
; FAMILY=1 means AC family is required
; 
; SIZE = 8, 16, 32, 48, 60 depending what memory size of AW family is required
; 
; IRQOPTION *NOT* defined >> regular version 
; IRQOPTION defined >> regular version using IRQ option (bootloading won't start if IRQ high)
;
; label SCI = 1, 2 selects what SCI channel is used
; label HISPEED => if defined, 115200Bd is used instead of 9600Bd


   IF FAMILY = 0
   include "mc9s08aw60.inc"
   ENDIF

   IF FAMILY = 1
   include "mc9s08ac60.inc"
   ENDIF

   IFNDEF SCI
SCI      EQU      1
   ENDIF   

   IF SCI = 1
SCIBDH      equ SCI1BDH
SCIBDL      equ SCI1BDL
SCC1        equ SCI1C1
SCC2        equ SCI1C2
SCC3        equ SCI1C3
SCS1        equ SCI1S1
SCS2        equ SCI1S2
SCDR        equ SCI1D
TC          equ SCI1S1_TC
RDRF        equ SCI1S1_RDRF

TXDDDR      EQU PTEDD
TXDPORT     EQU PTED
TXDBIT      EQU 0
RXDPORT     EQU PTED
RXDBIT      EQU 1
   ENDIF

   IF SCI = 2
SCIBDH      equ SCI2BDH
SCIBDL      equ SCI2BDL
SCC1        equ SCI2C1
SCC2        equ SCI2C2
SCC3        equ SCI2C3
SCS1        equ SCI2S1
SCS2        equ SCI2S2
SCDR        equ SCI2D
TC          equ SCI2S1_TC
RDRF        equ SCI2S1_RDRF

TXDDDR      EQU PTCDD
TXDPORT     EQU PTCD
TXDBIT      EQU 3
RXDPORT     EQU PTCD
RXDBIT      EQU 5
   ENDIF


BOOT_SIG_ENA EQU     1        ; ENABLE BOOTLOADER ON PIN SIGNAL

  IF BOOT_SIG_ENA = 1 

BOOTDDR      EQU     PTGDD
BOOTPORT     EQU     PTGD
BOOTBIT      EQU     3

BOOTPIN_CHECKCNT EQU 100
BOOTPIN_CHECKCNT_MIN EQU 90

  ENDIF
  
RCS_ENA      EQU     1        ; READ COMMAND SUPPORTED?

  IF RCS_ENA = 1
RCS          EQU     $80      ; READ COMMAND SUPPORTED
  ELSE
RCS          EQU     0        ; READ COMMAND unSUPPORTED
  ENDIF

VER_NUM      EQU     2        ; FC protocol version number

IDENTS      MACRO

         IF FAMILY = 0
         DC.B   'AW'
          ENDIF

         IF FAMILY = 1
         DC.B   'AC'
         ENDIF

          IF SIZE = 8
            DC.B     '8'     ; 8kb string
          ENDIF
          IF SIZE = 16
            DC.B     '16'    ; 16kb string
          ENDIF
          IF SIZE = 32
            DC.B     '32'    ; 32kb string
          ENDIF
          IF SIZE = 48
            DC.B     '48'    ; 48kb string
          ENDIF
          IF SIZE = 60
            DC.B     '60'    ; 60kb string
          ENDIF

          IFDEF IRQOPTION
            DC.B     '-irq'     ; IRQ option used
          ENDIF

            DC.B    0
            ENDM

ERBLK_LEN    EQU      512
WRBLK_LEN    EQU      64      


   IF FAMILY = 0           ; AW family
REL_VECT     EQU      $FDCC   ; newly relocated int. vectors
INT_VECT     EQU      $FFCC   ; start of table of original vectors
   ENDIF


   IF FAMILY = 1           ; AC family
REL_VECT     EQU      $FDC6   ; newly relocated int. vectors
INT_VECT     EQU      $FFC6   ; start of table of original vectors
   ENDIF


          IF SIZE = 8
FLS_BEG      EQU      $E000       ; FLASH #0 block start
FLS_END      EQU      REL_VECT    ; FLASH #0 block end
        ENDIF

          IF SIZE = 16
FLS_BEG      EQU      $C000       ; FLASH #0 block start
FLS_END      EQU      REL_VECT    ; FLASH #0 block end
        ENDIF

          IF SIZE = 32
FLS_BEG      EQU      $8000       ; FLASH #0 block start
FLS_END      EQU      REL_VECT    ; FLASH #0 block end
        ENDIF

          IF SIZE = 48
FLS_BEG      EQU      $4000       ; FLASH #0 block start
FLS_END      EQU      REL_VECT    ; FLASH #0 block end
        ENDIF

          IF SIZE = 60
FLS_BEG      EQU      $0870       ; FLASH #0 block start
FLS_END      EQU      $1800       ; FLASH #0 block end
FLS_BEG1     EQU      $1860       ; FLASH #1 block start
FLS_END1     EQU      REL_VECT    ; FLASH #1 block end
        ENDIF
         

         XDEF   main
;*******************************************************************************************
  
WR_DATA     EQU       'W'
RD_DATA     EQU       'R'
ENDPRG      EQU       'Q'
ERASE       EQU       'E'
ACK         EQU       $FC
IDENT       EQU       'I'

T100MS      EQU       255

ILOP        MACRO
            DC.B    $8d             ; this is illegal operation code
            ENDM
;*******************************************************************************************
MY_ZEROPAGE:   SECTION  SHORT

ADRS:       DS.W   1
ADRR:       DS.W   1
LEN:        DS.B   1
STAT:       DS.B   1
STACK:      DS.W   1

DEFAULT_RAM:    SECTION

DATA:       DS.B   WRBLK_LEN

;*******************************************************************************************
DEFAULT_ROM:   SECTION
     
ID_STRING:
          IF (SIZE = 8) || (SIZE = 16) || (SIZE = 32) || (SIZE = 48)
            DC.B   1            ; number of Flash blocks
            DC.W   FLS_BEG         ; START ADDRESS OF FLASH   
            DC.W   FLS_END         ; END ADDRESS OF FLASH   
        ENDIF
          IF SIZE = 60
          DC.B   2                 ; number of Flash blocks
            DC.W   FLS_BEG         ; START ADDRESS OF FLASH   
            DC.W   FLS_END         ; END ADDRESS OF FLASH   
            DC.W   FLS_BEG1        ; START ADDRESS OF FLASH #2
            DC.W   FLS_END1        ; END ADDRESS OF FLASH    #2
        ENDIF        
            DC.W   REL_VECT       ; POINTER TO APPLICATION VECTOR TABLE
            DC.W   INT_VECT       ; POINTER TO BEGINING OF FLASH INT. VECTORS
            DC.W   ERBLK_LEN      ; ERASE BLCK LENGTH OF FLASH ALG.
            DC.W   WRBLK_LEN      ; WRITE BLCK LENGTH OF FLASH ALG.

      IDENTS
ID_STRING_END:

;*******************************************************************************************
        XDEF    MY_NVPROT      ; externed
        
NVPROT_ROM:      SECTION
MY_NVPROT   DC.B   $FC        ; fpopen, flash protected (from 0xFE00) 

        XDEF    MY_NVOPT      ; externalized

NVOPT_ROM:      SECTION
MY_NVOPT    DC.B   %10000010   ; backdoor enable, redirection enable, (un)secured flash [last 10]

DEFAULT_ROM:    SECTION
;*******************************************************************************************
main:
         MOV      #$80, ICGTRM         ; trim to middle (+-25%) so our trim will work OK

    IFDEF IRQOPTION
         BIH      PVEC0                   ; if IRQ high, jump directly to real app.
    ENDIF
         LDA      SRS                     ; fetch RESET status reg.
         TSTA                             ; check if zero (this happens if RESET pulse is too short)
         BEQ      slfprg                  ; if so, jump to self programming                
         AND      #%10000000              ; mask only POR RESET source      
         BNE      slfprg                  ; any of these sources, go to self programming
PVEC0:        
         LDHX     #(REL_VECT|$00FF)&$FFFE   ; there should be relocated reset vector of the new app.
         LDA      ,X
         PSHA
         AND      1,X
         LDX      1,X
         PULH
         INCA
         BEQ      slfprg                ; don't jump if empty vector!
         JMP      ,X                    ; jump to relocated application!

slfprg:        
         LDA      #%00000010
         STA      SOPT                     ; COP disable, BDM enable (for now)
         MOV      #%00001000,ICGC1      ; FEI mode

     IFNDEF HISPEED
         MOV      #%00000001,ICGC2      ; N=4,R=2, f(ICGOUT)=f(IRG)/7*64*4/2=4.4434MHz (10% off reqd' 4.9152MHz)
     ELSE
         MOV      #%00010000,ICGC2      ; N=6,R=2, f(ICGOUT)=f(IRG)/7*64*6/1=13.330MHz (10% off reqd' 14.7456MHz)
     ENDIF
                                ; f(BUS)=f(ICGOUT)/2
     
LOOP:    BRCLR    ICGS1_LOCK,ICGS1,LOOP         ; wait until ICG stable       
        
         LDA      FSTAT
         ORA      #mFSTAT_FACCERR                            
         STA      FSTAT               ; clear any FACCERR flag

     IFNDEF HISPEED
         LDA      #%00001101            ; div by 13 to fit into 150-200kHz Flash clock!
     ELSE
         LDA      #36                      ; div by 36+1 to fit into 150-200kHz Flash clock!
     ENDIF
         STA      FCDIV
        
         BSET     TXDBIT,TXDPORT
         BSET     TXDBIT,TXDDDR           ; TxD high when SCI disabled        

         MOV      #%00001100,SCC2        ; transmit & receive enable
         CLR      SCIBDH

     IFNDEF HISPEED
         MOV      #16, SCIBDL            ; BUS (2.4576M)/(16 * 16) = 9600Bd
     ELSE
         MOV      #4, SCIBDL            ; BUS (7.3728M)/(16 * 4) = 115200Bd
     ENDIF
         CLR      SCC3

         LDA      SCS1
         MOV      #ACK,SCDR


    IF BOOT_SIG_ENA = 1
                              ; PIN SIGNAL MODE OF BOOTLOADER STARTUP
    
         BCLR     BOOTBIT,BOOTDDR   ; SET THE BOOT ENABLE PIN TO INPUT
         CLRA                      ; CLEAR CHECK COUNTER
         LDX      BOOTPIN_CHECKCNT
BOOT_L1:
    
         BRSET    BOOTBIT,BOOTPORT,BOOT_NOSIG 
    
         INCA
    
BOOT_NOSIG:    
    
         DBNZX    BOOT_L1    
         CMPA     BOOTPIN_CHECKCNT_MIN
         BLE      ILOP

BOOT_L2:
         BRSET    RDRF,SCS1,CAUGHT
         JMP      BOOT_L2
                                  
    ELSE
                              ; STANDARD MODE OF BOOTLOADER STARTUP
         LDX      #T100MS
L2:      CLRA
L1:      BRSET    RDRF,SCS1,CAUGHT
         DBNZA    L1
         DBNZX    L2
         
    ENDIF
         
ILOP:
;       timeout
         ILOP          ; generate RESET by doing illegal operation
;*******************************************************************************************
CAUGHT:         ; CAUGHT IN SELF-PROGRAMMING?
         BSR      READ
         CLR      SCC2               ; disable SCI
         JSR      ICGTRIM            ; go & trim
         MOV      #%00001100,SCC2 ; transmit & receive enable

;*******************************************************************************************
; successful return from all write routines
SUCC:
         LDA      #ACK
         BSR      WRITE

;fall thru to background
;*******************************************************************************************
; BEGIN OF BACKGROUND COMMAND LOOP
BCKGND:
         BSR      READ
            
         CBEQA    #ERASE, ERASE_COM       ; Erase command
         CBEQA    #WR_DATA, WR_DATA_COM   ; Write (program) command
         CBEQA    #IDENT, IDENT_COM       ; Ident command
       IF RCS_ENA = 1
         CBEQA    #RD_DATA, RD_DATA_COM   ; Read command
       ENDIF

             ; if no valid command found (including Quit)
             ; generate reset too!
         ILOP          ; generate RESET by doing illegal operation
        
;*******************************************************************************************
IDENT_COM:                      ; TRANSFER OF IDENTIFICATION STRING
         LDA      #(VER_NUM | RCS)  ; version number & "Read command supported" flag
         BSR      WRITE
         LDA      SDIDH         ; system device identification 1 register (high)
         BSR      WRITE
         LDA      SDIDL         ; system device identification 1 register (low)
         BSR      WRITE

         MOV      #ID_STRING_END-ID_STRING, LEN
         LDHX     #ID_STRING
         BSR      WRITE_LOOP
                   
         BRA      BCKGND          ; finish without ACK
;*******************************************************************************************
WRITE_LOOP:             ; start address in HX, length in LEN
         LDA      ,X
         BSR      WRITE
         AIX      #1
         DBNZ     LEN, WRITE_LOOP
         RTS
;*******************************************************************************************
  IF RCS_ENA = 1
RD_DATA_COM:

         BSR      READ
         STA      ADRS
         BSR      READ
         STA      ADRS+1
         BSR      READ
         STA      LEN
         LDHX     ADRS
             
         BSR      WRITE_LOOP

         BRA      BCKGND          ; finish without ACK
  ENDIF

;*******************************************************************************************
WRITE:   
         BRCLR    TC,SCS1,WRITE
         STA      SCDR
         RTS
READ:
         BRCLR    RDRF,SCS1,READ
         LDA      SCDR
         RTS

;*******************************************************************************************
ERASE_COM:
         BSR      READ
         STA      ADRS
         BSR      READ
         STA      ADRS+1

         lda      #(mFSTAT_FPVIOL+mFSTAT_FACCERR) ;mask
         sta      FSTAT             ;abort any command and clear errors

         mov      #LOW(EraseSubSize), STAT   ;length of flash erase routine to STAT
         tsx
         sthx     STACK
         ldhx     #EraseSubEnd-1       ;point at last byte to move to stack

         bra      DoOnStack          ;execute prog code from stack RAM
;*******************************************************************************************
WR_DATA_COM:
         BSR      READ
         STA      ADRS
         BSR      READ
         STA      ADRS+1
         BSR      READ
         STA      STAT
         STA      LEN
         LDHX     #DATA
         STHX     ADRR
WR_DATA_L1:
         BSR      READ
         STA      ,X
         AIX      #1
         DBNZ     STAT,WR_DATA_L1
           
         lda      #(mFSTAT_FPVIOL+mFSTAT_FACCERR) ;mask
         sta      FSTAT             ;abort any command and clear errors

         mov      #LOW(ProgSubSize), STAT   ;length of flash prog routine to STAT
         tsx
         sthx     STACK
         ldhx     #ProgSubEnd-1      ;point at last byte to move to stack

;      bra    DoOnStack          ;execute prog code from stack RAM
      ; fallthru to this routine
;*******************************************************************************************
DoOnStack: 
         lda      ,x             ;read from flash
         psha                ;move onto stack
         aix      #-1          ;next byte to move
         dbnz     STAT, DoOnStack
         tsx                ;point to sub on stack
         jmp      ,x             ;execute the sub on the stack (will return on it's own)      
;*******************************************************************************************
EraseSub:    
         ldhx     ADRS          ;get flash address
         sta      0,x          ;write to flash; latch addr and data
         lda      #mPageErase    ;get flash command
         sta      FCMD          ;write the flash command
         lda      #mFSTAT_FCBEF       ;mask to initiate command
         sta      FSTAT          ;[pwpp] register command
         nop                 ;[p] want min 4~ from w cycle to r
ChkDoneErase: 
         lda      FSTAT          ;[prpp] so FCCF is valid
         lsla                 ;FCCF now in MSB
         bpl      ChkDoneErase    ;loop if FCCF = 0

         ldhx     STACK
         txs
         jmp      SUCC          ;refer status back to PC
EraseSubEnd: 
EraseSubSize: equ (*-EraseSub)
;*******************************************************************************************
ProgSub:    
         lda      FSTAT          ;check FCBEF
         and      #mFSTAT_FCBEF      ;mask it
         beq      ProgSub         ;loop if not empty
         
         ldhx     ADRR
         lda      0,x
         aix      #1
         sthx     ADRR
         
         ldhx     ADRS          ;get flash address
         sta      0,x          ;write to flash; latch addr and data
         aix      #1
         sthx     ADRS
         
         lda      #mBurstProg    ;get flash command
         sta      FCMD          ;write the flash command
         lda      #mFSTAT_FCBEF       ;mask to initiate command
         sta      FSTAT          ;[pwpp] register command
         dbnz     LEN,ProgSub      ;all bytes in a row?
ChkDoneProg: 
         lda      FSTAT          ;[prpp] so FCCF is valid
         lsla                 ;FCCF now in MSB
         bpl      ChkDoneProg    ;loop if FCCF = 0
         
         ldhx     STACK
         txs
         jmp      SUCC          ;refer status back to PC
ProgSubEnd: 
ProgSubSize: equ (*-ProgSub)
;*******************************************************************************************
ICGTRIM:
         CLRX
         CLRH
MONRXD:
         BRSET    RXDBIT,RXDPORT,MONRXD    ; WAIT FOR BREAK SIGNAL TO START
CHKRXD:
         BRSET    RXDBIT,RXDPORT,BRKDONE   ; (5) GET OUT OF LOOP IF BREAK IS OVER
         AIX      #1              ; (2) INCREMENT THE COUNTER
         BRA      CHKRXD          ; (3) GO BACK AND CHECK SIGNAL AGAIN
BRKDONE:
         PSHH
         PULA                    ; PUT HIGH BYTE IN ACC AND WORK WITH A:X

       IFDEF HISPEED
         LSLA
         ROLX
         LSLA
         ROLX   ; mul by 4 since we're 4 times slower
       ENDIF

         TSTA                    ; IF MSB OF LOOP CYCLES = 0, THEN BREAK TAKES TOO
         TXA                     ; FEW CYCLES THAN EXPECTED, SO TRIM BY SPEEDING
         BEQ      SLOW            ; UP f OP .
FAST:   
         CMP      #$40            ; SEE IF BREAK IS WITHIN TOLERANCE
         BGE      OOR             ; DON'T TRIM IF OUT OF RANGE
         ASLA                     ; multiply by two to get right range
         ADD      #$80            ; BREAK LONGER THAN EXPECTED, SO SLOW DOWN f OP
         BRA      ICGDONE
SLOW:   
         CMP      #$C0            ; SEE IF BREAK IS WITHIN TOLERANCE
         BLT      OOR             ; DON'T TRIM IF OUT OF RANGE
         ASLA                     ; multiply by two to get right range
         SUB      #$80
ICGDONE:
         STA      ICGTRM
OOR:
         RTS
;*******************************************************************************************
END            
