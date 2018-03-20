import Cocoa

enum TextAlignment: Int {
    case left = 10
    case right = 20
    case center = 30
    case justify = 40
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

print("Caso de Alineamiento a la izquierda: \(TextAlignment.left.rawValue)")
print("Caso de Alineamiento a la derecha: \(TextAlignment.right.rawValue)")
print("Caso de Alineamiento al centro: \(TextAlignment.center.rawValue)")
print("Caso de Alineamiento variable alignment: \(alignment.rawValue)")
