//
//  SetView.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 30.08.2021.
//

import UIKit

class SetView: UIView {
    let backdroundImage = BackgroundImage()
    
    let heightLabel = Labels(text: "Hight", textColor: .systemGray,
                             font: UIFont.boldSystemFont(ofSize: 15),
                             textAlignment: .left)
    var heightLabel2 = Labels(text: "1.5 m", textColor: .systemGray,
                              font: UIFont.boldSystemFont(ofSize: 15),
                              textAlignment: .right)
    let weightLabel = Labels(text: "Weight", textColor: .systemGray,
                             font: UIFont.boldSystemFont(ofSize: 15),
                             textAlignment: .left)
    var weightLabel2 = Labels(text: "100 kg", textColor: .systemGray,
                              font: UIFont.boldSystemFont(ofSize: 15),
                              textAlignment: .right)
 
    let heightSlider = Sliders(maximumValue: 3, minimumValue: 0, value: 1.5)
//        slider.addTarget(self, action: #selector(heightSliderChangedPosition), for: .valueChanged)

    let weightSlider = Sliders(maximumValue: 200, minimumValue: 0, value: 100)

//        slider.addTarget(self, action: #selector(weightSliderChangedPosition), for: .valueChanged)

    let button = Buttons(title: "Calculate", font: UIFont.boldSystemFont(ofSize: 20))

    
    func setConstrains(_ view: UIView){
        let weightLabelsStackView = UIStackView(arrangedSubviews: [weightLabel.label,weightLabel2.label])
        weightLabelsStackView.translatesAutoresizingMaskIntoConstraints = false
        weightLabelsStackView.axis = .horizontal
        weightLabelsStackView.distribution = .fillEqually
        let heightLabelStackView = UIStackView(arrangedSubviews: [heightLabel.label,heightLabel2.label])
        heightLabelStackView.translatesAutoresizingMaskIntoConstraints = false
        heightLabelStackView.axis = .horizontal
        heightLabelStackView.distribution = .fillEqually
        
        [backdroundImage.firstViewBackground,heightLabelStackView,heightSlider.slider,weightLabelsStackView,weightSlider.slider,button.button].forEach{view.addSubview($0)}
        
        button.button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        button.button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.button.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.75).isActive = true
        button.button.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.07).isActive = true
        
        weightSlider.slider.bottomAnchor.constraint(equalTo: button.button.topAnchor).isActive = true
        weightSlider.slider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        weightSlider.slider.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.95).isActive = true
        weightSlider.slider.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1).isActive = true
        
        weightLabelsStackView.bottomAnchor.constraint(equalTo: weightSlider.slider.topAnchor).isActive = true
        weightLabelsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        weightLabelsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -10).isActive = true
        weightLabelsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 10).isActive = true
        
        heightSlider.slider.bottomAnchor.constraint(equalTo: weightLabelsStackView.topAnchor).isActive = true
        heightSlider.slider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        heightSlider.slider.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.95).isActive = true
        heightSlider.slider.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1).isActive = true
        
        heightLabelStackView.bottomAnchor.constraint(equalTo: heightSlider.slider.topAnchor).isActive = true
        heightLabelStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        heightLabelStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -10).isActive = true
        heightLabelStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 10).isActive = true
        
    }


}
