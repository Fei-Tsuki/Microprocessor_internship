;*=========================================*
;*	    	Arithmetic	   	   *
;*=========================================*

DSEG	AT	30H	
	OPR1:	DS	1	; General location data register
CSEG	AT	00H
	MOV	A,#2		; input the value 2 into A		
	MOV	OPR1,#3		; The 30 of the data location's value input 3
	INC	A		; A = 3
	INC	OPR1		; The 30 of the data location's value add 1
	DEC	A		; A = 2
	DEC	30H		; The 30 of the data location's value subb 1
	RET
	END
