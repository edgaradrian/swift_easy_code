//Ejemplo continue

import Cocoa

var indice:Int = 10

repeat{

	indice += 1
	if indice == 15 {
		continue
	}
	print("EL indice es: \(indice)")
	
} while (indice < 20)