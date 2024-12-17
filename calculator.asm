
;Simple Calculator for 2 single digit numbers
.model small
.stack 100
.data
num1 db ?
num2 db ?
oper db 10, 13, 'Select operation: 1-Add , 2-Sub, 3-Mul, 4-Div $'
operator db ?

.code 
main proc 
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    mov num1, al
    sub num1, 48
      
    mov ah, 1
    int 21h
    mov num2, al
    sub num2, 48
    
    mov dx, offset oper
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    mov operator, al
    sub operator, 48
    
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov bl, operator
    cmp bl, 1
    je addition
    cmp bl, 2
    je subtraction
    cmp bl, 3
    je Multiplication
    cmp bl, 4
    je Division

addition:
    mov al, num1
    add al, num2
    add al, 48
    mov dl, al
    mov ah, 2
    int 21h
    jmp exit
subtraction:
    mov al, num1
    sub al, num2
    add al, 48
    mov dl, al
    mov ah, 2
    int 21h
    jmp exit
Multiplication:
    mov al, num1
    mov bl, num2 
    mul bl
    add al, 48
    mov dl, al
    mov ah, 2
    int 21h
    jmp exit
Division:
    mov ah, 0
    mov al, num1
    mov bl, num2 
    div bl   
    add al, 48
    mov dl, al
    mov ah,2
    int 21h
    jmp exit
Exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    
