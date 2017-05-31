;*********************************************************************
; HEADER_START
;
;        $File Name: slfprg-s08elsl.asm$
;      Project:        Developper's HC08 Bootloader Slave
;      Description:    S08EL/SL main bootloader file
;      Platform:       HCS08
;      $Version: 9.0.11.0$
;      $Date: Sep-14-2012$ 
;      $Last Modified By: r30323$
;      Company:        Freescale Semiconductor
;      Security:       General Business
;
; =================================================================== 
; Copyright (c):      Freescale Semiconductor, 2008, All rights reserved.
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

; labels SIZE, FAMILY and IRQOPTION defined externally:
; SIZE = 8, 16, 32 depending whether what memory size of EL/SL family is required
; FAMILY = 0 EL family, FAMILY = 1 SL family
; 
; IRQOPTION *NOT* defined >> regular version
; IRQOPTION defined >> regular version using IRQ option (bootloading won't start if IRQ high)
;
; label HISPEED => if defined, 38400Bd is used instead of 9600Bd

    include "mc9s08el32.inc"

;!!!;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;!!!
;!!!   This S08EL/SL bootloader requires hc08sprg.exe of version 9.0.37.0 or higher
;!!!
;!!!;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


RCS_ENA     EQU     1        ; READ COMMAND SUPPORTED?

  IF RCS_ENA = 1
RCS         EQU     $80      ; READ COMMAND SUPPORTED
  ELSE
RCS         EQU     0        ; READ COMMAND unSUPPORTED
  ENDIF

VER_NUM     EQU     $06      ; FC protocol version number (S08 long)

IDENTS      MACRO

          IF FAMILY = 0  ; EL
            DC.B   'EL'
          ENDIF

          IF FAMILY = 1  ; SL
            DC.B   'SL'
          ENDIF

          IF SIZE = 32
            DC.B     '32'   ; 32kb string
          ENDIF
          IF SIZE = 16
            DC.B     '16'   ; 16kb string
          ENDIF
          IF SIZE = 8
            DC.B     '8'    ; 8kb string
          ENDIF

          IFDEF IRQOPTION
            DC.B     '-irq'     ; IRQ option used
          ENDIF

            DC.B    0
            ENDM

ERBLK_LEN   EQU      512
WRBLK_LEN   EQU      64      

ADDR24  MACRO
          DC.B  (\1) / $10000
          DC.W  (\1) & $0FFFF
        ENDM


          IF SIZE = 32
FLS_BEG     EQU    $8000   ; FLASH #0 block start
        ENDIF

          IF SIZE = 16
FLS_BEG     EQU    $C000   ; FLASH #0 block start
        ENDIF

          IF SIZE = 8
FLS_BEG     EQU    $E000   ; FLASH #0 block start
        ENDIF

          IF FAMILY = 0  ; EL
EEP_BEG     EQU    $1700   ; EEPROM page 0 start
          ENDIF

          IF FAMILY = 1  ; SL
EEP_BEG     EQU    $1780   ; EEPROM page 0 start
          ENDIF

EEP_END     EQU    $1800   ; EEPROM page 0 end
                           ; EEPROM page 1 is $10000 higher
   
FLS_END     EQU    $FBC0   ; FLASH #0 block end
REL_VECT    EQU    $FBC0   ; newly relocated int. vectors


INT_VECT    EQU    $FFC0   ; start of table of original vectors!


F_ICSTRM    equ    $FFAF
F_ICSFTRM   equ    $FFAE

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

ADRH:    DS.B   1
ADRS:    DS.W   1
ADRR:    DS.W   1
LEN:     DS.B   1
STAT:    DS.B   1
STACK:   DS.W   1

DEFAULT_RAM:    SECTION

DATA:     DS.B   WRBLK_LEN

;*******************************************************************************************
DEFAULT_ROM:   SECTION
     
ID_STRING:
        DC.B   3                 ; number of memory blocks
         ADDR24   FLS_BEG        ; START ADDRESS OF FLASH   
         ADDR24   FLS_END        ; END ADDRESS OF FLASH                                                                      
         ADDR24   EEP_BEG        ; START ADDRESS OF EEP0   
         ADDR24   EEP_END        ; END ADDRESS OF EEP0                                                                      
         ADDR24   EEP_BEG + $10000     ; START ADDRESS OF EEP1   
         ADDR24   EEP_END + $10000     ; END ADDRESS OF EEP1                                                                      
        DC.W   REL_VECT       ; POINTER TO APPLICATION VECTOR TABLE
        DC.W   INT_VECT       ; POINTER TO BEGINING OF FLASH INT. VECTORS
        DC.W   ERBLK_LEN      ; ERASE BLCK LENGTH OF FLASH ALG.
        DC.W   WRBLK_LEN      ; WRITE BLCK LENGTH OF FLASH ALG.

      IDENTS
ID_STRING_END:

       XDEF   MY_NVPROT   
       XDEF   MY_NVOPT    

;*******************************************************************************************
NVPROT_ROM:        SECTION
MY_NVPROT     DC.B   %11111101   ; flash protected (from 0xFC00), EEPROM unprotected 

NVOPT_ROM:         SECTION
MY_NVOPT      DC.B   %10100010   ; backdoor enable, redirection enable, (un)secured flash [last 10], EEPROM 8 byte page

DEFAULT_ROM:       SECTION
;*******************************************************************************************
main:
    IFDEF IRQOPTION
          BIH      PVEC0                   ; if IRQ high, jump directly to real app.
    ENDIF
          LDA      SRS                     ; fetch RESET status reg.
          TSTA                            ; check if zero (this happens if RESET pulse is too short)
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
          BEQ      slfprg                 ; don't jump if empty vector!
          JMP      ,X                      ; jump to relocated application!

slfprg:        
          LDA      F_ICSTRM
          STA      ICSTRM

          LDA      F_ICSFTRM
          ORA      ICSSC
          STA      ICSSC

          LDA      #%00000010
          STA      SOPT1                  ; COP disable, BDM enable (for now)

          MOV      #%01000000,ICSC2   ; bus divide :2, ie bus = 8MHz

           ; f(BUS)=f(ICGOUT)/2
     
          LDA      FSTAT
          ORA      #mFSTAT_FACCERR                            
          STA      FSTAT                   ; clear any FACCERR flag

          LDA      #(mFCDIV_PRDIV8 + 4) ; div by 8*(4+1) to fit into 150-200kHz Flash clock!
          STA      FCDIV
        
          MOV      #%00001100,SCIC2  ; transmit & receive enable
          CLR      SCIBDH

     IFNDEF HISPEED
          MOV      #52, SCIBDL           ; BUS (8.0M)/(16 * 52) = 9600Bd
     ELSE
          MOV      #13, SCIBDL            ; BUS (8.0M)/(16 * 4) = 38400Bd
     ENDIF
          CLR      SCIC3

; OPTIONAL DELAY - if your RS232 hardware is lazy, uncomment following delay

;        CLRX
;DLY2:   CLRA
;DLY1:   NOP
;        
;        DBNZA     DLY1
;        DBNZX     DLY2
;

          LDA      SCIS1
          MOV      #ACK,SCID

          LDX      #T100MS
L2:       CLRA
L1:       BRSET    SCIS1_RDRF,SCIS1,CAUGHT
          DBNZA    L1
          DBNZX    L2
ILOP:
;       timeout
          ILOP          ; generate RESET by doing illegal operation
;*******************************************************************************************
CAUGHT:         ; CAUGHT IN SELF-PROGRAMMING?
          BSR      READ
          CBEQA    #ACK, SUCC       ; Got ACK!

          ILOP          ; generate RESET by doing illegal operation
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
IDENT_COM:                       ; TRANSFER OF IDENTIFICATION STRING
          LDA      #(VER_NUM | RCS) ; version number & "Read command supported" flag
          BSR      WRITE
          LDA      SDIDH                ; system device identification 1 register (high)
          BSR      WRITE
          LDA      SDIDL                ; system device identification 1 register (low)
          BSR      WRITE

          MOV      #ID_STRING_END-ID_STRING, LEN
          LDHX     #ID_STRING
          BSR      WRITE_LOOP
                 
          BRA      BCKGND           ; finish without ACK
;*******************************************************************************************
WRITE_LOOP:             ; start address in HX, length in LEN
          LDA      ,X
          BSR      WRITE
          AIX      #1
          DBNZ     LEN, WRITE_LOOP
          RTS
;*******************************************************************************************
EECHECK: 
          DBNZA    EPAGE0
          LDA      #mFCNFG_EPGSEL        
          BRA      ECFG
EPAGE0:   CLRA     
ECFG:     STA      FCNFG        
          RTS
;*******************************************************************************************
      IF RCS_ENA = 1
RD_DATA_COM:

          BSR      READ
          STA      ADRH   
          BSR      EECHECK   
          BSR      READ
          STA      ADRS
          BSR      READ
          STA      ADRS+1
          BSR      READ
          STA      LEN
          LDHX     ADRS
          BSR      WRITE_LOOP
          BRA      BCKGND              ; finish without ACK
      ENDIF

;*******************************************************************************************
WRITE:   
          BRCLR    SCIS1_TC,SCIS1,WRITE
          STA      SCID
          RTS
READ:
          BRCLR    SCIS1_RDRF,SCIS1,READ
          LDA      SCID
          RTS

;*******************************************************************************************
ERASE_COM:
          BSR      READ
          STA      ADRH
          BSR      EECHECK   
          BSR      READ
          STA      ADRS
          BSR      READ
          STA      ADRS+1

          LDHX     ADRS           ; any EEPROM page?
          CPHX     #EEP_END
          
          BLS      E_EEPROM         ; if $EEP_END >= ADRS (ie. EEPROM)

          lda      #(mFSTAT_FPVIOL+mFSTAT_FACCERR) ;mask
          sta      FSTAT                   ;abort any command and clear errors

          mov      #LOW(EraseSubSize), STAT   ;length of flash erase routine to STAT
          tsx
          sthx     STACK
          ldhx     #EraseSubEnd-1        ;point at last byte to move to stack

          bra      DoOnStack              ;execute prog code from stack RAM
;*******************************************************************************************
WR_DATA_COM:
          BSR      READ
          STA      ADRH
          BSR      EECHECK   
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
          sta      FSTAT                   ;abort any command and clear errors
          mov      #LOW(ProgSubSize), STAT   ;length of flash prog routine to STAT
          tsx
          sthx     STACK
          ldhx     #ProgSubEnd-1          ;point at last byte to move to stack

;      bra    DoOnStack          ;execute prog code from stack RAM
;      fallthru to this routine
;*******************************************************************************************
DoOnStack: 
          lda      ,x             ;read from flash
          psha                    ;move onto stack
          aix      #-1          ;next byte to move
          dbnz     STAT, DoOnStack
          tsx                    ;point to sub on stack
          jmp      ,x             ;execute the sub on the stack (will return on it's own)      
;*******************************************************************************************
;*******************************************************************************************
E_EEPROM:         
          STA      ,X      ;latch the unprotected address from H:X
          NOP              ;brief delay to allow the command state machine to start
          STA      ,X      ;intentionally cause an access error to abort this command          
        ; see errata
        
          lda      #(mFSTAT_FPVIOL+mFSTAT_FACCERR) ;mask
          sta      FSTAT                   ;abort any command and clear errors

          sta      0,x              ;write to flash; latch addr and data
          lda      #mPageErase      ;get flash command
          sta      FCMD             ;write the flash command
          lda      #mFSTAT_FCBEF    ;mask to initiate command
          sta      FSTAT            ;[pwpp] register command
          nop                       ;[p] want min 4~ from w cycle to r
ChkDoneEErase: 
          lda      FSTAT            ;[prpp] so FCCF is valid
          lsla                      ;FCCF now in MSB
          bpl      ChkDoneEErase    ;loop if FCCF = 0
          aix      #8
          cphx     #EEP_END
          blo      E_EEPROM
        
          jmp      SUCC           ;refer status back to PC
;*******************************************************************************************
;*******************************************************************************************
EraseSub:    
          ldhx     ADRS             ;get flash address
          sta      0,x             ;write to flash; latch addr and data
          lda      #mPageErase  ;get flash command
          sta      FCMD             ;write the flash command
          lda      #mFSTAT_FCBEF       ;mask to initiate command
          sta      FSTAT           ;[pwpp] register command
          nop                       ;[p] want min 4~ from w cycle to r
ChkDoneErase: 
          lda      FSTAT           ;[prpp] so FCCF is valid
          lsla                       ;FCCF now in MSB
          bpl      ChkDoneErase ;loop if FCCF = 0

          ldhx     STACK
          txs
          jmp      SUCC           ;refer status back to PC
EraseSubEnd: 
EraseSubSize: equ (*-EraseSub)
;*******************************************************************************************
ProgSub:    
          lda      FSTAT             ;check FCBEF
          and      #mFSTAT_FCBEF    ;mask it
          beq      ProgSub            ;loop if not empty
          
          ldhx     ADRR
          lda      0,x
          aix      #1
          sthx     ADRR
          
          ldhx     ADRS               ;get flash address
          sta      0,x               ;write to flash; latch addr and data
          aix      #1
          sthx     ADRS
          
          lda      #mBurstProg     ;get flash command
          sta      FCMD               ;write the flash command
          lda      #mFSTAT_FCBEF  ;mask to initiate command
          sta      FSTAT             ;[pwpp] register command
          dbnz     LEN,ProgSub       ;all bytes in a row?
ChkDoneProg: 
          lda      FSTAT             ;[prpp] so FCCF is valid
          lsla                         ;FCCF now in MSB
          bpl      ChkDoneProg     ;loop if FCCF = 0
          
          ldhx     STACK
          txs
          jmp      SUCC             ;refer status back to PC
ProgSubEnd: 
ProgSubSize: equ (*-ProgSub)
;*******************************************************************************************
END            

