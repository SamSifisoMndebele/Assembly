# `JMP` Instruction
* `JMP` is an unconditional jump to a label that is usually within the  same procedure.
* Syntax: `JMP target`
* Logic: `EIP`*(Instruction Pointer)* <-- target
  * `EIP` points to the next instruction to be executed in the program.
```asm
label:
    .
    .
    jmp label
```
---
# LOOP Instruction
* The `LOOP` instruction creates a counting loop
* Syntax: `LOOP target`
* Logic:
  * `ECX`*(Count Register)* <-- `ECX – 1`
  * if `ECX != 0`, jump to target
* Implementation: 
  * The assembler calculates the distance, in bytes, between the offset of the following instruction and the offset of the target label. It is called the relative offset.
  * The relative offset is added to EIP.

```asm
; The following loop calculates the sum of the integers 5 + 4 + 3 + 2 + 1
    mov  ax, 0  
    mov  ecx, 5
L1: add  ax, cx
    loop L1
```

## Nested Loop
If you need to code a loop within a loop, you must save the outer loop counter's ECX value. In the following example, the outer loop executes 100 times, and the inner loop 20 times.
```asm
.data
count DWORD ?

.code
    mov ecx,100         ; set outer loop count
L1:
    mov count,ecx       ; save outer loop count
    mov ecx,20          ; set inner loop count
L2: .
    .
    loop L2             ; repeat the inner loop
    mov ecx,count       ; restore outer loop count
    loop L1             ; repeat the outer loop
```

### Sum Example
The following code calculates the sum of an array of 16-bit integers.
```asm
.data
intarray WORD 100h,200h,300h,400h

.code
    mov edi, OFFSET intarray	; address of intarray
    mov ecx, LENGTHOF intarray	; loop counter
    mov ax, 0                   ; zero the accumulator
L1:
    add ax, [edi]               ; add an integer
    add edi, TYPE intarray      ; point to next integer
    loop L1                     ; repeat until ECX = 0
```
* Try the above code using a double word array
---