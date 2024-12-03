.model small
.stack 100h
.data
.code
main proc
    ; Read a character from the user
    mov ah, 1        ; DOS interrupt to read a character
    int 21h          ; Character is placed in AL
    
    mov bl, al       ; Store the character in BL
    
    ; Move the number '4' into AL
    mov al, '4'      ; ASCII value of '4'
    
    ; Add the two characters as numbers
    add al, bl       ; Add the characters (ASCII values)
    sub al, 48       ; Convert to numeric value
    
    ; Output the result as a character
    mov dl, al       ; Move result into DL
    mov ah, 2        ; DOS interrupt to display a character
    int 21h          ; Display the result
    
    ; Exit the program
    mov ah, 4ch
    int 21h
main endp
end main
