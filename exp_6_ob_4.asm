
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;DIV E081h AND 0777h
mov ax,0E081h
mov bx,0777h
div bx
mov cx,3000h
mov ds,cx
mov di,0070h
mov [di],ax

ret




