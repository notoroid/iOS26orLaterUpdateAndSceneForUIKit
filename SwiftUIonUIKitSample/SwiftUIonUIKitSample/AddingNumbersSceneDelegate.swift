//
//  AddingNumbersSceneDelegate.swift
//  SwiftUIonUIKitSample
//
//  Created by 能登 要 on 2025/08/16.
//

import UIKit
import SwiftUI
import Shared

class AddingNumbersSceneDelegate: UIResponder, UIHostingSceneDelegate {
    static let viewModel = AddingNumbersModel(number1Value: 1, number2Value: 2, number3Value: 3)
    
    static var rootScene: some Scene {
        WindowGroup(id: "addingNumbers") {
            ContentView(viewModel: viewModel)
        }
    }
}

