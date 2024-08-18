TITLE Add and Subtract, Version 2            (AddSub2.asm)
; This program adds and subtracts 32-bit unsigned
; integers and stores the sum in a variable.

INCLUDE Irvine32.inc

.data
source DWORD 0FFFFFFFFh
target DWORD ?


.code
main PROC

mov esi,OFFSET source
mov edi,OFFSET target
movsd
call dumpregs

exit
main ENDP
END main
