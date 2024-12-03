.model small
.data
.code
main proc 
    mov ax, 5
    mov bx, 2
    
    mul bx
    AAM   
    mov ch, ah
    mov cl, al
    
    mov dl, ch
    add dl, 48
    mov ah, 2
    int 21h
           
           
    mov dl, cl
    add dl, 48
    mov ah, 2
    int 21h   
    
    mov ah, 4ch
    int 21h
    
    main endp
end main