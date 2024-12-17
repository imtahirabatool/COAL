; print smallest number in array

.model small
.stack 100h
.data
arr db 2,8,9,4,3 

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset arr
    mov bl, 79h
    mov cx, 5
    
    L1:
    mov al, [si]
    cmp al, bl
    jge next
    mov bl, al
    
    next:
    inc si
    dec cx
    jnz L1
    
    mov dl, bl
    add dl, 48
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
end main