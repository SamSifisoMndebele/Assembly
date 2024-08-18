# `OFFSET` Operator
* `OFFSET` returns the distance in bytes, of a label from the beginning of its enclosing segment
  * Protected mode: 32 bits
  * Real mode: 16 bits
* The Protected-mode programs we write use only a single segment (flat memory model).

```asm
; Let's assume that the data segment begins at 00404000h
.data
bVal BYTE ?
wVal WORD ?
dVal DWORD ?
dVal2 DWORD ?

.code
    mov esi,OFFSET bVal 	; ESI = 00404000
    mov esi,OFFSET wVal 	; ESI = 00404001
    mov esi,OFFSET dVal 	; ESI = 00404003
    mov esi,OFFSET dVal2	; ESI = 00404007
```

* The value returned by OFFSET is a pointer. Compare the following code written for both C++ and assembly language:
```c++
// C++ version:
char array[1000];
char *p = array;
```
```asm
; Assembly language:
.data
array BYTE 1000 DUP(?)

.code
mov	 esi, OFFSET array
```
---
# `PTR` Operator
Overrides the default type of label (variable). Provides the flexibility to access part of a variable.

```asm
.data
myDouble DWORD 12345678h

.code
    mov ax, myDouble                 ; error – why?

    mov al, BYTE PTR  myDouble       ; AL = 78h
    mov al, BYTE PTR [myDouble+1]    ; AL = 56h
    mov al, BYTE PTR [myDouble+2]    ; AL = 34h
    mov ax, WORD PTR  myDouble       ; AX = 5678h
    mov ax, WORD PTR [myDouble+2]    ; AX = 1234h

    mov WORD PTR myDouble, 4321h     ; saves 4321h
```
* Use `LABEL` directive to avoid `PTR` operator
  * ```asm
    myByte LABEL BYTE
    myWord LABEL WORD
    myDouble DWORD 12345678h
    ```
---
# `TYPE` Operator
The `TYPE` operator returns the size, in bytes, of a single element of a data declaration.
```asm
.data
var1 BYTE ?
var2 WORD ?
var3 DWORD ?
var4 QWORD ?

.code
    mov eax,TYPE var1	; 1
    mov eax,TYPE var2	; 2
    mov eax,TYPE var3	; 4
    mov eax,TYPE var4	; 8
```
---
# `LENGTHOF` Operator
The `LENGTHOF` operator counts the number of elements in a single data declaration.
```asm
.data	LENGTHOF
byte1  BYTE 10,20,30            ; 3
array1 WORD 30 DUP(?),0,0       ; 32
array2 WORD 5 DUP(3 DUP(?))     ; 15
array3 DWORD 1,2,3,4            ; 4
digitStr BYTE "12345678",0      ; 9

.code
    mov ecx, LENGTHOF array1        ; 32
```
---
# `SIZEOF` Operator
The `SIZEOF` operator returns a value that is equivalent to multiplying LENGTHOF by TYPE.
```asm
.data	SIZEOF
byte1  BYTE 10,20,30            ; 3
array1 WORD 30 DUP(?),0,0	; 64
array2 WORD 5 DUP(3 DUP(?))	; 30
array3 DWORD 1,2,3,4            ; 16
digitStr BYTE "12345678",0	; 9

.code
    mov ecx,SIZEOF array1	; 64
```
---
# `LABEL` Directive
- Assigns an alternate label name and type to an existing storage location
- LABEL does not allocate any storage of its own
- Removes the need for the PTR operator
```asm
.data
dwList   LABEL DWORD
wordList LABEL WORD
intList  BYTE 00h,10h,00h,20h

.code
    mov eax,dwList	; 20001000h
    mov cx,wordList	; 1000h
    mov dl,intList	; 00h
```


