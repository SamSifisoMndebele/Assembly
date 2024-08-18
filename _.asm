TITLE Main

INCLUDE ./INCLUDE/Irvine32.inc

.data
list BYTE 6,10,20,30,40
ListSize = ($ - list)

.code
main PROC

    mov esi, offset list
    movzx eax, list
    mov ebx, ListSize

    call DumpRegs

    exit
main ENDP
END main