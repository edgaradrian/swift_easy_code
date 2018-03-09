//Ejemplo de conjuntos

import Cocoa

//Declaración de conjunto
var miSet = Set<Character>()

//Cantidad de elementos
print("Numero de elementos del Set: \(miSet.count)")

//Insertado en el conjunto
miSet.insert("a")

//¿Está vacío el Set?
print("¿Esta vacio? \(miSet.isEmpty)")

//Remover el elementos
miSet.remove("a")

//Revisar si contiene el elemento
print("Contiene el caracter a " + String(miSet.contains("a")) )



