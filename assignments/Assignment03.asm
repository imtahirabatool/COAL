.model small
.stack 100h
space macro
   
    mov dl, ' '  
    mov ah, 2
    int 21h
EndM
    
.data
arr db 1, 7, 3, 4, 7, 6, 8, 7, 9, 9   
msg1 db 'Array before alering : $'
msg2 db 0dh, 0ah,'Array after altering : $'
f db ?     
s db ?
next db ?
.code                            
main proc
    mov ax, @data
    mov ds, ax 
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    mov cx, 10
    mov si, offset arr  
    
    initial:
        mov dl, [si]
        add dl, 48
        mov ah, 2
        int 21h
        space   ; call marcro
        inc si
    loop initial 
    
    mov dx, offset msg2
    mov ah, 9
    int 21h                       
    mov cx, 10
    mov si, offset arr
    While:
        cmp [si], 7
        JZ change
        inc si
    loop while
    JMP End_ 
    
    change:   
        mov bl, [si - 1]
        mov dl, [si + 1]
        add dl, bl
        mov [si], dl
        inc si
        JMP While 
               
     End_:   
        mov si, offset arr
        mov cx, 10
        print:
            mov dl, [si]
            mov ah, 0 
            mov s, al
            mov al, dl
            mov bl, 10
            div bl
            cmp al, 0 
               
            JZ 1Digit
            mov dl, al
            add dl, 48
            mov s, ah
            mov ah, 2
            int 21h
            mov ah, s
         1Digit:
            mov dl, s
            add dl, 48
            mov ah, 2
            int 21h
            space
            inc si
        loop print
        
     mov ah, 4ch
     int 21h
     main endp
end main