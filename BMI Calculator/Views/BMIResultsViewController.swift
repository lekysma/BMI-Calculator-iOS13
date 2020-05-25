//
//  BMIResultsViewController.swift
//  BMI Calculator
//
//  Created by Jean martin Kyssama on 23/05/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class BMIResultsViewController: UIViewController {
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var BMIAdvice: UILabel!
    
    
    //relevant variable
    //accueille le resultat du BMI
    var passedBMIData: String?
    var passedMessage: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //BMILabel.text = String.init(format: "%.1f", passedBMIData)
        if let value = passedBMIData {
            BMILabel.text = passedBMIData
            BMIAdvice.text = passedMessage
            view.backgroundColor = color
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: - Button to revert to previous VC
    @IBAction func recalculateButton(_ sender: UIButton) {
        //we revert to previous VC
        self.dismiss(animated: true, completion: nil)
    }
    
    
    //MARK: - Function that handles the BMI ADVICE Depending on the BMI result


}
