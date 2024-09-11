org 100h

;NOT OF C081h
mov ax,0C081h
not ax
mov cx,3000h
mov ds,cx
mov di,00C0h
mov [di],ax


ret




