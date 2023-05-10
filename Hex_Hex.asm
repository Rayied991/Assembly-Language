mov  bx,0
mov cl,4
mov ah,1

input:
int 21h
cmp al,13
je end_of_taking_input
cmp al,41h
jge letter_input

;for digit
and al,0Fh
jmp shift_

letter_input:
sub al,37h

shift_: 

shl bx,cl
or bl,al
jmp input

end_of_taking_input:

output_1:
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h
mov cx,4
mov ah,2

output_2:
mov dl,bh
shr dl,4
shl bx,4
cmp dl,10
jge letter_output
add dl,30h ;48
int 21h
jmp end_of_output

letter_output:
add dl,55
int 21h

end_of_output:
loop output_2 



