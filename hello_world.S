@
@ R0 - first parameter to printf
@ R1 - second parameter to printer
@ R7 - index counter
@

.thumb_func		    @ Necessary because sdk uses BLX
.global main	            @ Provide program starting address to linker

main:
	MOV	R7, #100		@ initialize counter to 0
	BL	stdio_init_all	@ initialize uart or usb
loop:
	LDR	R0, =helloworld	@ load address of helloworld string
	MOV	R1, R7		@ Move the counter to second parameter
	BL	printf
	SUB	R7, #1		@ Call pico_printf
	BNE loop		@ loop forever
		
.data
	       .align  4	@ necessary alignment
helloworld: .asciz   "Hello World %d\n"
