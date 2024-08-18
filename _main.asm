TITLE Main

INCLUDE ./INCLUDE/Irvine32.inc

.data
msg BYTE "Hello, World", 0

.code
main PROC

    mov edx, offset msg

    call WriteString        ; write null-terminated string to output, uses `edx` for address of string
    call Crlf               ; output carriage-return / linefeed

    exit
main ENDP
END main