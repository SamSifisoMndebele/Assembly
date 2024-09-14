INCLUDE Irvine32.inc

.data
str1 BYTE " Enter your name! " , 0
str2 BYTE " Enter your age! " , 0
str3 BYTE " you are Eligible to vote.",0
str4 BYTE " you are Not Eligible to vote.",0
userName BYTE 20 DUP (0)
minAge = 18

.code
main PROC
    mov edx , OFFSET str1
    call WriteString

    mov edx, OFFSET userName
    mov ecx, SIZEOF userName - 1
    call ReadString

    mov edx , OFFSET str2
    call WriteString

    call ReadInt

    mov edx, OFFSET userName
    call WriteString

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
