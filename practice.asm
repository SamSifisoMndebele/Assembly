TITLE Add and Subtract, Version 2            (AddSub2.asm)
; This program adds and subtracts 32-bit unsigned
; integers and stores the sum in a variable.
INCLUDE ./INCLUDE/Irvine32.inc

.data
wval WORD 9BA6h


.code

main PROC

mov  ax,0AC36h
shld wval,ax,4
mov bx,wval

call dumpregs

exit
main ENDP
END main
