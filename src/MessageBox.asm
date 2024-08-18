TITLE MASM Template						(main.asm)

INCLUDE ./INCLUDE/Irvine32.inc
.data

DialogBoxCaption BYTE "Hello, World!",0
DialogBoxText BYTE "Do you like this message box??",0

CaptionYES BYTE "NICE!",0
TextYES BYTE "I like it, too.",0Dh,0Ah,0

CaptionNO BYTE "Sadly...",0
TextNO BYTE "I am sorry about that.",0Dh,0Ah,0

.code

main PROC
	
	ShowMessage:
		INVOKE MessageBoxA, NULL, offset DialogBoxText, offset DialogBoxCaption, MB_YESNO or MB_ICONQUESTION

		cmp eax, 6
			je ShowOKText
		cmp eax, 7
			je ShowNOText
		Return:

	cmp eax, 4
		je ShowMessage

	exit

	ShowOKText:
		INVOKE MessageBoxA, NULL, offset TextYES, offset CaptionYES, MB_RETRYCANCEL or MB_ICONINFORMATION
	jmp Return

	ShowNOText:
		INVOKE MessageBoxA, NULL, offset TextNO, offset CaptionNO, MB_RETRYCANCEL or MB_ICONERROR
	jmp Return

main ENDP

END main