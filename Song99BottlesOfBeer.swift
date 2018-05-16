import UIKit

func getMessage(numero : Int) {

    var cadena : String = "\(numero) bottles of beer on the wall, \(numero) bottles of beer.\n Take one down and pass it around,"

    if numero > 1 {
        cadena.append("\(numero-1) bottles of beer on the wall.\n\n")
    }else {
        cadena.append(contentsOf: " no more bottles of beer on the wall.\n\n\n")
        cadena.append(contentsOf: "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.")
    }

    print(cadena)
    
}//getMessage


for contador in stride(from: 99, to: 0, by: -1) {
    getMessage(numero: contador)
}
