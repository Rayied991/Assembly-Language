.MODEL SMALL
.STACK 100H
.DATA         
M1 DB "Enter a Hex digit: $"
M2 DB "Decimal digit: $" 
M3 DB "NOT A VALID INPUT$"
M4 DB "Do you want to do it again? $"
.CODE
MAIN PROC

START:
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CALL NEWLINE
    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
    CMP BL,'0'
    JNGE LETTER
    CMP BL,'9'
    JNLE LETTER 
    
    MOV DL,BL
    MOV AH,2
    INT 21H
    CALL NEWLINE 
    JMP AGAIN

LETTER:
    CMP BL,'A'
    JNGE NOT_VALID
    CMP BL,'F'
    JNLE NOT_VALID
    
    MOV DL,'1'
    MOV AH,2
    INT 21H
    
    SUB BL,17
    MOV DL,BL
    MOV AH,2
    INT 21H     
    CALL NEWLINE
    JMP AGAIN 
    
NOT_VALID:

    LEA DX,M3
    MOV AH,9
    INT 21H
     
    CALL NEWLINE 
    
AGAIN:
    LEA DX,M4
    MOV AH,9
    INT 21H
        
    MOV AH,1
    INT 21H
    MOV BH,AL
    CALL NEWLINE
    
    CMP BH,'Y'
    JE START
    CMP BH,'y'
    JE START
        
EXIT:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP 

NEWLINE PROC
    
    MOV DL,0AH   
    MOV AH,2
    INT 21H
    MOV DL,0DH
    INT 21H
    RET
NEWLINE ENDP

END MAIN