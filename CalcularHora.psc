Algoritmo CalcularHora
	definir Entrada Como Entero
	definir Horas, resultado1, Minutos Como real
	Entrada <- 130
	resultado1 <- Entrada / 60
	horas <- trunc(resultado1)
	minutos <- Entrada mod 60
	escribir "el dato de entrada es: ", Entrada, " minutos."
	escribir "Las horas son: ", horas, " horas."
	escribir "Los minutos son: ", minutos, " minutos."
FinAlgoritmo
