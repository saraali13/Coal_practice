INCLUDE Irvine32.inc

.data
Var1 BYTE 4 ;SBYTE for signed
Var2 WORD 23
Var3 DWORD 234
v QWORD 3456
.code 
main proc
mov al,Var1 ;8 bit data
mov ax,Var2 ;16 bit data 
mov eax,Var3 ;32 bit data
mov rax,v ;64 bit 
 ;movsx eax Var1 for signed 
 ;movzx eax,Var1 for transfering small bit data to large bit register
 ;mov al, BYTE PTR Var2 for transfering llarge bit data to small bit register
