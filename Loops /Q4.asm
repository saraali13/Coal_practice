INCLUDE Irvine32.inc
.data
    AVG DWORD ?
    sum DWORD ?
    marks DWORD 4 DUP(?)
    Sname BYTE 4 DUP(10 DUP(?))
	msg BYTE "Enter student details: ", 0
    Nmsg BYTE "Enter name: ",0
    Mmsg BYTE "Enter total marks: ",0
    Amsg BYTE "Avg marks: ",0

.code
main PROC
   mov ecx, lengthof marks
   mov edx, OFFSET msg
   call WriteString
   call Crlf
   mov esi,0
   mov sum,0
   mov AVG,0

   l1:
   mov edx, OFFSET Nmsg
   call WriteString
   mov edx,OFFSET Sname
   mov eax, esi
   imul eax, 10             
   add edx, eax
   call ReadString

   mov edx, OFFSET Mmsg
   call WriteString
   call ReadInt
   mov marks[esi],eax

   add sum,eax
   add esi,4
   loop l1
   mov eax,sum
   mov edx,0
   mov ecx,4
   div ecx
   mov AVG,eax

   mov edx ,OFFSET Amsg
   call WriteString
   call WriteInt

exit
main ENDP
END main
