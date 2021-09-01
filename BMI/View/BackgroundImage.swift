//
//  BackgroundImage.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 30.08.2021.
//

import UIKit

class BackgroundImage: UIImageView {

    let firstViewBackground: UIImageView = {
        let imageView = UIImageView(frame: UIScreen.main.bounds)
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let resultViewBackground: UIImageView = {
        let imageView = UIImageView(frame: UIScreen.main.bounds)
        imageView.image = UIImage(named: "resultViewBackground")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

}
