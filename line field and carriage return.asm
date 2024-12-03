.model small
.stack 100h
.data
var1 db 'T$'
var2 db 'B$'  
.code
main proc 
    mov ax, @data
    mov ds, ax
    
    mov dx, offset var1
    mov ah, 9
    int 21h
    
    mov ah, 2
    int 21h
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h
    
    mov dx, offset var2
    mov ah, 9
    int 21h    
    
    mov ah, 4ch
    int 21h
    
    main endp
end main