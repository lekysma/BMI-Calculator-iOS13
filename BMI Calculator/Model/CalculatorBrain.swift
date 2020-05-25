//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jean martin Kyssama on 25/05/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func getBMIValue(with weight: Float, and height: Float) {
        let result = weight / (height * height)
        
        if result < 18.5 {
            bmi = BMI(value: String(format: "%.1f", result), advice: "You need to put on weight", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if result < 24.9 {
            bmi = BMI(value: String(format: "%.1f", result), advice: "You are fit for your size", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: String(format: "%.1f", result), advice: "Time to hit the gym", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
        
    }
    
}
