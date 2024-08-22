INCLUDE Irvine32.inc

.data
source  BYTE  "This is the source string", 0
target  BYTE  SIZEOF source DUP('a')

.code
main PROC

    mov  esi, offset source      ; get address of source
    mov  edi, offset target      ; get address of target
    mov  ecx, SIZEOF source     ; loop counter
L1:
    mov  al, [esi]              ; get char from source
    mov  [edi], al              ; store it in the target
    inc  esi                    ; move to next source character
    inc  edi                    ; move to next target character
    loop L1                     ; repeat for entire string


    ; print the source
    mov  edx, offset source
    call WriteString
    call Crlf   ; new line

    ; print the target
    mov  edx, offset target
    call WriteString

main ENDP
END main