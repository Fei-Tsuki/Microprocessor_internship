;*=========================================*
;*	    	Arithmetic	   	   *
;*=========================================*

CSEG	AT	00H
	MOV	A,#64
	SUBB	A,#46
	; P.S you have to CLR C,otherwise your result maybe error
	RET
	; P.S The Instruction about SUBB is   ANS = A - src-byte - C
	END
