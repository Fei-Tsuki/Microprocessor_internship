;****************************************
;*		Arithmetic		*
;****************************************

; THE ARITHMETIC OF MULTIPLY

CSEG	AT	00H
	MOV	A,#3	; A = 3
	MOV	B,#4	; B = 4
	MUL	AB	; A * B = 12 = 0C H
	; P.S  Because result not > 255 ,so A = 0C H; B = 00 H
	
	MOV	A,#100	; A = 100
	MOV	B,#3	; B = 4
	MUL	AB	; A * B = 100 = 012C H
	; P.S 	Because result > 255 ,so A = 2C H; B = 01 H
	;	Put the overflow of the value into register B
	
	RET
	END
