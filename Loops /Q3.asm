INCLUDE Irvine32.inc

.data
array DWORD 5 DUP(?)   ; Array of 5 uninitialized DWORDs
arraySize = LENGTHOF array

.code
main PROC
    mov ecx, arraySize ; Loop counter
    mov esi, OFFSET array ; Pointer to the array

InputLoop:
    ; Prompt the user
    mov edx, OFFSET prompt
    call WriteString  ; Display the prompt

    ; Read an integer from the user
    call ReadInt      ; Input is stored in EAX
    mov [esi], eax    ; Store the input in the array
    add esi, TYPE array ; Move to the next array element

    loop InputLoop    ; Repeat for all elements

    ; Display the array
    mov ecx, arraySize
    mov esi, OFFSET array

OutputLoop:
    mov eax, [esi]    ; Load the current element
    call WriteInt     ; Display the integer
    call Crlf        ; New line
    add esi, TYPE array ; Move to the next element
    loop OutputLoop   ; Repeat for all elements

    exit
main ENDP

.data
prompt BYTE "Enter an integer: ", 0
END main
