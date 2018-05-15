//BMICalculator

import UIKit


func getBMI(massKg : Double, heightM : Double) -> Double {
    var bmi : Double = 0.0
    bmi = massKg / ( heightM * heightM )

    if bmi > 25 {
        print("overweight")
    }else if bmi >= 18.5 && bmi <= 25.0 {
        print("normal weight")
    }else {
        print("underweight")
    }

    return bmi
}//func getBMI


getBMI(massKg: 100, heightM: 1.77)
