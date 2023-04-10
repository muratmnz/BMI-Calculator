//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Murat Minaz on 8.04.2023.
//

import UIKit

class CalculateViewController: UIViewController {

    let bmiValue = "0.0"
    
    var calculateBrain = CalculateBrain()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //change slider height value
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    //change slider weight value
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)m"
    }
    
    
    //calculate bmi
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)
        
        //SEGUE navigation arrow activated
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            
            let destinationVC = segue.destination as! ResultViewController
            //using as! because just use ResultViewController
            
            destinationVC.bmiValue = calculateBrain.getBMIValue()
        }
    }
}

