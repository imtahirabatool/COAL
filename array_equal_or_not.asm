; array are equal or not    
.model small
.stack 100h
.data
arr1 db 1,2,3
arr2 db 1,4,3
msg1 db 'Arrays are equal$'
msg2 db 'Arrays are not equal$'

.code 
main proc 
    mov ax, @data
    mov ds, ax
    
    mov si, offset arr1
    mov di, offset arr2
    mov cx,3
    
    L1:
    mov al, [si]
    mov bl, [di]
    cmp al, bl
    jne notequal
    inc si
    inc di
    loop l1
    mov dx, offset msg1
    jmp print
    
    notequal:
    mov dx, offset msg2
    
    print:
    mov ah, 9
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
    