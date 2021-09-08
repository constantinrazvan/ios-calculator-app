//
//  ViewController.swift
//  ios-calculator-app
//
//  Created by Constantin Razvan on 08.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var first = ""
    var second = ""
    var function = ""
    var result = 0.0
    var userInput = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    @IBAction func clearButton(_ sender: Any) {
        first = ""
        second = ""
        function = ""
        result = 0.0
        userInput = ""
        
        calculatorDisplay.text = "0"
    }
    @IBAction func divideButton(_ sender: Any) {
        function = "/"
        first = userInput
        userInput = ""
    }
    @IBAction func multiplyButton(_ sender: Any) {
        function = "x"
        first = userInput
        userInput = ""
    }
    @IBAction func minusButton(_ sender: Any) {
        function = "-"
        first = userInput
        userInput = ""
    }
    @IBAction func addButton(_ sender: Any) {
        function = "+"
        first = userInput
        userInput = ""
    }
    @IBAction func equalButton(_ sender: Any) {
        second = userInput
        var firstInput = 0.0
        var secondInput = 0.0
        firstInput = Double(first)!
        secondInput =  Double(second)!
        if(function == "+") {
           
            result = firstInput + secondInput
            calculatorDisplay.text = String(result)
            
        } else if(function == "-") {
            
            result = firstInput - secondInput
            calculatorDisplay.text = String(result)
            
        } else if(function == "*") {
        
            result = firstInput * secondInput
            calculatorDisplay.text = String(result)
            
        } else {
            result = firstInput / secondInput
            calculatorDisplay.text = String(result)
        }
    }
    @IBAction func decimalButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput +=  "."
        calculatorDisplay.text! += "."
    }
    @IBAction func zeroButton(_ sender: Any) {
        
        userInput +=  "0"
        calculatorDisplay.text! += "-"
    }
    @IBAction func oneButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "1"
        calculatorDisplay.text! += userInput
    }
    @IBAction func twoButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "2"
        calculatorDisplay.text! += userInput
    }
    @IBAction func threeButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "3"
        calculatorDisplay.text! += userInput
    }
    @IBAction func fourButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "4"
        calculatorDisplay.text! += userInput
    }
    @IBAction func fiveButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "5"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func sixButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "6"
        calculatorDisplay.text! += userInput
    }
    @IBAction func sevenButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "7"
        calculatorDisplay.text! += userInput
    }
    @IBAction func eightButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "8"
        calculatorDisplay.text! += userInput
    }
    @IBAction func nineButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "9"
        calculatorDisplay.text! += userInput
    }
}

