;****************************************
;*		Arithmetic		*
;****************************************

DSEG	AT	30H
	RESULT:	DS	1
CSEG	AT	00H
	MOV	R2,#10		; R2 <- 10
	CLR	A		; A = 0
L1:	
	ADD	A,R2		; A <- A + R2
	DEC	R2		; R2 <- R2 -1
	DJNZ	R2,L1	; IF (R2-1) != 0 JUMP L1
	MOV	RESULT,A	
	RET
	END
