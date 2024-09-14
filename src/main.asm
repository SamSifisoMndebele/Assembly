INCLUDE Irvine32.inc

.data
    str1 BYTE "Color output is easy!",0

.code
main PROC
    mov  eax,red + (blue * 16)
    call SetTextColor
    mov  edx,OFFSET str1
    call WriteString
    call Crlf

    exit
main ENDP
END main