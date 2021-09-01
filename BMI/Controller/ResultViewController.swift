//
//  ResultViewController.swift
//  BMI
//
//  Created by F1xTeoNtTsS on 01.09.2021.
//

import UIKit

class ResultViewController: UIViewController {
    let configView = ConfigResultView()
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .link
        configView.configuration(view)
        configView.resultLabel.label.text = result
        configView.recalculateButton.button.addTarget(self, action: #selector(recalculateButtonPressed), for: .touchUpInside)
    }
    
    @objc func recalculateButtonPressed(){
        self.dismiss(animated: true, completion: nil)
    }

}
