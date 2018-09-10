//Ejemplo de enumeración colocando por default valores enteros a la enumeración

import Foundation

enum TextAligment : Int {
    case left
    case right
    case center
    case justify
}//enum TextAligment

var aligment = TextAligment.justify

//Por default le asigna a cada caso un valor entero por su posición a partir de cero
print("Left has raw value \(TextAligment.left.rawValue)")//imprime 0
print("Right has raw value \(TextAligment.right.rawValue)")//imprime 1
print("Center has raw value \(TextAligment.center.rawValue)")//imprime 2
print("Justify has raw value \(TextAligment.justify.rawValue)")//imprime 3
//imprime 3 porque tiene justify raw value
print("aligment has raw value \(aligment.rawValue)")
