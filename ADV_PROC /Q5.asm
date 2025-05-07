.data
arr DWORD 10 DUP(?)
.code
lea esi, [arr+4]   ; Load address of arr[1]
