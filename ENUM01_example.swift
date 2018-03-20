import Foundation

enum TextAlignment {
  case left
  case right
  case center
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
} //switch
