@ Done By Samuel Brandt and Logan Fouts Group F
@ Assembler program print out "Hello World"
@ using the Pico SDK.
@
@ R0 - first parameter to printf
@ R1 - second parameter to printer
@ R7 - index counter
@

.thumb_func            @ Necessary because sdk uses BLX
.global main                @ Provide program starting address to linker

main:
    BL    stdio_init_all    @ initialize uart or usb
again:
    MOV    R7, #100        @ Re-initialize counter to 0
loop:
    LDR    R0, =helloworld    @ load address of helloworld string
    MOV    R1, R7        @ Move the counter to second parameter
    BL    printf        @ Call pico_printf
    CMP R7, #0			@ Check if R7 is equal to 0
    BEQ again			@ Branch if the counter is equal to 0
    SUB    R7, #1        @ Decrement counter
    B    loop        @ loop forever

.data
.align  4    @ necessary alignment
helloworld: .asciz   "Hello World %d\n"