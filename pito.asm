.model small
.stack 
.data
.code 
X db 6
Y db 4 
Z db  8
W dw ?
inicio:
mov ax,seg @data 
mov ds,ax 

mov al,[x]
mul [y]
sub al,[z]
sbb ah,0
mov [w],ax
AAM
mov bx,ax 

mov ah,02h
mov dl,bh
add dl,30h
int 21h

mov ah,02h
mov dl,bl
add dl,30h
int 21h
.exit
end