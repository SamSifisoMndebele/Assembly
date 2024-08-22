INCLUDE Irvine32.inc

.data
intarray DWORD 100h,200h,300h

.code
main PROC

    mov esi, offset intarray        ; address of intarray
    mov ecx, lengthof intarray      ; loop counter
    mov eax, 0                      ; zero the accumulator
L1: add eax, [esi]                  ; add an integer
    add esi, type intarray          ; point to next integer
    loop L1                         ; repeat until ECX = 0


call dumpregs

main ENDP
END main