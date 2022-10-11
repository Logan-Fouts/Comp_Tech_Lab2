@count from 0 to 9 on 7 segment display
	.EQU	LED_PINa, 16
	.EQU	LED_PINb, 17
	.EQU	LED_PINc, 18
	.EQU	LED_PINd, 19
	.EQU	LED_PINe, 20
	.EQU	LED_PINf, 21
	.EQU	LED_PINg, 22
	.EQU	GPIO_OUT, 1
	.EQU	sleep_time, 1000

.thumb_func
.global main

main:
@pin1
	MOV	R0, #LED_PINa
	BL	gpio_init
	MOV	R0, #LED_PINa
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
@pin2
	MOV	R0, #LED_PINb
	BL	gpio_init
	MOV	R0, #LED_PINb
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
@pin3	
	MOV	R0, #LED_PINc
	BL	gpio_init
	MOV	R0, #LED_PINc
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
@pin4
	MOV	R0, #LED_PINd
	BL	gpio_init
	MOV	R0, #LED_PINd
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
@pin5
	MOV	R0, #LED_PINe
	BL	gpio_init
	MOV	R0, #LED_PINe
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
@pin6
	MOV	R0, #LED_PINf
	BL	gpio_init
	MOV	R0, #LED_PINf
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
@pin7
	MOV	R0, #LED_PINg
	BL	gpio_init
	MOV	R0, #LED_PINg
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
	BL	stdio_init_all

loop:
@0
	MOV	R0, #LED_PINa
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINb
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINc
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINd
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINe
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINf
	MOV	R1, #1
	BL	link_gpio_put
	LDR	R0, =sleep_time
	BL	sleep_ms
	BL	off
@1
	MOV	R0, #LED_PINb
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINc
	MOV	R1, #1
	BL	link_gpio_put
	LDR	R0, =sleep_time
	BL	sleep_ms
	BL	off
@2
	MOV	R0, #LED_PINa
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINb
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINg
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINe
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINd
	MOV	R1, #1
	BL	link_gpio_put
	LDR	R0, =sleep_time
	BL	sleep_ms
	BL	off
@3
	MOV	R0, #LED_PINa
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINb
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINc
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINd
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINg
	MOV	R1, #1
	BL	link_gpio_put
	LDR	R0, =sleep_time
	BL	sleep_ms
	BL	off
@4
	MOV	R0, #LED_PINc
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINg
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINb
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINf
	MOV	R1, #1
	BL	link_gpio_put
	LDR	R0, =sleep_time
	BL	sleep_ms
	BL	off
@5
	MOV	R0, #LED_PINa
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINg
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINf
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINd
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINc
	MOV	R1, #1
	BL	link_gpio_put
	LDR	R0, =sleep_time
	BL	sleep_ms
	BL	off
@6
	MOV	R0, #LED_PINa
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINf
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINe
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINd
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINc
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINg
	MOV	R1, #1
	BL	link_gpio_put
	LDR	R0, =sleep_time
	BL	sleep_ms
	BL	off
@7
	MOV	R0, #LED_PINc
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINb
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINa
	MOV	R1, #1
	BL	link_gpio_put
	LDR	R0, =sleep_time
	BL	sleep_ms
	BL	off
@8
	MOV	R0, #LED_PINa
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINb
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINc
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINd
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINe
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINf
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINg
	MOV	R1, #1
	BL	link_gpio_put
	LDR	R0, =sleep_time
	BL	sleep_ms
	BL	off
@9
	MOV	R0, #LED_PINf
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINg
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINb
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINa
	MOV	R1, #1
	BL	link_gpio_put
	MOV	R0, #LED_PINc
	MOV	R1, #1
	BL	link_gpio_put   
	LDR	R0, =sleep_time
	BL	sleep_ms
	BL	off
	B   loop

@turns off all pins
off:
	PUSH {r4, lr}
	MOV	R0, #LED_PINa
	MOV	R1, #0
	BL	link_gpio_put
	MOV	R0, #LED_PINb
	MOV	R1, #0
	BL	link_gpio_put
	MOV	R0, #LED_PINc
	MOV	R1, #0
	BL	link_gpio_put
	MOV	R0, #LED_PINd
	MOV	R1, #0
	BL	link_gpio_put
	MOV	R0, #LED_PINe
	MOV	R1, #0
	BL	link_gpio_put
	MOV	R0, #LED_PINf
	MOV	R1, #0
	BL	link_gpio_put
	MOV	R0, #LED_PINg
	MOV	R1, #0
	BL	link_gpio_put
	LDR	R0, =sleep_time
	BL	sleep_ms
	POP {r4, pc}

.data
.align  4
test: .asciz   "%d!\n"
