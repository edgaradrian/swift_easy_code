//Ejemplo básico de enumeration con valores asociados

import Cocoa

enum ShapeDimensions {

    case punto

    //Valor asociado es la longitud de un lado
    case cuadrado(side: Double)

    //Valor asociado la base y la altura
    case rectangulo(width: Double, height: Double)

    func area() -> Double {
        switch self {
        case .punto:
            return 0
        case let .cuadrado(side: side):
            return side * side
        case let .rectangulo(width: w, height: h):
            return w * h
        }//switch
    }//area

}//ShapeDimensions

var formaCuadrada = ShapeDimensions.cuadrado(side: 10.0)
var formaRectangular = ShapeDimensions.rectangulo(width: 5.0, height: 10.0)
var formaPunto = ShapeDimensions.punto

print("Area del cuadrado: \(formaCuadrada.area())")
print("Area del rectangulo: \(formaRectangular.area())")
print("Area del punto: \(formaPunto.area())")
