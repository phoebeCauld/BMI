//
//  Buttons.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 30.08.2021.
//

import UIKit

struct Buttons {
    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemIndigo
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init(title: String, font: UIFont) {
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = font
    }
}
