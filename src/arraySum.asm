TITLE sum array elements

INCLUDE ./INCLUDE/Irvine32.inc

INDEXED ADRESSING

.data
myBytes BYTE 80,66,75

.code
main PROC
	mov eax,0
	mov al,myBytes[0]
	add al,[myBytes+1]  myByte[1]
	add al,[myBytes+2]  myByte[2]

	call DumpRegs		; display registers
	exit
main ENDP
END main