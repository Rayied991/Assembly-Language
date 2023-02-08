mov ah,2
mov bh,05h
mov dl,'*'
int 21h   
mov dl,0Ah ;0A/10=newL(new line)
int 21h
mov dl,0Dh ;;0D/13=Cret(carries return)
int 21h
mov dl,Bh
int 21h