  ;program to print 10*10 rectangle of *
  
.model small
.stack 100h
.data
.code

main proc
    mov bx, 10
    mov cx, 10
    
    l1:
    push cx
    mov cx, bx
    
    l2:
    mov dl, '*'
    mov ah, 2
    int 21h
    loop l2
    
    mov dl, 10 
    mov ah, 2
     int 21h
     
     mov dl, 13
     mov ah, 2
     int 21h
     
     pop cx
     loop l1
     
     mov ah, 4ch
     int 21h
     
     main endp
end main
  
  