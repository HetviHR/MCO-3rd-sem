
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;and C081h AND 00FFh
mov ax,0C081h
mov bx,00FFh
and ax,bx
mov cx,3000h
mov ds,cx
mov di,0080h
mov [di],ax



ret




