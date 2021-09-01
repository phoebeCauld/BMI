//
//  Sliders.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 30.08.2021.
//

import UIKit

struct Sliders {
    
    let slider: UISlider = {
        let slider = UISlider()
        slider.minimumTrackTintColor = .systemIndigo
        slider.thumbTintColor = .systemIndigo
        slider.maximumTrackTintColor = .gray
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    init(maximumValue: Float, minimumValue: Float, value: Float) {
        slider.maximumValue = maximumValue
        slider.minimumValue = minimumValue
        slider.value = value
    }
}
