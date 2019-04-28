import UIKit

class myFirstSingleton {
    static let sharedInstance = myFirstSingleton()
    var property = 0
    
    init() {
        print("Initializing...")
    }
}//myFirstSingleton

//Try singleton
let firstObject = myFirstSingleton.sharedInstance
firstObject.property = 2019

let secondObject = myFirstSingleton.sharedInstance
print("secondObject property value is \(secondObject.property)")

let thirdObject = myFirstSingleton.sharedInstance
thirdObject.property = 2020

print("secondObject property value is now \(secondObject.property)")



