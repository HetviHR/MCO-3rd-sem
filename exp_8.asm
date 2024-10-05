
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
.model prac8 palindrome string?
org 100h

jmp start
 ;23CS081
 
m1:
 s db '23CS081'
 s_size = $ - m1
 db 0Dh,0Ah,'$' 
 
start:
;printing actual string...

 mov ah, 9
 mov dx, offset s;
 int 21h
 
 lea di, s
 mov si, di
 add si, s_size
 dec si ;point to last char
 mov cx, s_size
 cmp cx, 1 
 je is_palindrome
 shr cx, 1
 
 next_char: 
 
 mov al,[di]
 mov bl, [si]
 cmp al,bl
 jne not_palindrome
 inc di
 dec si
 loop next_char
 
is_palindrome:
    mov ah,9
    mov dx, offset msg1
    int 21h
    jmp stop
    

not_palindrome:

mov ah,9
mov dx, offset msg2
int 21h

stop:

mov ah,0
int 16h
ret

msg1 db "this is palindrome!$"
msg2 db "this in NOT palindrome!$"

 
  

ret