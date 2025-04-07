include irvine32.inc
.data
op1 BYTE 4
op2 BYTE 6
.code
main proc

_While:
CMP op1, op2          ; Compare EBX and ECX
JG EndWhile           ; Jump to EndWhile if EBX > ECX
MOV X, 2              ; If EBX == ECX, set X = 2
INC op1              ; Increment EBX
JMP _While            ; Jump back to _While to continue looping
EndWhile:

 exit
main ENDP
END main
