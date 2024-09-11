
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


;sub 10811B64 from 9135F13A

mov ax,1B64h
mov bx,0F13Ah
sub ax,bx

mov cx,3000h
mov ds,cx
mov di,0040h
mov [di],ax

mov ax,1081h
mov bx,9135h
sbb ax,bx
 
inc di
inc di
mov [di],ax

ret




                                                             