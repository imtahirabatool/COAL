.model small
.stack 100h
.data
arr db 5 dup(?)                              
.code 
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 5
    mov si, offset arr
    
    l1:
    mov ah, 1
    int 21h
    sub al,48
    mov [si], al
    inc si
    loop l1 
    
    
    mov cx, 5 
    mov bl, 0
    mov si, offset arr 
    
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