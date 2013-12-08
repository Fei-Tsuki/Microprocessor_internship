;****************************************
;*		Arithmetic		*
;****************************************

; CPL IS USED ON 1'S

CSEG	AT	00H
	MOV	A,#10101111B	; A = AF H
	CPL	A		; A = 01010000 B = 50 H
	MOV	A,#0ABH		; A = AB H
	CPL	A		; A = 01010100 B = 54H
	RET
	END
