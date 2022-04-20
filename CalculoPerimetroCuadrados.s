/* -----------------------------------------------
* UNIVERSIDAD DEL VALLE DE GUATEMALA
* Fabian Estuardo Juarez Tello 21440
* Sara Maria Perez Echeverria 21371
* Organización de computadoras y Assembler
* Ciclo 1 - 2022
*
* CalculoPerimetroCuadrados.s
* Caclulo de premietros por medio de 1 valor ingresado por el usuario
*  x = l * 4
*  entrada de datos con scanf
*  si hubo error en ingreso imprime mensaje
*  sino prosigue hasta imprimir el resultado de los 3 datos
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
	@ciclo de potencia
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
    add r10,#1
    mul r8,#4
	mov r8,r8
	str r8,[r6]
    ldr r0,=Lmessage
    ldr r1,=a
    ldr r1,[r1]
    bl printf
    cmp r10,#3
    bne cicloP
    mov r8,r8
    @guarda valor y regresa
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

Lmessage:
	.asciz "El perimetro del cuadrado es --> %d\n"
formato:
	.asciz " %d\n"
entrada:
	.asciz " %d"
mensaje_ingreso:
	.asciz "Ingrese lado de cuadrado: "
