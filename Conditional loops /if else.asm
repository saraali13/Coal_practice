
CMP op1, op2         ; Compare op1 with op2
JNE Else             ; Jump to Else if they are not equal
MOV X, 1             ; If equal, X = 1
JMP Endif            ; Jump to Endif
Else:
MOV X, 2             ; If not equal, X = 2
Endif:
