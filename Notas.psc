Algoritmo Notas
	Definir nota1, nota2, examenfinal Como Real
	Definir resultado Como Real
	Definir estaAprobado, datosOk Como Logico
	
	escribir "Ingrese la nota del primer parcial"
	leer nota1
	escribir "Ingrese la nota del segundo parcial"
	leer nota2
	escribir "Ingrese la nota del examen final"
	leer examenfinal
	
	datosOk <- (nota1 >= 0) Y (nota1 <= 30)
	datosOk <- datosOk Y (nota2 >= 0) Y (nota2 <= 30)
	datosOk <- datosOk Y (examenfinal >= 0) Y (examenfinal <= 40)

	
	Escribir "Datos validos: ", datosOk
	
	si datosOk = Verdadero Entonces
		
		resultado <- nota1 + nota2 + examenfinal		
		Escribir "Su nota final es: ", resultado
		
		Si resultado >= 61 Entonces
			Escribir "Aprobado"
		SiNo
			Escribir "Reprobado"
		FinSi
		
	SiNo
		Escribir "Datos incorrectos intente de nuevo"
	FinSi
	
FinAlgoritmo
