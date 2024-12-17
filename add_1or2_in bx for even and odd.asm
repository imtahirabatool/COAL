;Design a program that adds '1' to BX, if BX is ODD and adds '2' to BX OTHERWISE.
.model small
.stack 100h
.data
num db ?
.code
main proc 
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    mov num, al
    
    mov bl, 2
    div bl
    cmp ah, 0 
    je even
    
    sub bx, bx
    add bx, 1
    jmp exit
    
    even:
    sub bx, bx
    add bx, 2
    
    exit:
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov dx, 10
    mov ah, 2
    int 21h
    
    mov dx, bx
    add dx, 48
    mov ah, 2
    int 21h
    
    MOV AH, 4Ch  
    INT 21h
main endp
end main
