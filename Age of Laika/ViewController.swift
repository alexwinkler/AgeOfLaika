//
//  ViewController.swift
//  Age of Laika
//
//  Created by Alexander Winkler on 18/08/15.
//  Copyright (c) 2015 Alexander Winkler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func converterButton(sender: UIButton) {
        dogYearsLabel.text = "\(humanYearsTextField.text.toInt()! * 7)" + " Years in Dog Years."
        dogYearsLabel.hidden = false
        humanYearsTextField.resignFirstResponder()
    }
    
    @IBAction func realConverterButton(sender: UIButton) {
        var humanYearsDouble = (humanYearsTextField.text as NSString).doubleValue
        var dogYearsDouble:Double
        
        if humanYearsDouble <= 2 {
            dogYearsDouble = humanYearsDouble*10.5
        }
        else {
            dogYearsDouble = 2*10.5+(humanYearsDouble-2)*4
        }
        
        dogYearsLabel.text = "\(dogYearsDouble)" + " Years in Dog Years."
        dogYearsLabel.hidden = false
        humanYearsTextField.resignFirstResponder()
    }
    
}