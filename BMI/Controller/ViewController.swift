//
//  ViewController.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 29.08.2021.
//

import UIKit

class ViewController: UIViewController {
    private let setView = ConfigView()
    private var calculateLogic = CalculateLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView.confView(view)
        setView.heightSlider.slider.addTarget(self, action: #selector(heightSliderChangedPosition), for: .valueChanged)
        setView.weightSlider.slider.addTarget(self, action: #selector(weightSliderChangedPosition), for: .valueChanged)
        setView.button.button.addTarget(self, action: #selector(calculateButtonTapped), for: .touchUpInside)
    }
    
        @objc func heightSliderChangedPosition(_ sender: UISlider){
            let heightValue = calculateLogic.heightValueChanged(sender)
            setView.rightHeightLabel.label.text = "\(heightValue) m"
        }
    
        @objc func weightSliderChangedPosition(_ sender: UISlider){
            let weightValue = calculateLogic.weightValueChanged(sender)
            setView.rightWeightLabel2.label.text = "\(weightValue) kg"
        }
    
        @objc func calculateButtonTapped(_ sender: UIButton){
          calculateLogic.calculateBMI(setView.heightSlider.slider.value, setView.weightSlider.slider.value)
            let secondVC = ResultViewController()
            secondVC.result = calculateLogic.getBmiValue()
            present(secondVC, animated: true, completion: nil)
        }

}

