INCLUDE Irvine32.inc

.code
main PROC
    call Clrscr

    mov eax, 10
    mov ebx, 20
    mov ecx, 30
    mov edx, 40
    mov esi, 1000
    mov edi, 2000

    pushad
L0::
    mov ecx, 8
L1:
    pop eax
    mov edx, eax
    call WriteDec
	call Crlf
    loop L1

main ENDP

END main