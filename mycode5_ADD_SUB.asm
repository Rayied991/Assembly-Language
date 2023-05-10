
.model small

.stack 100h

.data 
  
  A db ?
  B db ? 

.code

main proc
    mov ax,@data
    mov ds,ax  
    
    mov ah,1;al
    int 21h
    
    mov a,al; instruction destination,source
     SUB a,48;A=A-48   
    
    int 21h
    
    mov b,al
     SUB b,48;b=b-48   
   
     
     mov bh,a  ;bh=a
     add bh,b  ;bh-bh+b
     add bh,48 ;bh=bh+48
     
     ;new line
     
     mov ah,2
     mov dl,0Ah
     int 21h
     mov dl,0dh
     int 21h
     
     ;output of sum
     mov dl,bh
     int 21h
   
  
    mov ah,4ch
    int 21h
    main endp
end main