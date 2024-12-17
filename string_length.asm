.model small
.stack 100h
.data
str db 100 dup('$')
.code
main proc 
    mov ax, @data
    mov ds, ax
    mov si, offset str
    mov bx, 0
   L1:
   mov ah, 1
   int 21h
   cmp al, 13
   je exit
   mov [si], al
   inc bx 
   inc si
   loop L1

exit:
    mov dx, offset str
    mov ah, 9
    int 21h
    mov dx, bx
    add dx, 48
    mov ah, 2
    int 21h    
    mov ah, 4ch
    int 21h
    main endp
end main