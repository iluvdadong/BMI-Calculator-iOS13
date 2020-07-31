//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    
    @IBOutlet weak var heightSliderValue: UISlider!
    @IBOutlet weak var weightSliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // print(String(format: "%.3f", totalWorkTimeInHours))

    @IBAction func heightChanged(_ sender: UISlider) {
        
        heightValue.text = String(format: "%.1f", (sender.value)) + "m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weightValue.text = String(format: "%.0f", (sender.value)) + "kg"

    }
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        var height = heightSliderValue.value
        var weight = weightSliderValue.value
        
        var BMI = weight / powf(height, 2)
        print(BMI)
        
    }
}

