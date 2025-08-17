//
//  UITextField+numberValue.swift
//  Shared
//
//  Created by 能登 要 on 2025/08/15.
//

import UIKit

public extension UITextField {
    var numberValue: Int {
        Int(text ?? "0") ?? 0
    }
}

@Observable public class AddingNumbersModel {
    public var number1Value: Int
    public var number2Value: Int
    public var number3Value: Int
    public init(number1Value: Int, number2Value: Int, number3Value: Int) {
        self.number1Value = number1Value
        self.number2Value = number2Value
        self.number3Value = number3Value
    }
}
