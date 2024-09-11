org 100h

;ashl C081h
mov ax,0C081h
rcr ax,1
mov cx,3000h
mov ds,cx
mov di,0130h
mov [di],ax

ret