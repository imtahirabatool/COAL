.model small
.stack 100h
.data
.code

main proc
    mov dl, 10     ; Move the newline character (ASCII 10) into DL, as required by int 21h, AH=2
    mov ah, 2      ; Function 2: Display character
    int 21h        ; Call DOS interrupt to display the character
    
    mov ah, 4ch    ; Function 4Ch: Terminate program
    int 21h        ; Call DOS interrupt to terminate program
main endp
End main