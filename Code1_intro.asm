.model small

.stack 100h 

.data
     ;all variables are declared here

.code
     ;all codes written in code segment 

main proc  
    ;int main()
    ;statements
    
    mov ah,4ch ;system space are being returned to the system
    int 21h
  main endp
END main: ;(EXIT/Return 0>
        
    
    