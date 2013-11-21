;*=========================================*
;*	    	Arithmetic	   	   *
;*=========================================*

CSEG	AT	00H
	MOV	A,#2H	; input a value 02H into A
	CLR	C	; Clear the C to 0
	SUBB	A,#4H	; A = A - 04 - C     C = 0
	CLR	A	; flush the A
	MOV	A,#5H	; input a value 05H into A
;	P.S   Front of the number not to CLR C because it will consider borrow
	SUBB	A,#3H	; C = 1 (because behind of the value has borrow) 
	;  So A = 05 - 01 - C = 01H
	RET
	; P.S The Instruction about SUBB is   ANS = A - src-byte - C
	END
