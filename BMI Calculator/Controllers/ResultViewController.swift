//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Aavhan Chatse on 23/08/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?

    @IBOutlet var resultLabel: UILabel!

    @IBOutlet var adviceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = bmiValue
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
     }
     */
}
