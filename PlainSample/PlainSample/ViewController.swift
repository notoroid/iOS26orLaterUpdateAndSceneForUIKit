//
//  ViewController.swift
//  PlaneSample
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateResult()
    }

    private func updateResult() {
        result.text = "\(number1.numberValue + number2.numberValue + number3.numberValue)"
    }
    
    @IBAction func onChangeValue1(_ sender: Any) {
        updateResult()
    }
    
    @IBAction func onChangeValue2(_ sender: Any) {
        updateResult()
    }
    
    @IBAction func onChangeValue3(_ sender: Any) {
        updateResult()
    }
}
