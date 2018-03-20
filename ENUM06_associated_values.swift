import Cocoa

enum ShapeDimensions {
  case cuadrado(lado: Double)
  case rectangulo(width: Double, height: Double)
  case point

  func area() -> Double {
    switch self {
      case .point:
        return 0
      case let .cuadrado(lado: l):
        return l * l
      case let .rectangulo(width: w, height: h):
        return w * h
    }//switch
  }//func area

}//enum ShapeDimensions

var cuadradaFigura = ShapeDimensions.cuadrado(lado: 10.0)
var rectanguloFigura = ShapeDimensions.rectangulo(width: 5.0, height: 10.0)
var puntoFigura = ShapeDimensions.point

print("Area del cuadrado: \(cuadradaFigura.area())")
print("Area del rectangulo: \(rectanguloFigura.area())")
print("Area del punto: \(puntoFigura.area())")
