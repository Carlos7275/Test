.model small 
.stack 
.data 
;Variables
msg db 10,13,7,"Ingrese un Numero:  $"
msg2 db 10,13,7,"El resultado es:  $"
a db 0
b db 0
c db 0
.code 
;Macro 
Scan_Num macro
mov ah,01h
int 21h
sub al,30h
endm  

inicio: ;Clase Principal
mov ax,seg @data  ;Inicializa el Segmento de Datos
mov ds,ax 
Call Mensaje ;Llama a Proc Mensaje
Scan_Num ;Llama a Macro Para leer el Numero
mov a,al ;Movemos lo capturado ala variable a
Call Mensaje 
Scan_Num
mov b,al

Call suma  ;LLamamos al procedimiento suma

mov ah,4ch ;Metodo de Interrupcion DOS
int 21h
.exit 


;Procedimientos
proc Mensaje
mov ah,09h
lea dx,msg 
int 21h
ret
endp 
proc suma
mov al,a
add al,b 
mov c,al
AAM 
mov bx,ax 

mov ah,09h
lea dx,msg2
int 21h

mov ah,02h
mov dl,bh  
add dl,30h
int 21h

mov ah,02h
mov dl,bl 
add dl,30h
int 21h
ret
endp

end 




