mov ah,01h  ; 01h =input
int 21h
mov ah,2   ;2/02h=print
mov dl,al
int 21h

;; ascii value of 3 is =33(So 33 will be printed)