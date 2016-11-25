//
//  ViewController.swift
//  TemperatureCalculator
//
//  Created by Terrell Robinson on 11/3/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var enterLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var temperatureImageView: UIImageView!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var temperatureSeg: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // IB Actions
    
    @IBAction func calculationField(_ sender: AnyObject) {
        
        if temperatureSeg.selectedSegmentIndex == 0 {
            
            fahrenheitToCelsius()

            
        } else if temperatureSeg.selectedSegmentIndex == 1 {
            
            celsiusToFahrenheit()
            
        }
    
        self.resignFirstResponder()
        
    }

    
    @IBAction func temperatureAction(_ sender: AnyObject) {
       
        if temperatureSeg.selectedSegmentIndex == 0 {
            
            enterLabel.text = "Enter Fahrenheit Below"
            textField.text = ""
            outputLabel.text = "0° Celsius"
            
        } else if temperatureSeg.selectedSegmentIndex == 1 {
            
            enterLabel.text = "Enter Celsius Below"
            textField.text = ""
            outputLabel.text = "0° Fahrenheit"
            
        }
        
        
    }
    
    // Methods
    
    func fahrenheitToCelsius() {
        
        let fahrenheit = Double(textField.text!)
        let celsius = (fahrenheit! - 32) / 1.8
        
        let result = String(format: "%4.1f° Celsius", celsius)
        outputLabel.text = result
        
        // Image Display
        
        if celsius > 120 {
            
            temperatureImageView.image = UIImage(named: "Temp9.png")
            
        } else if celsius > 100 {
            
            temperatureImageView.image = UIImage(named: "Temp8.png")
            
        } else if celsius > 80 {
           
            temperatureImageView.image = UIImage(named: "Temp7.png")
            
        } else if celsius > 60 {
            
            temperatureImageView.image = UIImage(named: "Temp6.png")
            
        } else if celsius > 40 {
            
            temperatureImageView.image = UIImage(named: "Temp5.png")
            
        } else if celsius > 20 {
            
            temperatureImageView.image = UIImage(named: "Temp4.png")
            
        } else if celsius > 0 {
            
            temperatureImageView.image = UIImage(named: "Temp3.png")
            
        } else if celsius > -20 {
            
            temperatureImageView.image = UIImage(named: "Temp2.png")
            
        } else if celsius < -20 {
            
            temperatureImageView.image = UIImage(named: "Temp1.png")
            
        }
        
    }
    
    func celsiusToFahrenheit() {
        
        let celsius = Double(textField.text!)
        let fahrenheit = celsius! * 1.8 + 32
        
        let result = String(format: "%4.1f° Fahrenheit", fahrenheit)
        outputLabel.text = result
        
        if fahrenheit > 160 {
            
            temperatureImageView.image = UIImage(named: "Temp9.png")
            
        } else if fahrenheit > 140 {
            
            temperatureImageView.image = UIImage(named: "Temp8.png")
            
        } else if fahrenheit > 120 {
            
            temperatureImageView.image = UIImage(named: "Temp7.png")
            
        } else if fahrenheit > 100 {
            
            temperatureImageView.image = UIImage(named: "Temp6.png")
            
        } else if fahrenheit > 80 {
            
            temperatureImageView.image = UIImage(named: "Temp5.png")
            
        } else if fahrenheit > 60 {
            
            temperatureImageView.image = UIImage(named: "Temp4.png")
            
        } else if fahrenheit > 40 {
            
            temperatureImageView.image = UIImage(named: "Temp3.png")
            
        } else if fahrenheit > 20 {
            
            temperatureImageView.image = UIImage(named: "Temp2.png")
            
        } else if fahrenheit < 20 {
            
            temperatureImageView.image = UIImage(named: "Temp1.png")
            
        }
        
    }
    
    
}

