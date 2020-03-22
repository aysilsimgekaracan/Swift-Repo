//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Ayşıl Simge Karacan on 10.09.2019.
//  Copyright © 2019 Ayşıl Simge Karacan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    
    
    let commaButton = 21
    let resultButton = 19
    let addButton = 17
    let minusButton = 16
    let multiplyButton = 15
    let divideButton = 14
    let percentageButton = 13
    let plusMinusButton = 20
    let clearButton = 11
    
    var theNumber : Int = 0
    var number : String = ""
    var operand : Int = 0
    var result : Double = 0.0
    
    var firstNumber : Double = 0
    var secondNumber : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        printPressedNumber()
    }

    func printPressedNumber() {
        labelText.text = number
    }
    
    func showFirstNumber() {
        firstNumber = Double(number)!
        print(number) //doğru çalışıyor
        number = ""
    }
    
    
   @IBAction  func pressedNumber(sender : UIButton) {
        if sender.tag >= 0 && sender.tag <= 10 {
            theNumber = Int(sender.tag) - 1
            number += String(theNumber)
            printPressedNumber()
            
           
        }
    }
    
    @IBAction func setOperand(sender : UIButton) {
        if sender.tag >= 12 && sender.tag <= 18 {
            operand = sender.tag
            showFirstNumber()
            
        }
        
        if sender.tag == 11 {
           number = ""
            printPressedNumber()
        }
        
        if sender.tag == 21 {
            number += "."
            printPressedNumber()
            
        }
        
        if sender.tag == 20 {
            
            number.insert("-", at: number.startIndex)
            printPressedNumber()
            
        }
        
        
    }
    
    @IBAction func showResult(sender : UIButton) {
        secondNumber = Double(number)!
        print(secondNumber)
        
        if operand == addButton {
            result = Double(firstNumber + secondNumber)
        }
        
        if operand == minusButton {
            result = Double(firstNumber) - Double(secondNumber)
        }
        
        if operand == multiplyButton {
            result = Double(firstNumber * secondNumber)
        }
        
        if operand == divideButton {
            result = Double(firstNumber) / Double(secondNumber)
        }
        
        if operand == percentageButton {
            result = Double((firstNumber / 100) * secondNumber)
        }
        
        print(result)
        
        firstNumber = 0.0
        secondNumber = 0.0
        operand = addButton
        number = String(result)
        printPressedNumber()
        
        result = 0.0
        theNumber = 0
        number = ""
        
    }
    

}

