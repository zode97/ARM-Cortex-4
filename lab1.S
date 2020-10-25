;*************************************
; Program ASM_NewProject
; Changing registers (STM32F401RE)
; Written By: Shahzoda Staroverova
; Date: 10/09/2020
;*************************************

; Constants
x EQU 0x23
y EQU 0x5F
w EQU 0x0
z EQU 0x0
	
;*************************************
; Program Section
;*************************************
;Label Directive Value Comment
	AREA main, CODE, READONLY
	THUMB
	EXPORT __main


__main
	MOV r0,#x
	MOV r1,#y
	MOV r2,#z
	MOV r3,#w
	ADD r2, r0, r1   ;add r0 to r1 and put the results in r2(z)
	CMP r0, r1
	BLT __sub
	ADD r3, r0, r1
	B __end;
__sub
	SUB r3, r1, r0
	B __end
__end
	END ;end of program