Algoritmo Notas
	Definir nota1, nota2, examenfinal Como Real
	Definir resultado Como Real
	Definir estaAprobado Como Logico
	
	escribir "Ingrese la nota del primer parcial"
	leer nota1
	escribir "Ingrese la nota del segundo parcial"
	leer nota2
	escribir "Ingrese la nota del examen final"
	leer examenfinal
	
	resultado <- nota1 + nota2 + examenfinal
	Escribir "Su nota final es: ", resultado
	
	Si resultado >= 61 Entonces
		Escribir "Aprobado"
	SiNo
		Escribir "Reprobado"
	FinSi
	
FinAlgoritmo
