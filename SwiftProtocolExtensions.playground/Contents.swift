import UIKit

protocol Exercise {
    var name: String { get }
    var caloriesBurned: Double { get }
    var minutes: Double { get }
}//protocol Exercise

struct EllipticalWorkout: Exercise {
    let name = "Elliptical Workout"
    let caloriesBurned: Double
    let minutes: Double
}//EllipticalWorkout

struct TreadmillWorkout: Exercise {
    let name = "Treadmill Workout"
    let caloriesBurned: Double
    let minutes: Double
    let laps: Double
}//TreadmillWorkout
