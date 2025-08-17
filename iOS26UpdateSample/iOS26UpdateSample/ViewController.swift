//
//  ViewController.swift
//  iOS26UpdateSample
//
//  Created by 能登 要 on 2025/08/14.
//

import UIKit // embeded Observation framework in Foundation framework
import Shared

class ViewController: UIViewController {
    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var number3: UITextField!
    @IBOutlet weak var result: UILabel!
    
    let viewModel = AddingNumbersModel(number1Value: 1, number2Value:2, number3Value: 3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func updateProperties() {
        super.updateProperties()
        result.text = "\(viewModel.number1Value + viewModel.number2Value + viewModel.number3Value)"
    }

    @IBAction func onChangeNumber1(_ sender: Any) {
        viewModel.number1Value = number1.numberValue
    }
    
    @IBAction func onChangeNumber2(_ sender: Any) {
        viewModel.number3Value = number3.numberValue
    }
    
    @IBAction func onChangeNumber3(_ sender: Any) {
        viewModel.number2Value = number2.numberValue
    }
}
