;*=========================================*
;*	Special purpose registers(PSW)	   *
;*=========================================*

;  watch the P / PSW / ACC  delta at process

CSEG 	AT 	00H
	MOV	A,#0		; input 0 to A
	INC	A		; PSW = 01  P = 1  ACC = 01  
	INC	A		; PSW = 01  P = 1  ACC = 02  
	INC	A		; PSW = 00  P = 0  ACC = 03  
	MOV	A,#001000B	; PSW = 01  P = 1  ACC = 08  
	DEC	A		; PSW = 01  P = 1  ACC = 07  
	RET
	
	END	
