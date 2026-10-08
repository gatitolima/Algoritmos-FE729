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
SubAlgoritmo ingresoDatos
	Definir 
	Escribir "======================================"
	Escribir "==         Ingreso de Datos         =="
	Escribir "======================================"
FinSubAlgoritmo


//subproceso para mostrar los alumnos, notas y categorias
SubAlgoritmo notasYcatego
	Escribir "===================================="
	Escribir "==       Notas y Categorias       =="
	Escribir "===================================="
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


SubProceso promedio 
	
FinSubProceso

//programa principal
Algoritmo sistemaNotas
	Definir opIngresada Como Entero
	Definir nombres Como Caracter
	Definir notas Como Real
	Dimensionar nombres[10]
	Dimensionar notas[10,5]
	Repetir
		
	menu
	
	Escribir "Escriba su opcion: "
	leer opIngresada
	
	segun opIngresada
		1:
			ingresoDatos
		2:
			notasYcatego
		3:
			Pextra
	FinSegun

	si opIngresada == 0 o opIngresada >3 entonces
		Error
	FinSi
		
Hasta Que opIngresada == 5
	
FinAlgoritmo
