INCLUDE Irvine32.inc
.data 
.code
main PROC

_Do:
MOV EAX, EAX + 1      ; Increment EAX
CMP EAX, EBX          ; Compare EAX with EBX
JL _Do                ; If EAX < EBX, continue the loop
EndDo:

 exit
main ENDP
END main
