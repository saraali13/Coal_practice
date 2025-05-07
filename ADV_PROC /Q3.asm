AddTwo PROC
    enter 8,0 ; 8 bytes stored for loacl parameters
    mov eax, [ebp+8]
    add eax, [ebp+12]
    leave
    ret
AddTwo ENDP
 ;push ebp
;mov ebp, esp
;sub esp, 4 ; 4-byte local var
;mov DWORD PTR [ebp-4], 10
;...
;mov esp, ebp
;pop ebp
;ret
