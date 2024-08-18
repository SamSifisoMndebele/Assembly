TITLE Add and Subtract, Version 2            (AddSub2.asm)
; This program adds and subtracts 32-bit unsigned
; integers and stores the sum in a variable.
INCLUDE Irvine32.inc
.data

.code

main PROC

mov dl,5
shl dl,1


shl dl,2

call DumpRegs	

exit
main ENDP
END main
