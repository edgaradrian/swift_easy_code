//Ejemplo closure basicos Function As Arguments

import UIKit

//Un arreglo desordenado
let volunteerCounts = [1,3,41,32,2,54,77,13]

//El metodo sorted(by:) recibe como parametro una funcion (Int, Int) -> Bool
let volunteerSorted = volunteerCounts.sorted { $0 < $1 }

//Imprimo el arreglo ordenado
print(volunteerSorted)

//funcion que recibe una funcion como argumento y devuelve una funcion
func makeTownGrand(withBudget budget: Int,
                   condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int,
                        toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }//buildRoads
        return buildRoads
    } else {
        return nil
    }
}//makeTownGrand()

func evaluate(budget : Int) -> Bool {
    return budget > 10_000
}

var stoplights = 4
//Ejemplo 1: Se devuelve nil porque no cumple con la condicion de la funcion evaluate
if let townPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 1_000, condition: evaluate) {
    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
}
print("Knowhere has \(stoplights) stoplights")

//Ejemplo 2:
if let newTownPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 10_500, condition: evaluate) {
    stoplights = newTownPlanByAddingLightsToExistingLights(4, stoplights)
}
print("New Town has \(stoplights) stoplights")
