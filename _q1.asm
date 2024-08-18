TITLE       (.asm)

INCLUDE ./INCLUDE/Irvine32.inc

.data
    Rval DWORD ?
    Xval DWORD 20
    Yval DWORD 15
    Zval DWORD 25

    str1 BYTE "R = ", 0

.code
main PROC

    mov ebx,Yval
	neg ebx
	add ebx,Zval
	mov eax,Xval
	sub eax,ebx
	mov Rval,eax

	mov edx, offset str1
	call WriteString

	mov edx, offset Zval
	call WriteDec
	call Crlf


	exit
main ENDP
END main
