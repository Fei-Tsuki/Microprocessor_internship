;~T24G2;
;***********************************************************
; Function name : 	LED-2.asm
; Feature 	: 	Advertising lights~Single Light runs to Right
; Explanation 	: 	Use shift instruction produced advertising lights
; Switch Settings : 	Not
;***********************************************************

        ORG     00H
        JMP     START
        ORG     30H
START:
        MOV     R0,#0           ; P0 dataRegester clear to 0
        MOV     R1,#0           ; P1 dataRegester clear to 0
        MOV     R2,#0           ; P2 dataRegester clear to 0
        MOV     R3,#0	        ; P3 dataRegester clear to 0

 ;================= turn off all the LED =====================
        MOV     P0,R0           
        MOV     P1,R1           
        MOV     P2,R2           
        MOV     P3,R3           
        CLR  	C
 ;============================================================

REPEAT:
;       MOV   R0,#0
;       MOV   R1,#0
;       MOV   R2,#0
;       MOV   R3,#0
;       MOV   P0,R0
;	MOV   A,R0
	MOV   R4,#0		;test  the DJNZ ,the Situation of R4 is 0.


GO:	DJNZ   R4,GO
	
	MOV   R4,#4
	
 ;============================================================== 	
CONT1:
	    
	MOV 	A,R0
;       DEC     A
        RLC     A
        RLC     A
        INC     A
        MOV     R0,A
        MOV     P0,A
        DEC	A
        CALL    DELAY
 	DJNZ    R4,CONT1
	MOV     R4,#4
 ;==============================================================       
 CONT2: 
            
	MOV 	A,R1
        ;DEC     A
        RLC     A
        RLC     A
        INC     A
        MOV     R1,A
        MOV     P1,A
        DEC	A
        CALL    DELAY
 	DJNZ    R4,CONT2
	MOV     R4,#4
 ;==============================================================       
 CONT3: 
            
	MOV 	A,R2
        ;DEC     A
        RLC     A
        RLC     A
        INC     A
        MOV     R2,A
        MOV     P2,A
        DEC	A
        CALL    DELAY
 	DJNZ    R4,CONT3
	MOV     R4,#3
 ;==============================================================       
 CONT4: 
            
	MOV 	A,R3
;       DEC     A
        RLC     A
        RLC     A
        INC     A
        MOV     R3,A
        MOV     P3,A
        DEC	A
        CALL    DELAY
 	DJNZ    R4,CONT4
;	
	JMP	START


DELAY:                          ; delay of the Subroutine
        MOV     R7,#40H


D1:     MOV     R6,#0
        DJNZ    R6,$
        DJNZ    R7,D1
        RET
        END
