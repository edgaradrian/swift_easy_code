import Cocoa

enum ProgrammingLanguage: String {
  case swift 
  case objectivec = "Objective-c"
  case c = "c"
  case cpp = "c++"
  case java = "java"
}

let miLenguajeFavorito = ProgrammingLanguage.swift
print("Mi lenguaje favorito de programación es: \(miLenguajeFavorito.rawValue)")
