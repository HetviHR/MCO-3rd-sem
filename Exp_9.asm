.model prac_9

.data
;this is data segment

ans dw 1 dup(0)
two db 1 dup(2)
tcx dw 1 dup(2)

.code
;this is code segment
;grabbing the data segment

mov ax, @data
mov ds,ax
mov cx,0008h
mov ax,0001h

next:
mov dx,cx
mov ax,dx
div two
cmp ah,01h
jne for_even
mov tcx,cx

call factorial_fun

mov cx,tcx

for_even:

sub ans,dx
loop next

hlt

factorial_fun proc
    mov ax,0001h
    lb: mul cx
    loop lb
    add ans,ax
    ret
factorial_fun endp