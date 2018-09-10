//Ejemplo de Enumeration de tipo String

import Foundation

enum ProgrammingLanguage : String {
    case swift = "swift"
    case objectiveC = "objective-c"
    case c = "c"
    case cpp = "c++"
    case java = "java"
}//ProgrammingLanguage enumeration

let myFavoriteLanguage = ProgrammingLanguage.swift
print("Mi lenguaje de programación favorito es: \(myFavoriteLanguage.rawValue)")
