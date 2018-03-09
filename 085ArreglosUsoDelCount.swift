//Ejemplo Arreglo con propiedad count

import Cocoa

var miArregloA = [Int] (repeating: 2, count: 2)
var miArregloB = [Int] (repeating: 3, count: 2)

//Adherimos los dos arreglos al arreglo C
var miArregloC = miArregloA + miArregloB

//Imprimimos los valores
print("El arreglo C tiene \(miArregloC.count) elementos")


