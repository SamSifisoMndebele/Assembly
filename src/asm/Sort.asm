TITLE MASM Template						(main.asm)

INCLUDE ./INCLUDE/Irvine32.inc
.data

Sequence DWORD 132, 159, -16, 137, 6, 14, 67, -3, 0, 98, 45, 842, -12, -63, 48, 1180, -1500, 9999

.code

Comment /* Sorts Sequence to ascending sequence. */
Sort PROC USES eax ebx edi esi
	mov esi, lengthOf Sequence - 1
	MainSortLoop:
		mov edi, 0						;iter for Sequence
		mov bl, 0						;bool wasSwap = False
		Sorting:
			mov eax, Sequence[edi * 4]
			inc edi
			cmp eax, Sequence[edi * 4]
				jle IsSmaller
			xchg eax, Sequence[edi * 4]		;swap values
			dec edi
			mov Sequence[edi * 4], eax
			inc edi
			mov bl, 1					;wasSwap = Ture

			IsSmaller:
		cmp edi, esi			;goes through whole Sequence
			jb Sorting
	cmp bl, 1					;if (wasSwap == True) repeat
		je MainSortLoop
	ret
Sort ENDP


Comment /* Writes Sequence separated with white space. */
WriteSequence PROC USES eax edx edi
	mov esi, 0		;iter

	WriteDown:
		mov eax, Sequence[esi * 4]
		call WriteInt
		mov al, ' '
		call WriteChar
		inc esi
	cmp esi, lengthOf Sequence
		jb WriteDown

	call Crlf
	ret
WriteSequence ENDP


main PROC
	
	call WriteSequence
	call Sort
	call WriteSequence

	exit
main ENDP

END main