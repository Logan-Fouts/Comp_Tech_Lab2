	.EQU LED_PIN1, 25  @The Led on the pico itself
	.EQU GPIO_OUT, 1
	.EQU sleep_time, 1000  @Duration of sleep time

.thumb_func
.global main

main:
	MOV R0, #LED_PIN1     @Move led into R0
	BL gpio_init          @Initialize LEDPIN1 which is the Led
	MOV R0, #LED_PIN1 
	MOV R1, #GPIO_OUT     @Set R1 as the gpio out
	BL link_gpio_set_dir  @set the gpio to be output

loop:
	MOV R0, #LED_PIN1     @Move led into R0
	BL link_gpio_put
	LDR R0, =sleep_time
	BL sleep_ms
	MOV R0, #LED_PIN1   
 	MOV R1, #0            @Move 0 into R1
	BL link_gpio_put      @Turn light off
	LDR R0, =sleep_time
	BL sleep_ms
	MOV R0, #LED_PIN1
	MOV R1, #1            @Turn Light On
	BL link_gpio_put
	B	loop
