.model small
.stack 100h
.data
.code
main proc
    mov dl, 2         
    mov al, 4         
    
    sub al, dl        
    
    ; Convert the result to ASCII
    add al, 48       
                                   
    mov dl, al        
    mov ah, 2         
    int 21h           
                              
    mov ah, 4ch       
    int 21h           
main endp
end main
