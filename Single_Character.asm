;write an assembly code to show an ?

.model small

.stack 100h

.data

.code
main proc
    mov ah,2  
    mov dl,'?'
    int 21h 
    
    mov ah,4ch   ;program returned to operating system
    int 21h
    
    main endp
end main