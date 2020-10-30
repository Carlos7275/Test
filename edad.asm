.model small 
.stack 
.data  
uni db 0
dece db 0
edad db 0
msg db 10,13,7,"Ingrese su Edad: ","$"
msg2 db 10,13,7,"Usted es Mayor de Edad","$"
msg3 db 10,13,7,"Usted es Menor de Edad ","$"
msg4 db 10,13,7,"Su edad es: ","$"
.code
inicio:
mov ax,seg @data 
mov ds,ax 

mov ah,09h
lea dx,msg 
int 21h

mov ah,01h
int 21h
sub al,30h
mov dece,al


mov ah,01h
int 21h
sub al,30h
mov uni,al

mov al,dece 
mov bl,10
mul bl
add al,uni
mov edad,al 
AAM
mov bx,ax 
mov ah,09h
lea dx,msg4
int 21h

mov ah,02h
mov dl,bh
add dl,30h
int 21h
mov ah,02h
mov dl,bl
add dl,30h
int 21h
cmp edad,18
jge Mayor
jne menor 

Mayor:
mov ah,09h
lea dx,msg2
int 21h
.exit
Menor:
mov ah,09h
lea dx,msg3
int 21h

.exit

.exit


end