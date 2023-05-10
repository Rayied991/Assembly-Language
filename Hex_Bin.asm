.MODEL SMALL
.STACK 100H
.DATA
 
D1 DB '1$'
D2 DB '0$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX    

     MOV BX, 0
     MOV CL, 4
     MOV AH, 1
     INT 21H
       
     WHILE:
     CMP AL, 0DH
     JE END
     
     CMP AL, 39H
     JG LETTER
     
     AND AL, 0DH
     JMP SHIFT
     
     LETTER:
     SUB AL,37H
     
     SHIFT:
     SHL BX,CL
     
     OR BL,AL
     INT 21H  
     
     JMP WHILE

     END:
        MOV CX,16
     
     TOP:

     ROL BX,1
     JNC ZERO
     JC ONE
     
     ZERO:
     MOV DL, '0'
     MOV AH, 2
     INT 21H
     CMP CX,1
     JE EXIT
     LOOP TOP
     
     ONE:
     MOV DL,'1'
     MOV AH, 2
     INT 21H
     CMP CX,1
     JE EXIT
     LOOP TOP
     
     EXIT:
     MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN