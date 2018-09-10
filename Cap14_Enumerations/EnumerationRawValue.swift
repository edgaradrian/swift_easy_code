//Ejemplo rawValue de tipo Int

import Foundation

enum TextAligment : Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}//enum TextAligment

print("left has raw value \(TextAligment.left.rawValue)")
print("right has raw value \(TextAligment.right.rawValue)")
print("center has raw value \(TextAligment.center.rawValue)")
print("justify has raw value \(TextAligment.justify.rawValue)")

//Creando un raw value
let myRawValue = 20

//Tratando de convertir un raw value en un TextAligment
if let myAlignment = TextAligment(rawValue: myRawValue) {
    print("exitosamente convertimos \(myRawValue) a TextAligment")
} else {
    //Conversion falló
    print("\(myRawValue) no corresponde a un caso de TextAligment")
}
