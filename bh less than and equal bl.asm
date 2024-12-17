; if bh<=bl display the char in bh else bl

.model small
.stack 100h
.data
msg1 db 'Enter charater 1: $'
msg2 db 10, 13, 'Enter charater 2: $' 
;ch1 db "$"
;h2 db "$"
grtbh db 10, 13, 'The character in BH is $'
grtbl db 10, 13, 'The character in BL is $'   
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    mov bh, al
    
    mov ah, 13
    int 21h
    
    mov ah, 10
    int 21h
    
    mov dx, offset msg2
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
          
    cmp bh, bl
    jg greater
     
    mov dx, offset grtbl
    mov ah, 9
    int 21h
    mov dl, bl
    mov ah, 2
    int 21h
    
    jmp exit
    
greater:
    mov dx, offset grtbh
    mov ah, 9
    int 21h
    mov dl, bh
    mov ah, 2
    int 21h   
    
exit:
    mov ah, 4ch
    int 21h
    main endp
end main