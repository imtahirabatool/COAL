.model small
.stack 100h
.data
msg1 db 'Hello $'
msg2 db 'World$'

main proc
    mov ax, @data
    mov ds, ax
    
    ;for string1
    mov dx, offset msg1
    mov ah, 9
    int 21h
              
    ;carriage return          
    mov dx, 13
    mov ah, 2 
    int 21h
    
    ;for moving to next line       
    mov dx, 10
    mov ah, 2 
    int 21h
            
    ; for string2        
    mov dx, offset msg2
    mov ah, 9
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main