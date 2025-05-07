.data
num DWORD 7
.code
push OFFSET num
call Square

Square PROC
    push ebp
    mov ebp, esp
    mov eax, [ebp+8]      ; address of num
    mov ebx, [eax]        ; get value
    imul ebx, ebx         ; square it
    mov [eax], ebx        ; store back
    pop ebp
    ret
Square ENDP
