
	 #include <p16f648a.inc>

    	__CONFIG _WDT_OFF & _PWRTE_OFF & _INTOSC_OSC_NOCLKOUT & _MCLRE_ON & _BOREN_OFF & _LVP_OFF & _DATA_CP_OFF & _CP_OFF

	__IDLOCS 0x1234

	CBLOCK 0X20
	_B
	_C
        _D
	ENDC


	ORG 0x2100
a1	DE  05,06,07,08

 	ORG 0x00
	NOP
start:  MOVLW 0x07
	MOVWF CMCON
	BANKSEL TRISB
	MOVLW B'00000000'
	MOVWF TRISB
	MOVWF TRISA
	BANKSEL PORTB
	CLRF PORTB
	INCF PORTB,F
LOOP:	CALL DELAY
	RLF PORTB,F
	BTFSC STATUS,Z
	INCF PORTB,f
	MOVF	PORTB,W
	MOVWF	PORTA
	NOP
	NOP
	GOTO LOOP

DELAY	MOVLW  0X02
	MOVWF  _D
DELAY_	DECFSZ _B,F
	GOTO DELAY_	
	DECFSZ _C,F
	GOTO DELAY_
	DECFSZ _D,F
	GOTO DELAY_
	RETURN
	END
