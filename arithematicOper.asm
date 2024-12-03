.model small
.stack 100h
.code
.data
main proc
    mov ax, 4
    mov bx, 2
    
    mul bx      ;for multiply
    ;add ax,bx   ;for add
    ;sub ax, bx  ;for subtraction
    
    add ax,48
    
    mov dx,ax
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main