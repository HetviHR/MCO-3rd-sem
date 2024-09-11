
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

;add 10811864h and 9135F13Ah
 

mov ax,1B64h
mov bx,0F13Ah 
add ax,bx

ret




