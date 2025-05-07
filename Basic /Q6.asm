mov al, 0F0h     ; 11110000
and al, 0AAh     ; 10101010 => result = 10100000
; ZF = 0, SF = 1, CF = 0, OF = 0
;test same as and but doesnot change the value

mov al, 0F0h     ; 11110000
or al, 0AAh      ; 10101010 => result = 11111010
; ZF = 0, SF = 1, CF = 0, OF = 0
;CMP same as and but doesnot change the value

mov al, 0FFh     ; 11111111
xor al, 0FFh     ; 11111111 => result = 00000000
; ZF = 1, SF = 0, CF = 0, OF = 0

