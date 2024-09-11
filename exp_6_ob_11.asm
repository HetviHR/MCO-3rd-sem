
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;ashl C081h
mov ax,0C081h
sal ax,1
mov cx,3000h
mov ds,cx
mov di,00E0h
mov [di],ax

ret




