TITLE sum array elements
;

INCLUDE Irvine32.inc

.data
myBytes BYTE 80,66,75

.code
main PROC
	mov eax,0
	mov al,myBytes
	add al,[myBytes+1]
	add al,[myBytes+2]

	call DumpRegs		; display registers
	exit
main ENDP
END main