;****************************************
;*		Arithmetic		*
;****************************************

DSEG	AT	30H	
	ARRAY:	DS	8	; SET THE SIZE 8 TO ARRAY
CSEG	AT	00H
	MOV	R0,#ARRAY	; R0 IS THE ADDRESS ABOUT ARRAY  '30'
	MOV	@R0,#0		; THE ADDRESS OF ARRAY CLR 0
	RET
	END
