//Ejemplo de agregar elementos a un arreglo en swift

import Cocoa

//Declaramos el arreglo vacío
var algunosInt = [Int]()

//Agregamos el primer elemento 
algunosInt.append(10)

//Se agrega otro elemento de la misma forma
algunosInt.append(20)

//El último elemento se agrega de otra forma
algunosInt += [30]

//Imprímimos los elementos añadidos
print("El primer elemento es: \(algunosInt[0])")

print("El segundo elemento es: \(algunosInt[1])")

print("El tercer elemento es: \(algunosInt[2])")
