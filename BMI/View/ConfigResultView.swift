//
//  ConfigResultView.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 01.09.2021.
//

import UIKit

class ConfigResultView: UIView {
    
    let backgroundImage = BackgroundImage()
    let topLabel = Labels(text: "YOUR RESULT", textColor: .white, font: .boldSystemFont(ofSize: 30), textAlignment: .center)
    let resultLabel = Labels(text: "100", textColor: .white, font: .boldSystemFont(ofSize: 80), textAlignment: .center)
    let bottomLabel = Labels(text: "eat more carrot", textColor: .white, font: .boldSystemFont(ofSize: 20), textAlignment: .center)
    let recalculateButton = Buttons(title: "RECALCULATE", font: .boldSystemFont(ofSize: 25))
    
    func configuration(_ view: UIView){
        addSubview(view)
        setConstraints(view, configStackView(view))
    }
    
    override func addSubview(_ view: UIView) {
        [backgroundImage.resultViewBackground, recalculateButton.button].forEach{view.addSubview($0)}
    }
    
    func setConstraints(_ view: UIView, _ stackView: UIStackView){
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.3),
            stackView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5),
            recalculateButton.button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            recalculateButton.button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            recalculateButton.button.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.9),
            recalculateButton.button.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.07)
        ])
    }
    
    func configStackView(_ view: UIView) -> UIStackView {
        let resultStackView = UIStackView(arrangedSubviews: [topLabel.label, resultLabel.label,bottomLabel.label])
        view.addSubview(resultStackView)
        resultStackView.translatesAutoresizingMaskIntoConstraints = false
        resultStackView.axis = .vertical
        resultStackView.distribution = .fillEqually
        return resultStackView
    }
}
