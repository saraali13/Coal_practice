; Load byte at ESI into AL (LODSB LODSW LODSD)

INCLUDE Irvine32.inc
.data
array DWORD 1,2,3,4,5,6,7,8,9,10
; test data
multiplier DWORD 10
; test data
.code
main PROC
cld
; direction = forward
mov esi,OFFSET array
; source index
mov edi,esi
; destination index
mov ecx,LENGTHOF array
; loop counter
L1:
Lodsd
; load [ESI] into EAX
mul multiplier
; multiply by a value
Stosd
; store EAX into [EDI]
loop L1
Exit
main ENDP
END main
