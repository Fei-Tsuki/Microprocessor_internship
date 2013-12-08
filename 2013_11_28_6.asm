;****************************************
;*		Branch and Jump		*
;****************************************

; Branch and Jump	
;	JZ  : Jump if ZF = 1 ( A = 0 )
;  	JNZ : Jump if ZF = 0 ( A != 0 )

CSEG	AT	00H
	MOV	A,#2	; A = 2
	CLR	A	; A = 0
	JZ	L1	; A = 0 ,so jump to L1
	INC	A	
L1:	INC	A	; A = A + 1	; A = 1
	RET
; P.S  If we change JZ to JNZ ,then the final result is 2	
	END
 
