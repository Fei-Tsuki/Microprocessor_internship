;****************************************
;*		Arithmetic		*
;****************************************

DSEG	AT	30H
	W:	DS	1
	X:	DS	1
	Y:	DS	1
	Z:	DS	1

CSEG	AT	00H
	MOV	W,#7
	MOV	Z,#1
	MOV	X,#5	; (Previous)
	MOV	Y,#6	
	MOV	A,W	; A <- W = 7
	MOV	B,X	; B <- X = 5
	MUL	AB	; A = A * B = 7 * 5 = 23 H	
	MOV	X,A	; X <- A = 23 H  (Current)
	
	
	MOV	A,Z	; A <- Z = 1
	ADD	A,Y	; A - A + Y = A + 6 = 7
	MOV	B,A	; B <- A = 7
	MOV	A,X	; A <- X = 23 H  
	DIV	AB	; A / B = 05 
	RET
	END
