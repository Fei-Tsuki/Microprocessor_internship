;*=========================================*
;*	    	Arithmetic	   	   *
;*=========================================*

CSEG	AT	00H
	MOV	A,#0FFH		; A = FF
	ADD	A,#02H		; A = FF + 02 = 01   C = 1	
	CLR	A		; flush the Accumulator
	; P.S Prevent the impact of the back calculation
	ADDC	A,#03H		; A = 03 + C  = 04	;
	ADD	A,#04H		; A = 04 + 04 = 08
	RET
	END
