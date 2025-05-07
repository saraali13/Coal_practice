cld ;clear -- forward direction
mov esi, OFFSET src
mov edi, OFFSET dest
mov ecx, LENGTHOF src
rep movsb ; move string byte from source to destination (movsw,movsd)
