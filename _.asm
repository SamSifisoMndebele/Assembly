TITLE Main

INCLUDE ./INCLUDE/Irvine32.inc

.data
wdList LABEL DWORD
list BYTE 6h,10h,20h,30h,40h

ListSize = ($ - list)

.code
main PROC

    mov esi, offset list
    mov eax, wdList
    sub eax, 40201006h

    call DumpRegs

    exit
main ENDP
END main