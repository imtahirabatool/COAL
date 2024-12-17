.model small
.stack 100h
.data
var1 db ?
var2 db ?    
msg db 'Sum= $'
res db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    sub al, 48
    mov var1, al
    
    mov ah, 1
    int 21h    
    sub al, 48
    mov var2, al
    
    mov al, var1
    add al, var2 
    mov res, al 
    
    mov dl, 13
    int 21h
    
    mov dl, 10
    int 21h  
    
    mov dx, offset msg
    mov ah, 9
    int 21h
    
    mov al, res
    add al, 48 
    mov dl, al
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
end main   