# Flags
## Zero Flag (ZF)
* The Zero flag is set when the result of an operation produces zero in the destination operand.
```asm
mov cx,1
sub cx,1 	; CX = 0, ZF = 1
mov ax,0FFFFh
inc ax 	; AX = 0, ZF = 1
inc ax 	; AX = 1, ZF = 0
```

```
Remember...
    A flag is set when it equals 1. 
    A flag is clear when it equals 0.
```

The Sign flag is set when the destination operand is negative. The flag is clear when the destination is positive.
```asm
mov cx, 0
sub cx, 1 	; CX = -1, SF = 1
add cx,  	; CX = 1, SF = 0
```

The sign flag is a copy of the destination's highest bit:
```asm
mov al,0
sub al,1            ; AL = 11111111b, SF = 1
add al,2            ; AL = 00000001b, SF = 0
```
---

## Carry Flag (CF)
The Carry flag is set when the result of an operation generates an unsigned value that is out of range (too big or too small for the destination operand).
```asm
mov al,0FFh
add al,1	; CF = 1, AL = 00

; Try to go below zero:
mov al,0
sub al,1	; CF = 1, AL = FF
```

## Example Question
For each of the following marked entries, show the values of the destination operand and the Sign, Zero, and Carry flags
```asm
mov ax,00FFh
add ax,1	; AX=       SF=  ZF=  CF=
sub ax,1	; AX=       SF=  ZF=  CF=
add al,1	; AL=       SF=  ZF=  CF=
mov bh,6Ch
add bh,95h	; BH=       SF=  ZF=  CF=

mov al,2
sub al,3	; AL=       SF=  ZF=  CF=

```
---

# Overflow Flag (OF)
The Overflow flag is set when the signed result of an operation is invalid or out of range.
```asm
; Example 1
mov al,+127
add al,1	; OF = 1,   AL = -128

; Example 2
mov al,7Fh	; OF = 1,   AL = 80h
add al,1
```
###### Try this
```asm
mov al,-128
neg al	        ; CF =  OF = 

mov ax,8000h
add ax,2        ; CF =	OF =

mov ax,0
sub ax,2        ; CF =	OF =

mov al,-5
sub al,+125     ; CF =	OF =
```