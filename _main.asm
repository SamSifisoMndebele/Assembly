TITLE Main

INCLUDE ./INCLUDE/Irvine32.inc

.data
myBytes BYTE "Hello, World", 0
arr BYTE 12h, -34h, 56h, 78h

; 0 1 2 3 4 5 6 7 8 9 a b c d e f
; -34h = ~00000034 + 1 = FFFFFFCB + 1  = FFFFFFCC

.code
main PROC
    ;mov esi, offset arr
    ;movsx eax, arr+1
    ;mov bx, WORD PTR arr
    ;mov ecx, DWORD PTR arr
    ;call WriteString
    ;call Crlf

    mov al,+127
    add al,1	; OF = 1,   AL = -128

    call DumpRegs

	exit
main ENDP
END main