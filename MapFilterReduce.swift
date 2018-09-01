import UIKit

//Ejemplo de uso de map
//map transforma un arreglo en otro.
let precinctPopulations = [1244, 2021, 2156]
let projectedPopulations = precinctPopulations.map { (population : Int) -> Int in
    return population * 2
}
print("\(projectedPopulations)")

//Ejemplo de filter
//filter filtra un arreglo
let bigProjections = projectedPopulations.filter { (projection) -> Bool in
    return projection > 4_000
}
print("\(bigProjections)")


//Ejemplo de reduce
//reduce a un solo valor
let totalProjection = projectedPopulations.reduce(0) { (accumulatedProjection : Int, precinctProjection : Int) -> Int in
    return accumulatedProjection + precinctProjection
}
print("\(totalProjection)")

//GoldChallenge
let totalGold = projectedPopulations.reduce(0) { $0 + $1 }
print("\(totalGold)")
