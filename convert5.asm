INCLUDE ./INCLUDE/Irvine32.inc
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
