//Ejemplo de Repeat con Break

import Cocoa

var indice:Int = 10

repeat{

	indice += 1
	if indice == 15 {
		break
	}//if
	
	print("El indice va en: \(indice)")
	
} while ( indice < 20)
