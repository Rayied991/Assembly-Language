.model small
.data
msg db "Enter binary value : $"
msg1 db "Output : $"
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov bx,0
    mov cx,16
    
    input_:
    mov ah,01h
    int 21h
    cmp al,0Dh
    je output_
    
    and al,0Fh
    shl bx,1
    or bl,al
    loop input_
    
    output_:
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    int 21h
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov cx,16
    
    output_1:
    shl bx,1
    jnc zero
    mov dl,49
    mov ah,02
    int 21h
    jmp output_loop
    
    zero:
    mov dl,48;'0'
    mov ah,2
    int 21h
    
    output_loop:
    loop output_1   
    
    Exit:
    mov ah,4ch
    int 21h