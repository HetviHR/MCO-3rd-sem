
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;C081h XOR 00FFH
mov ax,0C081h
mov bx,00FFh
xor ax,bx
mov cx,3000h
mov ds,dx
mov di,00B0h
mov [di],ax

ret




