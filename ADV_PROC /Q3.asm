AddTwo PROC
    enter 8,0 ; 8 bytes stored for loacl parameters
    mov eax, [ebp+8]
    add eax, [ebp+12]
    leave
    ret
AddTwo ENDP
