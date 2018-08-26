//Ejemplo de Closure Capture Values

func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int {
    var totalPopulation = population
    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
}//

var currentPopulation = 5_422
//Se inicia la poblacion con 5422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)
//Aumenta la poblacion con 500, es decir, 5922
growBy(500)
//Aumenta la poblacion con 500, es decir, 6422
growBy(500)
//Aumenta la poblacion con 500, es decir, 6922
growBy(500)

//Se guarda la actual poblacion con 500 mas. 7422
currentPopulation = growBy(500)

print("Population: \(currentPopulation)")
