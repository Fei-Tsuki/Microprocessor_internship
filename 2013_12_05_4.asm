;****************************************
;*		Arithmetic		*
;****************************************

CSEG	AT	00H
	MOV	R2,#5		; R2 = 5
	CLR	A		; A = 0
L1:	
	INC	A		; A = A + 1
	DJNZ	R2,L1	; IF (R2-1) != 0 JUMP L1
	RET
	END
