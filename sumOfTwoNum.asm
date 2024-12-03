.model small
.stack 100h
.data  
v1 db 'Enter the first number: $'
v2 db 'Enter the second number: $'
v3 db 'Sum of two numbers: $'
v4 db ?                   
v5 db ?                   
.code
main proc 
    mov ax, @data         
    mov ds, ax
    
    mov dx, offset v1
    mov ah, 9             
    int 21h 

    mov ah, 1           
    int 21h
    sub al, 48          
    mov v4, al 
    
    mov dx, 10
    mov ah, 2
    int 21h
     
    mov dx, 13
    mov ah, 2
    int 21h
     
    mov dx, offset v2
    mov ah, 9             
    int 21h 

    mov ah, 1             
    int 21h
    sub al, 48            
    mov v5, al            
    
    mov dx, 10
    mov ah, 2
    int 21h
     
    mov dx, 13
    mov ah, 2
    int 21h
     
    mov dx, offset v3
    mov ah, 9             
    int 21h

    mov al, v4
    add al, v5            
    add al, 48            
    mov dl, al            
    mov ah, 2             
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main
