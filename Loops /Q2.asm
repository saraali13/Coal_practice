INCLUDE Irvine32.inc

.code
main PROC
    mov ecx, 5       ; Set loop counter to 5
    mov eax, 1       ; Start with the number 1

PrintLoop:     ;loop started
    call WriteDec   
    call Crlf       
    inc eax         
    loop PrintLoop   ; Repeat until ECX = 0 then end

    exit
main ENDP
END main
