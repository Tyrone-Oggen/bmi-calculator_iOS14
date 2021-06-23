//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Tyrone Oggen on 02/06/2021.
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
        let height = heightSliderOutlet.value
        let weight = weightSliderOutlet.value
        let bmi: Float
        
        if height != 0 && weight != 0 {
            bmi = weight / pow(height, 2)
        } else {
            bmi = 0
        }
        
        print(bmi)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format:"%.1f", bmi)
        
        self.present(secondVC, animated: true, completion: nil)
    }
}

 
