import Cocoa

enum Lightbulb {
    case on
    case off

    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }//switch
    }//func surfaceTemperature

}//enum


var bulbo = Lightbulb.off  //aqui cambiar a on y probar
let ambientTemperature = 77.0

var bulbTemperature = bulbo.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("La temperatura del bulbo es: \(bulbTemperature)")
