.model small
.stack 100h
.data  
msg1 db 'Enter first number: $'
msg2 db 10, 13, 'Enter second number: $'
num1 db ?
num2 db ?
res1 db 10, 13, 'Sum of ', "$"
res2 db ' and ', "$"
res3 db ' is ', "$"
sum db ?
.code
main proc
       mov ax, @data
       mov ds, ax
       
       mov dx, offset msg1
       mov ah, 9
       int 21h
       
       mov ah, 1
       int 21h
       sub al, 48
       mov num1, al
       
       mov ah, 13
       int 21h
       
       mov ah, 10
       int 21h
       
       mov dx, offset msg2
       mov ah, 9
       int 21h
               
       mov ah, 1
       int 21h
       sub al, 48
       mov num2, al
       
       mov al, num1
       add al, num2
       mov sum, al
       
       mov dx, offset res1
       mov ah, 9
       int 21h  
       
       mov al, num1
       mov dl, al 
       add dl, 48
       mov ah, 2
       int 21h
       
       mov dx, offset res2
       mov ah, 9
       int 21h
       
       mov al, num2
       mov dl, al
       add dl, 48
       mov ah, 2
       int 21h 
       
       mov dx, offset res3
       mov ah, 9
       int 21h
                          
       mov al, sum 
       add al, 48
       mov dl, al
       mov ah, 2
       int 21h                   
       
        
       mov ah, 4ch
       int 21h
    main endp
end main