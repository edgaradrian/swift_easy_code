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

    mutating func toggle(){
        switch self {
          case .on:
            self = .off
          case .off:
            self = .on
        }
    }//toggle

}//enum


var bulbo = Lightbulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulbo.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("La temperatura del bulbo es: \(bulbTemperature)")

bulbo.toggle()
bulbTemperature = bulbo.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("La temperatura del bulbo es: \(bulbTemperature)")
