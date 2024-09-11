.model small
; 23cs081
.data

a db 81h, 02h, 03h, 04h
ans db 1 dup(?)

.code

mov dx,@data
mov ds,dx

mov si,offset a

mov bl,00h
mov al,00h
mov cl,04h

lb:
    call fun_sum
    loop lb
    
mov ans,bl
hlt

fun_sum proc
    
    mov al,[si]
    test al,01h
    JNZ label2
    add bl,al    
  label2:
  
    inc si
    ret   
fun_sum endp                 