;****************************************
;*		Arithmetic		*
;****************************************

DSEG	AT	30H
	RESULT:	DS	1
CSEG	AT	00H
	MOV	R2,#5		; R2 <- 5
	CLR	A		; A <- 0
L1:	ADD	A,R2		; A <- A + R2
	DEC	R2		; R2 <- R2 -1
	CJNE	R2,#0,L1	; IF R2 != 0 JUMP L1
	MOV	RESULT,A	
	RET
	END
