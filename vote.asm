
INCLUDE ./INCLUDE/Irvine32.inc

.data
str1 BYTE " Enter your name! " , 0
fileName BYTE 20 DUP (0)
age = 18
str2 BYTE " Enter your age! " , 0
str3 BYTE " Eligible " ,0
str4 BYTE " Not Eligible ",0

.code
main PROC

mov edx , OFFSET str1
call WriteString

mov edx, OFFSET fileName
mov ecx, SIZEOF fileName - 1
call ReadString

mov edx , OFFSET str2
call WriteString

call ReadInt

cmp eax , age
jb L1

mov edx, OFFSET str3
call Writestring
jmp L2

L1: 
mov edx , OFFSET str4
call WriteString

L2:
 call DumpRegs

exit
main ENDP
END main
