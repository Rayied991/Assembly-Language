.MODEL SMALL                    
.STACK 100H
.CODE
MAIN PROC
;DISPLAI ? SYMBOL
;MOV AH, 2
;MOV DL, '?'
;INT 21H
XOR CX, CX
;TAKING INPUT
MOV AH,1
INT 21H
WHILE:
CMP AL, 0DH
JE END_WHILE
PUSH AX
INC CX
;READ CHARACTERS
INT 21H
JMP WHILE
;NEW LINE
END_WHILE:
MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H
JCXZ EXIT
;COUNT
TOP:
POP DX
;DISPLAY
INT 21H
LOOP TOP
;ENDING
EXIT:
MOV AH, 4CH
INT 21H
MAIN ENDP
END MAIN
