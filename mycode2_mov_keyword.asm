.model small

.stack 100h

.data
     ;all variables are declared here 
     
     n1 db ?

.code
     ;all codes written in code segment 

main proc  ;int main()
    ;statements   
    
    ;instructions destination,source
    
    ;mov instructions
    
    mov bh,4
    mov bl,5
    
    ;add bh,bl  ;bh=bh+bl(4+5=9)
    ADD n1,bh  ;n1=n1+bh
    
    mov ah,4ch ;system space are being returned to the system
    int 21h
  main endp
END main ;(EXIT/Return 0>
        
    
    