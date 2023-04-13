//
//  ViewController.swift
//  Study-03
//
//  Created by 백대홍 on 2023/04/06.
//
import UIKit

class CalculatorViewController: UIViewController {

    var currentOperator: String?
    var firstNumber: Double = 0
    var secondNumber: Double = 0

    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
           super.viewDidLoad()
           let myView = UIView(frame: self.view.bounds)
          
           self.view.addSubview(myView)
       }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View will appear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View did disappear")
    }

    @IBAction func numberButtonPressed(_ sender: UIButton) {
        guard let numberText = sender.titleLabel?.text,
              let number = Double(numberText) else {
            return
        }

        if currentOperator == nil {
            firstNumber = number
        } else {
            secondNumber = number
        }

        resultLabel.text = numberText
    }

    @IBAction func operatorButtonPressed(_ sender: UIButton) {
        guard let operatorText = sender.titleLabel?.text else {
            return
        }

        currentOperator = operatorText
    }

    @IBAction func equalsButtonPressed(_ sender: UIButton) {
        var result: Double = 0

        switch currentOperator {
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "*":
            result = firstNumber * secondNumber
        case "/":
            result = firstNumber / secondNumber
        default:
            break
        }

        resultLabel.text = "\(result)"
    }
}

