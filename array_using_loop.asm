;  print array using loop

.model small
.stack 100 h
.data 
arr1 db 'a','b','c'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset arr1 
    mov cx, 3 
    
l1:
    mov dx, [si]
    mov ah,2
    int 21h 
    mov dx, ' '
    mov ah, 2
    int 21h
    inc si
    loop l1 
    
    mov ah, 4ch
    int 21h
    main endp
end main