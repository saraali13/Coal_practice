INCLUDE Irvine32.inc

.data

.code
main PROC

mov eax, 5
jmp Skip        ; Unconditionally jump to the label "Skip"
mov eax, 10     ; This instruction is skipped
Skip:
call WriteInt


    exit
main ENDP
END main
