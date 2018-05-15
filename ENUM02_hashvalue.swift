import Cocoa

enum TextAlignment {
    case left
    case right
    case center
    case justify
}//enum TextAlignment


var alignment:TextAlignment = TextAlignment.left
var alignmentLeft = TextAlignment.left
var alignmentRight = TextAlignment.right
var alignmentCenter = TextAlignment.center

switch alignment {
case .left:
    print("Alineamiento izquierdo")
case .right:
    print("Alineamiento derecho")
case .center:
    print("Alineamiento central")
case .justify:
    print("Alineamiento justificado")
} //switch

print("Caso de Alineamiento a la izquierda: \(TextAlignment.left.hashValue)")
print("Caso de Alineamiento a la derecha: \(TextAlignment.right.hashValue)")
print("Caso de Alineamiento al centro: \(TextAlignment.center.hashValue)")
print("Caso de Alineamiento variable alignment: \(alignment.hashValue)")
