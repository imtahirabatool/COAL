;print string using macro

print macro string
    mov dx, offset string
    mov ah, 9
    int 21h
    endm
    
.model small
.stack 100h
.data
str1 db 'This is first string. $'
str2 db 'This is second string. $' 

.code 
main proc
    mov ax, @data
    mov ds, ax
    
    print str1
    mov dx, 10
    mov ah, 2
    int 21h
           
    mov dx, 13
    mov ah, 2
    int 21h
              
    print str2
    mov dx, 10
    mov ah, 2
    int 21h
           
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main