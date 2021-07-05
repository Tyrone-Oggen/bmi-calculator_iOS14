 //
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Tyrone Oggen on 02/06/2021.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabelOutlet: UILabel!
    @IBOutlet weak var weightLabelOutlet: UILabel!
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
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
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.bmiAdvice = calculatorBrain.getAdvice()
            destinationVC.bmiColor = calculatorBrain.getColor()
        }
    }
}

 
