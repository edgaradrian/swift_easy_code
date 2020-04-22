import UIKit

let words = ["stay","home","stay","safe"]
let numbers = [2,9,2,1,9,8,7,0,4]
let names = ["El Santo","Super Raton","Octagon","Atlantis","Brazo de Oro","Brazo de Plata","Super Brazo"]

print("***Capitalized")
let capWords = words.map{ $0.capitalized }
print(capWords)

print("***Uppercased")
let upperWords = words.map{ $0.uppercased() }
print(upperWords)

let doublesNumbers = numbers.map { $0 * 2 }
print(doublesNumbers)

print("***Filter Array")
let filterNames = names.filter{ $0.hasPrefix("Brazo") }
print(filterNames)


