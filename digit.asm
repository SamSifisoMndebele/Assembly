INCLUDE ./INCLUDE/Irvine32.inc
.data

.code

main PROC

mov al,6		; AL = 00000110b
or  al,00110000b	; AL = 00110110b

	
call writebin


call DumpRegs	; display the registers

exit
main ENDP
END main
