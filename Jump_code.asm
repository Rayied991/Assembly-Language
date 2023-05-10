.model small 
.stack 100h
.data 
neg1 db "Number is Negative$"
pos1 db "Number is Positive$"
.code


main proc
    mov ax,@data
    mov ds,ax
    
    mov bx,-10
    cmp bx,0
    jl Negative
    jge Positive
    
    Negative:
    mov ah,9
    lea dx,neg1
    int 21h
    jmp Exit
    
    Positive:
    mov ah,9
    lea dx,pos1
    int 21h
    jmp Exit 
    
    Exit:
    mov ah,4ch
    int 21h
    MAIN ENDP
END MAIN