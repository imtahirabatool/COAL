; Program to display whether the number is greater or smaller than 100
.model small
.stack 100h
.data
msg db 'Enter Number: $'
grt db 'The number is greater than 100! $'
sml db 'The number is smaller than 100!$' 
.code 
main proc
    mov ax, @data
    mov ds, ax
      
    mov dx, offset msg
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    add bl, 48
    
    mov ah,13
    int 21h
    
    mov ah, 10
    int 21h
    
    mov cl, 100
    cmp cl, bl
    jg L1
    mov dx, offset sml
    mov ah, 9
    int 21h
    jmp last
    
L1:
    mov dx, offset grt
    mov ah, 9
    int 21h
    jmp last         
    
last:
    mov ah, 4ch
    int 21h
    
    main endp
end main