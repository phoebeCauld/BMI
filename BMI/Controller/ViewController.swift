//
//  ViewController.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 29.08.2021.
//

import UIKit

class ViewController: UIViewController {
    private let setView = SetView()
    private let calculateLogic = CalculateLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView.setConstrains(view)
        setView.heightSlider.slider.addTarget(self, action: #selector(heightSliderChangedPosition), for: .valueChanged)
        setView.weightSlider.slider.addTarget(self, action: #selector(weightSliderChangedPosition), for: .valueChanged)
        setView.button.button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
        @objc func heightSliderChangedPosition(_ sender: UISlider){
            let heightValue = calculateLogic.heightValueChanged(sender)
            setView.heightLabel2.label.text = "\(heightValue) m"
        }
    
        @objc func weightSliderChangedPosition(_ sender: UISlider){
            let weightValue = calculateLogic.weightValueChanged(sender)
            setView.weightLabel2.label.text = "\(weightValue) kg"
        }
    
        @objc func buttonTapped(_ sender: UIButton){
            let bmi =  calculateLogic.calculateBMI(setView.heightSlider.slider.value,
                                                   setView.weightSlider.slider.value)
            setView.button.button.setTitle("\(String(format: "%.2F", bmi))", for: .normal)
        }

}

