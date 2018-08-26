//Ejemplo closure basicos

import UIKit

//Un arreglo desordenado
let volunteerCounts = [1,3,41,32,2,54,77,13]

func sortAscending(_ i : Int, _ j : Int) -> Bool {
    return i < j
}//sortAscending

//El metodo sorted(by:) recibe como parametro una funcion (Int, Int) -> Bool
let volunteerSorted = volunteerCounts.sorted(by: sortAscending)
