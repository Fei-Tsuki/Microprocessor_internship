;****************************************
;*		Arithmetic		*
;****************************************

; THE ARITHMETIC OF ADD

DSEG	AT	30H
	W:	DS	1
	X:	DS	1
	Y:	DS	1
	Z:	DS	1

CSEG	AT	00H
	MOV	X,#0
	MOV	W,#1
	MOV	Y,#2
	MOV	Z,#3
	MOV	A,X
	ADD	A,W
	ADD	A,Y
	ADD	A,Z
	RET
	END
