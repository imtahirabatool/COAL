;Program to display a "?", read two capital letters,
;and display them on the next line in alphabetical order. 
space macro
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov dl, 10
    mov ah, 2
    int 21h   
    endm
.model small
.stack 100h
.data
str db '? $' 
ltr1 db ?
ltr2 db ?
.code
main proc 
    mov ax, @data
    mov ds, ax
    
    mov dx, offset str
    mov ah, 9
    int 21h
     
     space
    mov ah, 1
    int 21h
    mov ltr1, al
    
    mov ah, 1
    int 21h
    mov ltr2, al
   
    mov al, ltr1
    cmp al, ltr2
    jbe next
    space 
    mov dl, ltr2
    mov ah, 2
    int 21h
            
    mov dl, ltr1
    mov ah, 2
    int 21h     
    jmp exit
    
    next:
    space
    mov dl, ltr1
    mov ah, 2
    int 21h
            
    mov dl, ltr2
    mov ah, 2
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
