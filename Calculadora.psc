SubProceso mostrarMenu
	Escribir "==============="
	Escribir "  Calculadora  "
	Escribir "==============="
	Escribir "[1] Suma"
	Escribir "[2] Resta"
	Escribir "[3] Multiplicación"
	Escribir "[4] División"
FinSubProceso

Funcion resultadoSuma <- Suma(a,b,c,d,e)
	Definir resultadoSuma Como Entero
	resultadoSuma <- a+b+c+d+e
FinFuncion

Funcion resultadoResta <- Resta(a,b)
	Definir resultadoResta Como Entero
	resultadoResta <- a-b
FinFuncion

Funcion resultadoMultiplicacion <- Multiplicacion(a,b,c)
	Definir resultadoMultiplicacion Como Entero
	resultadoMultiplicacion <- a*b*c
FinFuncion

Funcion resultadoDivision <- Division(a,b)
	Definir resultadoDivision Como Real
	resultadoDivision <- a/b
FinFuncion

SubProceso MostrarResultado(algunValor)
	Escribir "El resultado de su operación es: ", algunValor
FinSubProceso

Algoritmo Calculadora
	
	Definir opcionMenu Como Entero
	Definir num1, num2, num3, num4, num5, resultado Como Entero
	definir num6, num7, resultado2 Como Real
	
	mostrarMenu
	
	Escribir "Seleccione una de las cuatro opciones"
	Leer opcionMenu
	
	Segun opcionMenu Hacer
		1:
			Escribir "Esta es la opcion Suma"
			Escribir "Ingrese 5 números enteros"
			Leer num1, num2, num3, num4, num5
			resultado <- Suma(num1, num2, num3, num4, num5)
			MostrarResultado(resultado)
		2:
			Escribir "Esta es la opcion Resta"
			Escribir "Ingrese el valor principal"
			Leer num1
			Escribir "Ingrese el valor a restar"
			leer num2
			resultado <- Resta(num1, num2)
			MostrarResultado(resultado)
		3:
			Escribir "Esta es la opcion Multiplicacion"
			Escribir "Ingrese 3 valores a Multiplicar"
			Leer num1, num2, num3
			resultado <- Multiplicacion(num1, num2, num3)
			MostrarResultado(resultado)
		4:
			Escribir "Esta es la opcion Division"
			Escribir "Ingrese el valor a dividir"
			Leer num6
			Escribir "Ingrese el Divisor"
			leer num7
			resultado2 <- Division(num6, num7)
			MostrarResultado(resultado2)
		De Otro Modo:
			Escribir "Opcion Invalida"
	
	FinSegun
	
FinAlgoritmo
