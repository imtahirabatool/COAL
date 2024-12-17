;  add two arrays
.model small
.stack 100 h
.data 
arr1 db 1,2,3,4,5
arr2 db 1,2,3,4,4
res db 5 dup(0)
.code
main proc
    mov ax, @data
    mov ds, ax
    
    xor si, si
    xor di, di
    mov cx, 5
l1:
    mov al, arr1[si]
    add al, arr2[si] 
    mov res[di], al
    
    inc si
    inc di
    loop l1
    
    xor si, si
    mov cx, 5   
print:
    mov al, res[si] 
    add al, 48
    mov dl, al
    mov ah, 2
    int 21h  
    
    mov dl, ' '
    mov ah, 2
    int 21h
    
    inc si
    loop print
    
    mov ah, 4ch
    int 21h
    main endp
end main