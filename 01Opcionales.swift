//Opcionales

import Cocoa

var ab: String?
var ac: String?
var ad: Int?
var ae: String?


if let vab = ab, let vac = ac, let vad = ad , let vae = ae {
    print("\(vab) \(vac) \(vad) \(vae)")
}//if


//Separator test
print("Astrid", "Edgar", separator: " y ", terminator: " .")
