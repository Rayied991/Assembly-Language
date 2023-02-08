mov ah,01h
int 21h
mov ah,2
mov dl,al
int 21h

;; ascii value of 3 is =33(So 33 will be printed)