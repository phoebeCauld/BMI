//
//  CalculateLogic.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 30.08.2021.
//

import UIKit

struct CalculateLogic {
    
    var bmi: BMI?
    
    func heightValueChanged(_ sender: UISlider) -> String {
        let heightValue = String(format: "%.2F", sender.value)
        return heightValue
    }
    
    func weightValueChanged(_ sender: UISlider) -> String{
        let weightValue = String(format: "%.0F", sender.value)
        return weightValue
    }
    
    mutating func calculateBMI(_ heightValue: Float, _ weightValue: Float) {
        let bmiValue = round(weightValue) / pow(heightValue, 2)
        if bmiValue < 18.5 {
            bmi = BMI(bmiValue: bmiValue, advice: Advice.notEnoghtWeight, color: .systemBlue)
        } else if bmiValue < 24.9 {
            bmi = BMI(bmiValue: bmiValue, advice: Advice.normalWeight, color: .systemGreen)
        } else {
            bmi = BMI(bmiValue: bmiValue, advice: Advice.overWeight, color: .systemRed)
        }
        }
    
    func getBmiValue() -> String {
        let bmiValue = "\(String(format: "%.2F", bmi?.bmiValue ?? 0.0))"
        return bmiValue
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "advice not found"
    }
    
    func getBackgroundColor() -> UIColor {
        return bmi?.color ?? .darkGray
    }
    }

private enum Advice {
    static let notEnoghtWeight: String = "eat more snacks!"
    static let normalWeight: String = "good job!"
    static let overWeight: String = "watch your health"
}

