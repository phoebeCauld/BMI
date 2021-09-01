//
//  UI.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 30.08.2021.
//

import UIKit


struct Labels {
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label

    }()
    
    init(text: String, textColor: UIColor, font: UIFont, textAlignment: NSTextAlignment ) {
        label.text = text
        label.textColor = textColor
        label.textAlignment = textAlignment
    }
    

}
