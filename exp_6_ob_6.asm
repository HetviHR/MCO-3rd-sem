
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;OR C081h or 00FFh
mov ax,0C081h
mov bx,00FFh
or ax,bx
mov cx,3000h
mov ds,cx
mov di,00A0h
mov [di],ax


ret




