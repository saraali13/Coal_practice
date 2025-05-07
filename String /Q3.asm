INCLUDE Irvine32.inc
.data
greater BYTE 'source > target',0 lessOrEqual BYTE 'source <target',0
source BYTE 'abcd',0 target BYTE 'abc',0
.code
main PROC
mov esi,OFFSET source
mov edi,OFFSET target
cmpsd
; compare doublewords
ja L1
; jump if source > target
mov edx,offset lessOrEqual
;else print source <= target
call writestring
jmp endd
L1:
mov edx,offset greater
call writestring
endd:
Exit
main ENDP
