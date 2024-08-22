INCLUDE ./INCLUDE/Irvine32.inc

.data
wval WORD 9BA6h
arr BYTE 12h, -34h, 56h, 78h

; 0 1 2 3 4 5 6 7 8 9 a b c d e f
; -34h = ~00000034 + 1 = FFFFFFCB + 1  = FFFFFFCC

.code

main PROC

mov  ax,0AC36h
shld wval,ax,4
mov bx,wval

call dumpregs

exit
main ENDP
END main
