//Ejemplo de enumeration con String y el valor default

import Foundation

enum ProgrammingLanguage : String {
    case swift
    case objectiveC = "objectiveC"
    case c
    case cpp = "c++"
    case java
}//ProgrammingLanguage

//Imprime el valor por default "swift"
let myFavoriteLanguage = ProgrammingLanguage.swift
print("Mi lenguaje de programación favorito es: \(myFavoriteLanguage.rawValue)")
