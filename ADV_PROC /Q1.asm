push 5
push 3
call Add

Add PROC
    push ebp
    mov ebp, esp
    mov eax, [ebp+8]   ; First value
    add eax, [ebp+12]  ; Second value
    pop ebp
    ret
Add ENDP
