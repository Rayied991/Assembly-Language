.model small

.stack 100h

.data 
  

.code

main proc
    mov ax,@data
    mov ds,ax  
    
    ;xchg keyword
    
    mov bl,53 ;5
    mov bh,55 ;7
    xchg bh,bl; bh=5, bl=7
    
    mov ah,2
    mov dl,bl ;bl=7
    int 21h 
    
    mov dl,bh ;bh=5
    int 21h
   
  
    mov ah,4ch
    int 21h
    main endp
end main