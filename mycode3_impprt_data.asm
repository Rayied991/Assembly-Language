.model small

.stack 100h

.data
     ;all variables are declared here 
     
     ;define byte(db)=8 bit register
     ;define word (dw)=16 bit register
     
     ;bh bl 8 bit register =1 byte
     ;bx 16  bits register= 1 word
     
     ;n1 db 100
     n1 db 'd' ;d=100
     n2 db  ?
     char db '#'
     str db "My Name is EMU8086"
     char2 db ?
      

.code
     ;all codes written in code segment 

main proc  ;int main()
    ;statements   
    
    ;instructions destination,source
     mov ax,@data
     mov ds,ax
    
    
    
    mov ah,4ch ;system space are being returned to the system
    int 21h
  main endp
END main ;(EXIT/Return 0>
        
    
    