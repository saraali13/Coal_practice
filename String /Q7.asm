INVOKE Str_compare, ADDR str1, ADDR str2
INVOKE Str_copy, ADDR source, ADDR target
INVOKE Str_length, ADDR string
INVOKE Str_ucase, ADDR string

INCLUDE Irvine32.inc
.data
string1 BYTE 'abcd' ,0 string2 BYTE 'abc',0
.code main PROC
Str_compare PROTO,
INVOKE Str_compare, ADDR string1, ADDR string2 call dumpRegs
exit
main ENDP END main

INCLUDE Irvine32.inc
.data
string1 BYTE 'Hello World' ,0
.code main PROC mov eax,0
Str_length PROTO,
INVOKE Str_length, ADDR string1 call dumpRegs
exit
main ENDP END main

INCLUDE Irvine32.inc
.data
string_1 BYTE "COAL",0 string_2 BYTE " ", 0
.code main PROC
INVOKE Str_copy,ADDR string_1,ADDR string_2 mov edx,OFFSET string_2
call WriteString
exit
main ENDP END main

INCLUDE Irvine32.inc
.data
string_1 BYTE "Hellooo",0
.code main PROC
INVOKE Str_trim,ADDR string_1,'o' mov edx,OFFSET string_1
call WriteString
exit
main ENDP END main

INCLUDE Irvine32.inc
.data
string_1 BYTE "Coal",0
.code main PROC
INVOKE Str_ucase,ADDR string_1 mov edx,OFFSET string_1
call WriteString
exit
main ENDP END main

