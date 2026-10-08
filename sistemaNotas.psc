//menu general del programa
SubAlgoritmo menu 
	Escribir "======================================"
	Escribir "==  Bienvenido al Sistema de notas  =="
	Escribir "======================================"
	Escribir ""
	Escribir "Selecciones una de las siguientes opciones:"
	Escribir ""
	Escribir "     1. Ingreso de notas."
	Escribir "     2. Mostrar notas y Categorias."
	Escribir "     3. Estadisticas."
	Escribir "     4. Sumar puntos extra."
	Escribir "     5. Salir."
	Escribir ""
FinSubAlgoritmo


//subproceso para el ingreso de notas
SubAlgoritmo ingresoDatos(nombres Por Referencia, notas Por Referencia)
	Definir i, j Como Entero
	
	Escribir "======================================"
	Escribir "==         Ingreso de Datos         =="
	Escribir "======================================"
	Para i <- 1 Hasta 5 Hacer
		Escribir "Ingrese el Nombre del alumno ", i," : "
		Leer nombres[i]
		Para j <- 1 Hasta 5 Hacer
			Escribir "Ingrese la nota ", j, " : "
			Leer notas[i,j]
		FinPara
	FinPara
FinSubAlgoritmo


//subproceso para mostrar los alumnos, notas y categorias
SubAlgoritmo notasYcatego(nombres, notas, prom)
	Definir n, i, j Como Entero
	Definir total Como Real
	
	Escribir "===================================="
	Escribir "==       Notas y Categorias       =="
	Escribir "===================================="
	Escribir ""
	Para i <- 1 Hasta 5 Hacer
		Escribir "Alumno: ", nombres[i]
		para j <- 1 Hasta 5 Hacer
			Escribir "Nota ",[i], " : ", notas[i,j]
		FinPara
	FinPara
FinSubAlgoritmo


//subproceso para sumar puntos extra
SubAlgoritmo Pextra
	Escribir "=========================================="
	Escribir "==       Ingreso de Puntos Extra      ===="
	Escribir "=========================================="
FinSubAlgoritmo


//SUBPROCESO DE ERROR
SubAlgoritmo Error
	Escribir "==========================================="
	Escribir "==========================================="
	Escribir "====               ERROR               ===="
	Escribir "====     INGRESE UNA OPCION VALIDA     ===="
	Escribir "==========================================="
	Escribir "==========================================="
FinSubAlgoritmo


SubProceso  Promedio(notas Por Valor, prom Por Referencia)
	definir i, j Como Entero
	Definir total Como Real
	
	para i <- 1 Hasta 5 Hacer
		total <- 0
		para j <- 1 Hasta 5 Hacer
			total <- total + notas[i,j]
		FinPara
		prom[i] <- total /5
	FinPara
FinSubProceso

SubProceso validar(prom por valor, validacion por referencia)
	definir i como entero
	
	para i <- 1 hasta 5 Hacer
		si prom[i] >= 90 y prom[i] <= 100 Entonces
			validacion <- "Sobresaliente"
		SiNo
			si prom[i] >= 76 y prom[i] <= 89 Entonces
				validacion <- "Notable"
			SiNo
				si prom[i] > 61 y prom[i] <= 75 Entonces
					validacion <- "Satisfactorio"
				SiNo
					validacion <- "Insuficiente"
			FinSi
		FinSi		
	FinSi
	
	FinPara
FinSubProceso


//programa principal
Algoritmo sistemaNotas
	Definir opIngresada, notas Como Entero
	Definir nombres, validacion Como Caracter
	Definir prom Como Real
	
	Dimensionar nombres[5]
	Dimensionar notas[5,5]
	Dimensionar prom[5]
	Dimensionar validacion[5]
	Repetir
		
	menu
	
	Escribir "Escriba su opcion: "
	leer opIngresada
	
	segun opIngresada
		1:
			ingresoDatos(nombres, notas)
		2:
			notasYcatego(nombres, notas, prom)
		3:
			Pextra
	FinSegun

	si opIngresada == 0 o opIngresada >3 entonces
		Error
	FinSi
		
Hasta Que opIngresada == 5
	
FinAlgoritmo
