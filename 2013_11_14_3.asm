;*=========================================*
;*	    	Arithmetic	   	   *
;*=========================================*


CSEG 	AT	00H
	MOV	A,#100		; input the value 100 into A   =>   0110 0100B
	ADD	A,#155		; add the value 155 into A     => + 1001 1011B
	;P.S	100 + 155  = 255 => FFH			        ---------------
	RET						;  FF H	 =  1111 1111B
	; You can input the value on page 130 to test
	END
