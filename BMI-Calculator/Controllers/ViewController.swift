//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabelOutlet: UILabel!
    @IBOutlet weak var weightLabelOutlet: UILabel!
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let userHeight = String(format: "%.2f", sender.value)
        
        heightLabelOutlet.text = "\(userHeight)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let userWeight = String(format: "%.0f", sender.value)
        
        weightLabelOutlet.text = "\(userWeight)Kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {

    }
}

