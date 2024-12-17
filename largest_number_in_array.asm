; print largest number in array

.model small
.stack 100h
.data
arr db 2,8,9,4,3 

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset arr
    mov cx, 5
    mov bl, 0
    
    up:
    mov al, [si]
    cmp al, bl
    jl next
    
    mov bl, al
    
    next:
    inc si
    dec cx
    jnz up
    
    mov dl, bl
    add dl, 48
    
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
end main