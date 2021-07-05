//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Tyrone Oggen on 2021/06/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var bmiAdviceLabel: UILabel!
    @IBOutlet weak var bmiBackroundImage: UIImageView!
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValueLabel.text = bmiValue
        bmiAdviceLabel.text = bmiAdvice
        bmiBackroundImage.backgroundColor = bmiColor
    }
    

    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
