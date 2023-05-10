.model small

.stack 100h

.data 
  ;db=8 bit
  ;dw=16 bit 
  ;num1 db 'A'
   num1 db 49
   char db 'A'
   msg db "My name is Rayied$"
   

.code

main proc
    mov ax,@data
    mov ds,ax
      
    mov ah,2
    mov dl,num1
    int 21h
    
    ;new line
    ;mov ah,2
    mov dl,0Ah
    int 21h 
    ;new line ends  
    
     mov ah,2
    mov dl,char
    int 21h 
    
    ;new line
    mov dl,0Ah
    int 21h 
    ;new line ends  
    
    mov ah,9;String print
    lea dx,msg
    int 21h
  
    mov ah,4ch
    int 21h
    main endp
end main