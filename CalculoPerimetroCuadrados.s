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

	ldr r0,=mensaje_ingreso
	bl puts
	
	@ ingreso de datos
	@ r0 contiene formato de ingreso
	@ r1 contiene direccion donde almacena dato leido
	ldr r0,=formato
	ldr r1,=a
	ldr r2,=formato
	ldr r3,=b
	ldr r4,=formato
	ldr r5,=c
	bl scanf

	@ imprime lo que recibio
	ldr r0,=formato
	ldr r1,=a
	ldr r1,[r1]
	ldr r2,=formato
    ldr r3,=b
	ldr r3,[r3]
	ldr r4,=formato
    ldr r5,=c
	ldr r5,[r5]
	bl printf


	b fin

Num_Mal:
	ldr r0,=mal
	bl puts
	bl getchar @para que borre la informacion del buffer de teclado

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
b:	.word 0
c:	.word 0
x: 	.word 0
y:  .word 0
z:  .word 0

Lmessage:
	.asciz "El perimetro del cuadrado es --> %d\n"
formato:
	.asciz " %d\n"
entrada:
	.asciz " %d"
mensaje_ingreso:
	.asciz "Ingrese lado de cuadrado: "
mal:
	.asciz "Ingreso incorrecto\n"
