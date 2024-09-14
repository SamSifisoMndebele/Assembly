INCLUDE Irvine32.inc

.data
str1 BYTE " Enter your name! " , 0
str2 BYTE " Enter your age! " , 0
str3 BYTE " Eligible " ,0
str4 BYTE " Not Eligible ",0
name BYTE 20 DUP (0)
minAge = 18

.code
main PROC
    mov edx , OFFSET str1
    call WriteString

    mov edx, OFFSET name
    mov ecx, SIZEOF name - 1
    call ReadString

    mov edx , OFFSET str2
    call WriteString

    call ReadInt

    cmp eax , minAge
    jb NotEligible

    mov edx, OFFSET str3
    call Writestring
    jmp Done

NotEligible:
    mov edx , OFFSET str4
    call WriteString

Done:
     ;call DumpRegs

    exit
main ENDP
END main
