//
//  CalculateLogic.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 30.08.2021.
//

import UIKit

struct CalculateLogic {
    
    var bmi: Float = 0.0
    
    func heightValueChanged(_ sender: UISlider) -> String {
        let heightValue = String(format: "%.2F", sender.value)
        return heightValue
    }
    
    func weightValueChanged(_ sender: UISlider) -> String{
        let weightValue = String(format: "%.0F", sender.value)
        return weightValue
    }
    
   mutating func calculateBMI(_ heightValue: Float, _ weightValue: Float) {
            bmi = round(weightValue) / pow(heightValue, 2)
        }
    func getBmiValue() -> String {
        let bmiValue = "\(String(format: "%.2F", bmi))"
        return bmiValue
    }
    
    }

