INCLUDE ./INCLUDE/Irvine32.inc
.data

.code

main PROC

    mov ax,0040h
    mov es,ax 
    mov ax,0017h 
    mov di,ax 
    or  byte [es:di],40h    ;  why are there erors  -> ES:Dİ 

    mov ax, 4c00h ; exit to operating system.
    int 21h     

	
; call DumpRegs	; display the registers

exit
main ENDP
END main
