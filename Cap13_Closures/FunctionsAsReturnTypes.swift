//Ejemplo closure basicos (Function Return Types

import UIKit

//Un arreglo desordenado
let volunteerCounts = [1,3,41,32,2,54,77,13]

//El metodo sorted(by:) recibe como parametro una funcion (Int, Int) -> Bool
let volunteerSorted = volunteerCounts.sorted { $0 < $1 }

//Imprimo el arreglo ordenado
print(volunteerSorted)

func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(byAddingLights lights: Int,
                    toExistingLights existingLights: Int) -> Int {
        return lights + existingLights
    }//buildRoads
    return buildRoads
}//makeTownGrand()

var stoplights = 4
let townPlanByAddingLightsToExistingLights = makeTownGrand()
stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
print("Knowhere has \(stoplights) stoplights")
