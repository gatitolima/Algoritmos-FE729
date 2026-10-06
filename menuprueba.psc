Algoritmo menuprueba
	definir entrada como entero
	Definir nota Como Entero
	
	escribir "Ingrese una opcion 1-3: "
	Escribir "[1] Ingresa nota"
	Escribir "[2] Mostrar Categoria"
	Escribir "[3] Salir"
	leer entrada
	
	segun entrada
		1:
			escribir "Ingrese un a nota entre 0-100"
			leer nota
			si nota > 100 o nota < 0 Entonces
				Escribir "La nota ingresada no es Valida"
			FinSi
		2:
			Escribir "La categoria es: "
		3:
			Escribir "Saliendo del menu..."
	FinSegun
	
FinAlgoritmo
