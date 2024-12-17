.model small
.stack 100h
.data
num db ?
msg1 db 'This number is divisible by 2 $'
msg2 db 'This number is divisible by 3 $'  
.code 
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    
    mov num, al
    sub num, 48
    
    
    mov al, num
     mov ah, 0 
    mov bl, 2
    div bl  
     mov ah, 0 
    cmp ah, 0
    je print
    
    mov al,  num 
     mov ah, 0 
    mov bl, 3
    div bl
    cmp ah, 0
    je printodd 
    
    print:
    mov dx, offset msg1
    mov ah, 9
    int 21h
    jmp exit 
    
    printodd:
    mov dx, offset msg2
    mov ah, 9
    int 21h 
    
    exit:
    mov ah, 4ch
    int 21h
    
    main endp
end main