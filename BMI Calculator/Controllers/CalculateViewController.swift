//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    //
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    //MARK: - RElevant variables
    //var localResultStorage: Float = 0.0
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        //on utilise ce bout de code pour afficher les nombres avec 2 decimales
//        let formatter = NumberFormatter()
//        formatter.maximumFractionDigits = 2
//        formatter.minimumFractionDigits = 2
//        //ici on affiche la valeur du slider
//        let heightSliderChange = sender.value
//        if let formattedString = formatter.string(for: heightSliderChange) {
//             print("\(formattedString) meters")
//
//        }
        //solution donnee par le cours pour afficher un nombre avec 2 decimales
        //print(String.init(format: "%.2f", sender.value))
        
        //on affiche la valeur du slider dans l'UI
        let heightLabelValue = "\(String.init(format: "%.2f", sender.value)) meters"
        heightLabel.text = heightLabelValue
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        //on utilise ce bout de code pour afficher les nombres avec 2 decimales
//        let formatter = NumberFormatter()
//        formatter.maximumFractionDigits = 2
//        formatter.minimumFractionDigits = 2
//        //ici on affiche la valeur du slider
//        let weightSliderChanger = sender.value
//        if let formattedString = formatter.string(for: weightSliderChanger) {
//            print("\(formattedString) meters")
//
//        }
        //solution du cours pour afficher nombre avec 2 decimales
        //print(String.init(format: "%.2f", sender.value)) // PS : pas possible de faire du string interpolation ici
        //print(Int(sender.value)) // si on veut afficher un nombre sans decimales
        //on affiche la valeur du slider dans l'UI
        let weightLabelValue = "\(Int(sender.value)) Kg"
        weightLabel.text = weightLabelValue
       
    }
    //MARK: - Prepare for segue: pass data here
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToResult" {
            if let secondVC = segue.destination as? BMIResultsViewController {
                //secondVC.passedBMIData = localResultStorage
                secondVC.passedBMIData = calculatorBrain.bmi?.value
                //on passe aussi le message
                secondVC.passedMessage = calculatorBrain.bmi?.advice
                // et la couleur du fonds
                secondVC.color = calculatorBrain.bmi?.color
            }
        }
    }
    //MARK: - BMI Calculator button
    
    @IBAction func BMICalculatorButton(_ sender: UIButton) {
        //print(heightSlider.value)
        //print(weightSlider.value)
        
        //BMIFormula()
        var weight = weightSlider.value
        var height = heightSlider.value
        calculatorBrain.getBMIValue(with: weight, and: height)
        self.performSegue(withIdentifier: "segueToResult", sender: self)
    }
    
    //MARK: - BMI Calculation function
    
//    func BMIFormula() {
//        //la formule est poids / taille * taille
//        let BMIResult = weightSlider.value / (heightSlider.value * heightSlider.value)
//        //print("Your BMI is: \(BMIResult)")
//        //on enregistre cette valeur pour la passer
//        localResultStorage = BMIResult
//        print(localResultStorage)
//
//    }
    
    
    
    
}

