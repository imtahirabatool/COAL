.model small
.stack 100h
.data
     msg1 db 'Hey $'
     msg2 db ?
.code
main proc
    mov ax, @data
    mov ds, ax 
    mov dl,offset msg1
    mov ah,9
    int 21h
    mov dl,msg2
    mov ah,0ah
    int 21h
    
    
main endp
end main
