;****************************************
;*		Arithmetic		*
;****************************************

; THE ARITHMETIC OF DIVIDE

CSEG	AT	00H
	MOV	A,#60	; A = 60
	MOV	B,#5	; B = 5
	DIV	AB	; A / B = 12 = 0C H
	; P.S BECAUSE NOT OVERFLOW ,SO A = 0C H ; B = 00
	RET
	END
