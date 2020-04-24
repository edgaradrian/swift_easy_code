import UIKit

protocol Exercise: CustomStringConvertible {
    var name: String { get }
    var caloriesBurned: Double { get }
    var minutes: Double { get }
}//protocol Exercise

extension Exercise {
    var description: String {
        return "Exercise(\(name), burned \(caloriesBurned) calories in \(minutes) minutes)"
    }
}

extension Exercise {
    var title: String {
        return "\(name) - \(minutes) minutes"
    }
}

struct EllipticalWorkout: Exercise {
    let name = "Elliptical Workout"
    let caloriesBurned: Double
    let minutes: Double
}//EllipticalWorkout

let ellipticalWorkout = EllipticalWorkout(caloriesBurned: 335, minutes: 30)

struct TreadmillWorkout: Exercise {
    let name = "Treadmill Workout"
    let title = "Workout using the Go Fast Elliptical Trainer 3000"
    let caloriesBurned: Double
    let minutes: Double
    let laps: Double
}//TreadmillWorkout

extension TreadmillWorkout {
    var description: String {
        return "TreadmillWorkout(\(caloriesBurned) calories and \(laps) laps in \(minutes) minutes)"
    }
}

let runningWorkout = TreadmillWorkout(caloriesBurned: 350, minutes: 25, laps: 10.2)

func caloriesBurnedPerMinute<E: Exercise>(for exercise: E) -> Double {
    return exercise.caloriesBurned / exercise.minutes
}//caloriesBurnedPerMinute

print(caloriesBurnedPerMinute(for: ellipticalWorkout))
print(caloriesBurnedPerMinute(for: runningWorkout))

extension Exercise {
    var caloriesBurnedPerMinute: Double {
        return caloriesBurned / minutes
    }
}//extension Exercise

print(ellipticalWorkout.caloriesBurnedPerMinute)
print(runningWorkout.caloriesBurnedPerMinute)

print(ellipticalWorkout)
print(runningWorkout)

extension Sequence where Iterator.Element == Exercise {
    func totalCaloriesBurned() -> Double {
        var total: Double = 0
        for exercise in self {
            total += exercise.caloriesBurned
        }
        return total
    }//totalCaloriesBurned
}//extension Sequence

let mondayWorkout: [Exercise] = [ellipticalWorkout, runningWorkout]
print(mondayWorkout.totalCaloriesBurned())

for exercise in mondayWorkout {
    print(exercise.title)
}
