include irvine32.inc
.data
op1 BYTE 4
op2 BYTE 6
.code
main proc
CMP op1, op2         ; Compare op1 with op2
JNE Else             ; Jump to Else if they are not equal
MOV ax, 1             ; If equal, X = 1
JMP Endif            ; Jump to Endif
Else:
MOV ax, 2             ; If not equal, X = 2
Endif:
 exit
main ENDP
END main
