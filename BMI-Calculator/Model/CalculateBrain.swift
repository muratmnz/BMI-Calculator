//
//  CalculateBrain.swift
//  BMI-Calculator
//
//  Created by Murat Minaz on 10.04.2023.
//

import Foundation

struct CalculateBrain {
    
    
    var bmiValue: Float?
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmiValue ?? "0.0")
        return bmiToOneDecimalPlace
    }
    
    func calculateBMI(height: Float, weight: Float) {
        let bmiCValue = weight / pow(height, 2)
        
        
    }
    
}
