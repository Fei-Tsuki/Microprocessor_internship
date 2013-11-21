;*=========================================*
;*	 Special purpose registers(PSW)	   *
;*=========================================*

;  Change the Regester in different Method
;  Watch the PSW / RS0 / RS1  delta at process

CSEG 	AT 	00H
	MOV	A,#0		; input 0 to A
	SETB	PSW.3		; PSW = 08  RS0 = 1  RS1 = 0 
	SETB	PSW.4		; PSW = 18  RS0 = 1  RS1 = 1  
	; P.S  Now,it's Function is the same of the Method "USING"
	MOV	R0,#1		   
	; P.S  Use this Method , you can to use R0 directly ,not AR0
	RET
	
	END	
