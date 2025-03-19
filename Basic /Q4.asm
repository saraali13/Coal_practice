include irvine32.inc

.data
A = 2
B EQU 3
;defines constants and won't be modified 
.code
main PROC

;INC B
mov eax, B
call WriteDec
call Crlf
;INC A
MOV EAX, A
CALL WriteINT

exit
main ENDP
end main
