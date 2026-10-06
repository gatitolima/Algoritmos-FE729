Algoritmo calcularNota
	definir NOTA_MINIMA como Entero
	definir parcial1, parcial2, examenfinal, notaFinal Como Real
	definir aprobado Como Logico
	NOTA_MINIMA <- 61
	escribir  "primer parcial (0 a 30): "
	leer parcial1
	escribir "segundo parcial (0 a 30): "
	leer parcial2
	escribir "Examen final (0 a 40): "
	leer examenFinal
	NOTAfINAL <- parcial1 + parcial2 + examenFinal
	aprobado <- notaFinal >= NOTA_MINIMA
	
	escribir "Nota final: ", notaFinal
	escribir "Aprobado: ", aprobado
	
FinAlgoritmo
