INCLUDE Irvine32.inc

.data
Var1 BYTE 5 DUP(4) ; Declare an array of 5 bytes, each initialized to 4
Arr BYTE 3,4,5,6
Arr2 WORD 100,200,300
Arr3 Dword 1000,2000
.code
main PROC
    mov al, Var1
    movzx eax,al
    call WriteInt  
    mov al, Var1 +1
    movzx eax,al
    call WriteInt 
    exit
main ENDP
END main
;BYTE Arr+1
;WORD Arr2+2
;DWORD Arr3+4
