; program to print next 3 character using inc

.model small
.stack 100h
.data  
msg db 'Enter character: $' 
num db "$"
.code
main proc
    mov ax, @data
    mov ds, ax
      
    mov ah, 1
    int 21h
    
    mov bl, al
    mov cx, 3
    
L1:         
    inc bl
    mov dl, bl
    mov ah, 2
    int 21h
    loop L1
    
    mov ah, 4ch
    int 21h
    main endp
end main
    