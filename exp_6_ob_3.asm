
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 
;Multiply E081h with A2b3h

mov ax,0E081h
mov dx,0A2B3h
  
mul dx

mov cx,3000h
mov ds,cx
mov di,0060h
mov [di],ax


inc di
inc di
mov [di],dx

ret

;answer 8EAE9C33


