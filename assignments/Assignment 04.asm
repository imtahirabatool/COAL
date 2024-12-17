.model small
.stack 100h
.data 
length db 0                        
occur db 0                         
msg db 'Enter a String : $'        
msg1 db 0Dh, 0Ah, 'Total Length : $'
msg2 db 0Dh, 0Ah, 'A appears : $' 
msg3 db 'times $'
tens db ?                          
ones db ?                          
.code                   
main proc 
    mov ax, @data
    mov ds, ax 
    
    mov dx, offset msg
    mov ah, 9
    int 21h 
    
while:  ;work as a while loop
        mov ah, 1   
        int 21h
        cmp al, 13   ;compare with enter key ... when user press enter key program will jumpto  defined label
        jz terminate
        inc length  
        
        cmp al, 'A'                    
        je increment
        cmp al, 'a'                    
        je increment
        jmp while                

increment:
        inc occur                      
        jmp while                 

terminate:
    
    mov dx, offset msg1
    mov ah, 9
    int 21h
    mov al, length
    mov ah, 0       ; clear high byte for division                        
    mov bl, 10                         
    div bl                             
    mov tens, al    ; quotient                   
    mov ones, ah    ;remainder                   
    mov dl, tens
    add dl, 48                       
    mov ah, 2
    int 21h
    
    mov dl, ones
    add dl, 48                        
    mov ah, 2
    int 21h

    
    mov dx, offset msg2
    mov ah, 9
    int 21h
    mov al, occur
    add al, 48                       
    mov dl, al
    mov ah, 2                          
    int 21h 
    
    mov dl,32   ; space
    mov ah,2
    int 21h
    mov dx, offset msg3
    mov ah,9
    int 21h
    
    mov ah, 4Ch
    int 21h  
main endp
end main