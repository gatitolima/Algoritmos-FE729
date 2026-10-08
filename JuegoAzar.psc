Algoritmo JuegoAzar
	Definir secreto, contador, numeroIngresado Como Entero
	definir validacion Como Logico
	
	Escribir "=========  Bienvenido al Juego  ==========="
	escribir "REGLAS:"
	Escribir "- Escribe un numero de 1 a 50"
	Escribir "- Tienes 5 intentos"
	
	contador <- 0
	validacion <- falso
	secreto <- azar(50) + 1
	
	Repetir
		Escribir "Ingrese numero"
		leer numeroIngresado
		contador <- contador + 1
		
		si numeroIngresado > secreto Entonces
			Escribir "Mas Bajo"
			validacion <- falso
		SiNo
			si numeroIngresado < secreto Entonces
				escribir "Mas Alto"
				validacion <- Falso
			SiNo
				si numeroIngresado == secreto Entonces
					escribir "Correcto en ", contador, " intentos"
					validacion <- Verdadero
				FinSi
			FinSi
		FinSi
		
	Hasta Que contador=5 o validacion=verdadero 
	Escribir "Game Over"
	
FinAlgoritmo
