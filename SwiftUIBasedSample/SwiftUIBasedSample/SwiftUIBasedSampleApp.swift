//
//  SwiftUIBasedSampleApp.swift
//  SwiftUIBasedSample
//
//  Created by 能登 要 on 2025/08/14.
//

import SwiftUI
import Shared

@main
struct SwiftUIBasedSampleApp: App {
    let viewModel = AddingNumbersModel(number1Value: 1, number2Value: 2, number3Value: 3)
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
