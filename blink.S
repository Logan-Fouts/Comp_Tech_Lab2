	.EQU LED_PIN1, 25
	.EQU GPIO_OUT, 1
	.EQU sleep_time, 1000

.thumb_func
.global main

main:
	MOV R0, #LED_PIN1
	BL gpio_init
	MOV R0, #LED_PIN1
	MOV R1, #GPIO_OUT
	BL link_gpio_set_dir

loop:
	MOV R0, #LED_PIN1
	BL link_gpio_put
	LDR R0, =sleep_time
	BL sleep_ms
	MOV R0, #LED_PIN1
	MOV R1, #0
	BL link_gpio_put
	LDR R0, =sleep_time
	BL sleep_ms
	MOV R0, #LED_PIN1
	MOV R1, #1
	BL link_gpio_put
	B	loop