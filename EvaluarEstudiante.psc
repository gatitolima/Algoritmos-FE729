Algoritmo EvaluarEstudiante
	Definir NOTA_MINIMA Como Entero
	definir notaFinal Como Real
	NOTA_MINIMA <- 60
	
	Escribir "ingrese la nota final: "
	Leer notaFinal
	
	si notaFinal >= NOTA_MINIMA Entonces
		Escribir  "APROBADO"
	SiNo
		Escribir  "REPROBADO"
	FinSi
	
	si notaFinal >= 90 Entonces
		Escribir "Felicitaciones"
	FinSi
FinAlgoritmo
