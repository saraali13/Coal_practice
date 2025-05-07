; Search AL in string at EDI (SCASB,SCASW,SCASD)


.data
alpha BYTE "ABCDEFGH",0
.code
mov edi,OFFSET alpha
; EDI points to the string
mov al,'F'
; search for the letter F
mov ecx,LENGTHOF alpha
; set the search count
cld
; direction = forward
repne scasb
; repeat while not equal
jnz quit
; quit if letter not found
dec edi
; found: back up EDI
JNZ was added after the loop to test for the possibility that the loop stopped because ECX = 0 and the character in AL was not found.
