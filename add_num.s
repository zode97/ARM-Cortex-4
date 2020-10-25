;*************************************
; Program Addition
; ADD 10 random numbers in array
; Written By: Shahzoda Staroverova
; Date: 10/18/2020
;*************************************

	AREA SUMR, CODE, READONLY
	ENTRY
	LDR r2,LENGTH ;length of the array 
	LDR r6, SUM
	SUB r2, r2, #1
	MOV r6,#0 ;set sum to 0
FOR_INIT
	MOV r1,#0 ; assign starting index
	ADR r3, ARRAY ;start with A[0] and assign the address to r3
FOR_CMP
	CMP r1, r2
	BGT STOP
	LDR r4, [r3], #4
	ADD r6, r6, r4
	ADD r1, r1, #1
	B STOP
STOP
	B STOP
	
	AREA SUMR, CODE, READWRITE
	ALIGN
SUM DCD 0
ARRAY DCD 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
LENGTH DCD 10
	END
	