; display a string in Assembly Language  

.model small

.stack 100h

.data
msg db ?

.code
main proc 
    mov ah,1
    int 21h
    mov msg,al
    
    
    ;LEA
    mov ah,9
    lea dx,msg
    int 2
    
 
    
     
    
    mov ah,4ch   ;program returned to operating system
    int 21h
    
    main endp
end main