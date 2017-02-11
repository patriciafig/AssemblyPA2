; Programming Assignment 2
; CSCI 2525 Assembly Language
; Patricia Figueroa 


TITLE pa2.asm
INCLUDE Irvine32.inc 

     ;-----Part 1-----;

.data			  ;data directive segment, this is the data area
				  ;no varibles are to be defined here 
.code             ; code segment for part 1 
main PROC         ; main procedure defined here 
	mov ax, 0     ; zero out ax register before using 

	COMMENT !
	the instructions state that the result should be placed 
	in the EDX register. 
	1*2*3*4*5*6*7*8 = 40320, which will require 2 bytes of space.!

	mov ax, 1 * 2 * 3 * 4 * 5 * 6 * 7 * 8
	call DumpRegs       ; clears the register



    ;-----Part 2-----;

	.data                     ;data segment for part 2

	.code                     ;code segment for part 2
	mov bx, 0                 ; zero out bx register 
	mov bx, 8000h             ;Fills up bx to
	add bx, bx                ;sets overflow flag because added to bx


	call DumpRegs             ;clears the register 

	 mov cx, 0
	 mov cx, 8000h
	 add cx, cx

	;-----Part 3-----;

	.data                      ;data segment for part 3 
	SECONDS_IN_DAY = 24 * 60 * 60  

	.code                     ;code segment for part 3
	mov edx, 0                ;zero out edx register 
	MOV edx, SECONDS_IN_DAY   
	call DumpRegs 

	exit 
main ENDP       ;ends main prodecure 
END main        ;end of source code 
