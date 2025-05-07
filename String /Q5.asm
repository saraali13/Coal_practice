;Fill memory with AL (STOSB STOSW STOSD)

.data
Count = 100
string1 BYTE Count DUP(?)
.code
mov al,0FFh
; value to be stored
mov edi,OFFSET string1
; EDI points to target
mov ecx,Count
; character count
cld
; direction = forward
rep stosb
; fill with contents of AL
