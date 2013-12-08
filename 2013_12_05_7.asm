;****************************************
;*		Arithmetic		*
;****************************************

DSEG	AT	30H
	ARRAY:	DS	8	; SET THE SIZE OF LOCALATE ARRAY
	LENGTH:	DS	1	; SET THE SIZE OF LOCALATE LENGTH
CSEG	AT	00H
	MOV	LENGTH,#8	; LENGTH = 8
	MOV	R2,LENGTH	; R2 = LENGTH
	MOV	R0,#ARRAY	; R0 = ARRAY'S  POSITION

L1:	MOV 	@R0,#0		; THE POSITION OF R0'S VALUE = 0
	INC	R0		; POSITION ++ 
	DJNZ	R2,L1		; IF (R2 - 1)!=0 JUMP L1
	
	
	RET
	END
