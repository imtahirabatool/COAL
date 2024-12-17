
; progrm to print triangle

.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov bx, 1
    mov cx, 5
    
    l1:
    