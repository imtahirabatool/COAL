.model small
.stack 100h
.data
.code

main proc
    mov dl, 'T'
    mov ah, 2
    int 21h
    
    mov dl, 'a'
    mov ah, 2
    int 21h
    
    mov dl, 'h'
    mov ah, 2
    int 21h
    
    mov dl, 'i'
    mov ah, 2
    int 21h 
    
    mov dl, 'r'
    mov ah, 2
    int 21h
    
    mov dl, 'a'
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
      
    