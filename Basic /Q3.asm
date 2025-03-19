INCLUDE Irvine32.inc

.data
Var1 WORD 4      
Var2 WORD 5

.code
main PROC
    
    mov ax, Var1
    add ax, Var2 
    movzx eax,ax
    call WriteDec
    call Crlf

    sub ax, Var1
    movzx eax,ax
    call WriteDec
    call Crlf

    INC eax
    call WriteDec
    call Crlf

    DEC eax
    call WriteDec
    call Crlf

    XCHG ax,Var2

    NEG eax
    call WriteInt
    call Crlf ; for next line


    exit
main ENDP
END main
