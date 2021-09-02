//
//  ConfigResultView.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 01.09.2021.
//

import UIKit

class ConfigResultView: UIView {
    
    let backgroundImage = BackgroundImage()
    let topLabel = Labels(text: Text.topLabel, textColor: .white, font: .boldSystemFont(ofSize: 30), textAlignment: .center)
    let resultLabel = Labels(text: Text.resultLabel, textColor: .white, font: .boldSystemFont(ofSize: 80), textAlignment: .center)
    let adviceLabel = Labels(text: Text.adviceLabel, textColor: .white, font: .boldSystemFont(ofSize: 20), textAlignment: .center)
    let recalculateButton = Buttons(title: Text.recalcButton, font: .boldSystemFont(ofSize: 25))
    
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
            stackView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor,
                                              multiplier: Constants.heightForStackView),
            stackView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor,
                                             multiplier: Constants.widthForStackView),
            recalculateButton.button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            recalculateButton.button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            recalculateButton.button.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor,
                                                            multiplier: Constants.widthForButtons),
            recalculateButton.button.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor,
                                                             multiplier: Constants.heightForButtons)
        ])
    }
    
    func configStackView(_ view: UIView) -> UIStackView {
        let resultStackView = UIStackView(arrangedSubviews: [topLabel.label, resultLabel.label,adviceLabel.label])
        view.addSubview(resultStackView)
        resultStackView.translatesAutoresizingMaskIntoConstraints = false
        resultStackView.axis = .vertical
        resultStackView.distribution = .fillEqually
        return resultStackView
    }
}
private enum Text {
    static let topLabel: String = "YOUR RESULT"
    static let resultLabel: String = ""
    static let adviceLabel: String = "watch your health"
    static let recalcButton: String = "RECALCULATE"
}

private enum Constants {
    static let heightForStackView: CGFloat = 0.3
    static let widthForStackView: CGFloat = 0.5
    static let widthForButtons: CGFloat = 0.9
    static let heightForButtons: CGFloat = 0.07
}

