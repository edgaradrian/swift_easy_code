//Ejemplo Arreglo con enumeración

import Cocoa

//Declaración de arreglo
var miArreglo = [String]()

//Se agregan elementos al arreglo
miArreglo.append("Apple")
miArreglo.append("Amazon")
miArreglo.append("Google")

//Se enumera el arreglo
for (indice, elemento) in miArreglo.enumerated(){
    print("El indice es: \(indice) del elemento: \(elemento)")
}//for enumeration
