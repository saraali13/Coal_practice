INCLUDE Irvine32.inc
.data
    num DWORD 50
    guess DWORD ?
	msg BYTE "Enter your guesses till you won: ", 0
    Wmsg BYTE "Hurray! you won",0
    Lmsg BYTE "Oops! too small",0
    Gmsg BYTE "Oops! too big",0

.code
main PROC
   mov edx, OFFSET msg
   call WriteString

   l1:
   call ReadInt
   mov guess,eax
   CMP eax,num
   JL less
   JG greater
   JE eqq
   eqq:
   mov edx, OFFSET Wmsg
   call WriteString
   call Crlf
   exit
   less:
   mov edx, OFFSET Lmsg
   call WriteString
   call Crlf
   JMP l1
   greater:
   mov edx, OFFSET Gmsg
   call WriteString
   call Crlf
   JMP l1

   loop l1
   
exit
main ENDP
END mains
