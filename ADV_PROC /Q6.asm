MyProc PROTO a:DWORD, b:DWORD   ; proto

INVOKE MyProc,5,6; call using invoke

MyProc PROC a:DWORD, b:DWORD
LOCAL sum:DWORD
enter 4, 0 ; reserve space for local var
mov eax, a
add eax, b
mov sum, eax
leave
ret 8
MyProc ENDP
