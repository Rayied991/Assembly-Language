.MODEL SMALL
.STACK 100H
.DATA
 a db ?


.CODE

MAIN PROC

MOV AH,1    ;input
INT 21H
MOV a,al

MOV DL,0DH    ;  carry return
MOV AH,2
INT 21H
MOV DL,0AH              ;new line
INT 21H

;add a,20h ;41h+20h=61h(hexa)
add a,32; 65+32=97(decimal)
MOV DL,a
MOV AH,2
INT 21H 

MAIN ENDP
END MAIN