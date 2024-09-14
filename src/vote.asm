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
    call WriteString                ; Print str1

    mov edx, OFFSET userName
    mov ecx, SIZEOF userName - 1
    call ReadString                 ; Read the user name

    mov edx , OFFSET str2
    call WriteString                ; Print str2

    call ReadInt                    ; Read the user age to eax

    mov edx, OFFSET userName
    call WriteString                ; Print user name

    cmp eax , minAge                ; check if age(eax) < minAge
    jb NotEligible                  ; if age < minAge jump to run NotEligible

    ; Else run this and jump to Done
    mov edx, OFFSET str3
    call Writestring                ; Print is Eligible
    jmp Done

NotEligible:
    mov edx , OFFSET str4
    call WriteString                ; Print is Not Eligible

Done:
     ;call DumpRegs
    exit
main ENDP
END main
