push 5
push 3
call Add

Add PROC
    push ebp
    mov ebp, esp
    mov eax, [ebp+8]   ; First value
    add eax, [ebp+12]  ; Second value
    pop ebp
    ret 8; stack cleanup
Add ENDP

;[ESP] -> Local variable
;[EBP - 4] -> Local variable
;[EBP] -> Old EBP
;[EBP + 4] -> Return address
;[EBP + 8] -> First parameter (x)
;[EBP + 12] -> Second parameter (y)
