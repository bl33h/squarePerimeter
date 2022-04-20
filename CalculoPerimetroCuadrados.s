/* -----------------------------------------------
* UNIVERSIDAD DEL VALLE DE GUATEMALA
* Fabian Estuardo Juarez Tello 21440
* Sara Maria Perez Echeverria 21371
* Organización de computadoras y Assembler
* Ciclo 1 - 2022
*
* CalculoPerimetroCuadrados.s
* Caclulo de perimetros por medio de 1 valor ingresado por el usuario
*  x = l * 4
*  entrada de datos con scanf
*  imprime el resultado de los 3 datos
 ----------------------------------------------- */

	@@ codigo de assembler: se coloca en la seccion .text
	.text
	.align		2
	@@ etiqueta "main" llama a la funcion global
	.global		main
	.type		main, %function
main:
		@@ grabar registro de enlace en la pila
	stmfd	sp!, {lr}
	@ciclo de perimetro
    mov r10,#0 /*contador*/
    cicloP:
	ldr r0,=mensaje_ingreso
	bl puts
	ldr r0, =entrada
    ldr r1,=a
	bl scanf
	 @carga valores
    ldr r6, =a
    ldr r8,[r6]
	ldr r9, =b
	ldr r11,[r9]
	@suma a contador
    add r10,#1
	@multiplicacion por 4
    mul r8,r11
	@guarda valor y regresa
	mov r8,r8
	str r8,[r6]
    ldr r0,=Lmessage
    ldr r1,=a
    ldr r1,[r1]
    bl printf
	@compara si ya esta el input de 3 datos
    cmp r10,#3
    bne cicloP
	b fin

fin:
	@@ r0, r3 <- 0 como sennal de no error al sistema operativo
	mov	r3, #0
	mov	r0, r3

	@ colocar registro de enlace para desactivar la pila y retorna al SO
	ldmfd	sp!, {lr}
	bx	lr
.data
.align 2

a:	.word 0
b:	.word 4

Lmessage:
	.asciz "El perimetro del cuadrado es --> %d\n"
entrada:
	.asciz " %d"
mensaje_ingreso:
	.asciz "Ingrese el valor del lado del cuadrado del cual desea calcular el perimetro: "
