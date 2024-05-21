//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Aidar on 2024-05-20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var temperatureInput: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertTemperature(_ sender: UIButton) {
        
        // Getting the input value (if it exists)
        guard let tempString = temperatureInput.text
        else {
            // Otherwise, don't do anything
            return
        }
        
        //
        if let fahrenheit = Double (tempString) {
            
            let celsius = (fahrenheit - 32) / 1.8
            
            let resultText = "Celsius \(celsius)"
            
            resultLabel.text = resultText
            
        }
        
    }
    
}

