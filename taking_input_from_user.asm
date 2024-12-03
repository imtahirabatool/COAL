.model small
.stack 100h
.data   
msg1 db 'Enter number: $'
num1 db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    ;Display the message         
    mov dx, offset msg1
    mov ah,9
    int 21h
     
    ;Read user input
    mov ah, 1
    int 21h
    sub al, 48
    mov num1, al
     
    ;Print the input value
    add al, 48
    mov dl, al
    mov ah, 2
    int 21h
    
    ;Terminate the program
    mov ah, 4ch
    int 21h
    
    main endp
end main