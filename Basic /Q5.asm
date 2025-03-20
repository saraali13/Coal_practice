INCLUDE Irvine32.inc

.data
myArray DWORD 10, 20, 30, 40 ,50  ; DWORD array

.code
main PROC
    mov eax, [myArray + 4]  ; Direct-offset Operand
;[esi + (LENGTHOF arrayW - 1) * TYPE arrayW] for excessing the last element of an array
    ; Use OFFSET to get the address of myArray
    mov esi, OFFSET myArray     ; ESI points to the start of myArray

    ; Use indirect addressing 
    mov eax, [esi]              ; EAX = 10 [esi] get the value pointed by the esi
    call WriteInt               
    call Crlf                  

    ; Use indexed addressing 
    mov eax, myArray[4]         ; EAX = 20
    call WriteInt               
    call Crlf                  

    ; Use TYPE, LENGTHOF, and SIZEOF operators
    mov eax, TYPE myArray       ; EAX = 4 (size of DWORD)
    call WriteInt              
    call Crlf                  

    mov eax, LENGTHOF myArray   ; EAX = 5 (number of elements)
    call WriteInt              
    call Crlf                  

    mov eax, SIZEOF myArray     ; EAX = 20 (total size in bytes)
    call WriteInt               
    call Crlf 

;override the default size or type of memory  
;mov al, BYTE PTR [esi]  ; Treat the memory at [esi] as a byte
main ENDP
END main
