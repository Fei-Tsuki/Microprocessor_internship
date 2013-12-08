;****************************************
;*		Branch and Jump		*
;****************************************

; Branch and Jump	
;	JC  : Jump if C (CY) = 1 
;	JNC : Jump if C (CY) != 1 (0)  

CSEG	AT	00H
	MOV	B,#0		; B <- 0 
	MOV	A,#0F0H		; A <- F0 H
	ADD	A,#11H		; A = A + 11 H = 0101 H ; CY = 1
	JC	L1		
	INC	B
L1:	INC	B		; B = B + 1 = 1
	RET
; P.S  If we change JC to JNC ,then the final result is 2
	END
