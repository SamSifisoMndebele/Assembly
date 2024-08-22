INCLUDE ./INCLUDE/Irvine32.inc

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
