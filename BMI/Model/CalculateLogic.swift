//
//  CalculateLogic.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 30.08.2021.
//

import UIKit

struct CalculateLogic {
    var calculate = SetView()
    
    func heightValueChanged(_ sender: UISlider) -> String {
        let heightValue = String(format: "%.2F", sender.value)
        return heightValue
    }
    
    
    
    func weightValueChanged(_ sender: UISlider) -> String{
        let weightValue = String(format: "%.0F", sender.value)
        return weightValue
    }
    
    func calculateBMI(_ heightValue: Float, _ weightValue: Float) -> Float{
        let heightValue = heightValue
        let weightValue = round(weightValue)
            let bmi = weightValue / pow(heightValue, 2)
        return bmi
//        viewSettings.button.button.setTitle("\(bmi)", for: .normal)
        }
    }

