//ejemplo de sumar arreglos

import Cocoa

var miArregloA = [Int] (repeating: 2, count: 2)
var miArregloB = [Int] (repeating: 3, count: 1)

var miArregloC = miArregloA + miArregloB

for item in miArregloC {
	print("El item es: \(item)")
}//for