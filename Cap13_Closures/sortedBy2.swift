//Ejemplo closure basicos

import UIKit

//Un arreglo desordenado
let volunteerCounts = [1,3,41,32,2,54,77,13]

//El metodo sorted(by:) recibe como parametro una funcion (Int, Int) -> Bool
let volunteerSorted = volunteerCounts.sorted(by: {
    (i: Int, j: Int) -> Bool in
    return i < j
})

//Imprimo el arreglo ordenado
print(volunteerSorted)
