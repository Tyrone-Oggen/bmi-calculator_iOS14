//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let userHeight = String(format: "%.2f", sender.value)
        
        print(userHeight)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let userWeight = Int(sender.value)
        
        print(userWeight)
    }
}

