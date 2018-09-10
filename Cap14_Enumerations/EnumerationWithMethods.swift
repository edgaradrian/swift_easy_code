//Ejemplo de enumeration con metodos y empleo de mutating

import Foundation

enum Lightbulb {
    case on
    case off

    func surfaceTemperature(forAmbientTemperature ambient : Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }//func surfaceTemperature

    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }

}//enum

var bulb = Lightbulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("La temperatura del bulbo es \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("La temperatura del bulbo es \(bulbTemperature)")
