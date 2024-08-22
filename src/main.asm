INCLUDE Irvine32.inc

.data
bVal BYTE ?
wVal WORD ?
dVal DWORD ?
dVal2 DWORD ?

.code
main PROC

    mov al,-128
    neg al	        ; CF =  OF =

    mov ax,8000h
    add ax,2        ; CF =	OF =

    mov ax,0
    sub ax,2        ; CF =	OF =

    mov al,-5
    sub al,+125     ; CF =	OF =

    call DumpRegs

    exit
main ENDP
END main