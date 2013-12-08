;****************************************
;*		Arithmetic		*
;****************************************

DSEG	AT	30H
	RESULT:	DS	1
CSEG	AT	00H
	CLR	A		; A <- 0
L1:	INC	A		; A <- A + 1
	CJNE	A,#3,L1		; IF A != 3 , JUMP L1
				; IF A < 3 , C <- 1 ELSE C <- 0
	MOV	RESULT,A	; MOVE A TO RESULT
	RET
	END
