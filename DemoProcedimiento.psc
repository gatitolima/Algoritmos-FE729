SubProceso MostrarTitulo
	// subproceso hijo
	Escribir "==========================="
	Escribir " Laboratorio de Algoritmos "
	Escribir "==========================="
FinSubProceso

Algoritmo DemoProcedimiento
	// proceso principal
	
	// se invoca la ejecucion del subproceso
	MostrarTitulo
	
	// al retornar muestra este mensaje
	Escribir "El procedimiento ya terminó."
FinAlgoritmo
