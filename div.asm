.model small
.stack 100h
.data

quo db ?
rem db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 26
    mov bl, 5 
    
    div bl
    
    mov quo, ah
    mov rem, al
    
    mov dl, rem
    add dl, 48
    mov ah, 2
    int 21h 
    
        
   ; mov ah, 10
;    int 21h
;    
;    mov ah, 13
;    int 21h
    
    mov dl, quo 
    add dl, 48
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main