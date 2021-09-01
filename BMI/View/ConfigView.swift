//
//  SetView.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 30.08.2021.
//

import UIKit

class ConfigView: UIView {
    let backdroundImage = BackgroundImage()
    
    let leftHeightLabel = Labels(text: "Hight", textColor: .systemGray,
                             font: UIFont.boldSystemFont(ofSize: 15),
                             textAlignment: .left)
    var rightHeightLabel = Labels(text: "1.5 m", textColor: .systemGray,
                              font: UIFont.boldSystemFont(ofSize: 15),
                              textAlignment: .right)
    let leftWeightLabel = Labels(text: "Weight", textColor: .systemGray,
                             font: UIFont.boldSystemFont(ofSize: 15),
                             textAlignment: .left)
    var rightWeightLabel2 = Labels(text: "100 kg", textColor: .systemGray,
                              font: UIFont.boldSystemFont(ofSize: 15),
                              textAlignment: .right)
    let titleLabel = Labels(text: .uppercased("Calculate your BMI")(), textColor: .darkGray, font: .boldSystemFont(ofSize: 40), textAlignment: .left)
    let heightSlider = Sliders(maximumValue: 3, minimumValue: 0, value: 1.5)
    let weightSlider = Sliders(maximumValue: 200, minimumValue: 0, value: 100)
    let button = Buttons(title: "CALCULATE", font: UIFont.boldSystemFont(ofSize: 25))

    func confView(_ view: UIView){
        addSubview(view)
        setConstrains(view)
    }
    override func addSubview(_ view: UIView) {
        [backdroundImage.firstViewBackground,heightSlider.slider,weightSlider.slider,button.button, titleLabel.label].forEach{view.addSubview($0)}
    }
    
    
    func setConstrains(_ view: UIView){
        let weightLabelsStackView = UIStackView(arrangedSubviews: [leftWeightLabel.label,rightWeightLabel2.label])
        view.addSubview(weightLabelsStackView)
        weightLabelsStackView.translatesAutoresizingMaskIntoConstraints = false
        weightLabelsStackView.axis = .horizontal
        weightLabelsStackView.distribution = .fillEqually
        let heightLabelStackView = UIStackView(arrangedSubviews: [leftHeightLabel.label,rightHeightLabel.label])
        view.addSubview(heightLabelStackView)
        heightLabelStackView.translatesAutoresizingMaskIntoConstraints = false
        heightLabelStackView.axis = .horizontal
        heightLabelStackView.distribution = .fillEqually
        
        NSLayoutConstraint.activate([
            titleLabel.label.bottomAnchor.constraint(equalTo: heightLabelStackView.topAnchor, constant: -150),
            titleLabel.label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.label.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.3),
            titleLabel.label.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.9),
            button.button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            button.button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.button.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.75),
            button.button.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.07),
            
            weightSlider.slider.bottomAnchor.constraint(equalTo: button.button.topAnchor),
            weightSlider.slider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weightSlider.slider.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.95),
            weightSlider.slider.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1),
            
            weightLabelsStackView.bottomAnchor.constraint(equalTo: weightSlider.slider.topAnchor),
            weightLabelsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weightLabelsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -10),
            weightLabelsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 10),
            
            heightSlider.slider.bottomAnchor.constraint(equalTo: weightLabelsStackView.topAnchor),
            heightSlider.slider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            heightSlider.slider.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.95),
            heightSlider.slider.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1),
            
            heightLabelStackView.bottomAnchor.constraint(equalTo: heightSlider.slider.topAnchor),
            heightLabelStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            heightLabelStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -10),
            heightLabelStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 10)
        ])
        
        
    }


}
