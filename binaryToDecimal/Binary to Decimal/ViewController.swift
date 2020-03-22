//
//  ViewController.swift
//  Binary to Decimal
//
//  Created by Ayşıl Simge Karacan on 18.09.2019.
//  Copyright © 2019 Ayşıl Simge Karacan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var binaryTextField: UITextField!
    @IBOutlet weak var decimalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertButtonClicked(_ sender: Any) {

        if binaryTextField.text!.contains("3") || binaryTextField.text!.contains("4") || binaryTextField.text!.contains("5") || binaryTextField.text!.contains("6") || binaryTextField.text!.contains("7") || binaryTextField.text!.contains("8") || binaryTextField.text!.contains("9") {
            
            let alert = UIAlertController(title: "Error", message: "Only 1 or 0", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
            
            } else {
            decimalLabel.text = String(strtoul(binaryTextField.text, nil, 2))
            binaryTextField.text = ""
            

            
            binaryTextField.text = ""
        }

    }
    
}

