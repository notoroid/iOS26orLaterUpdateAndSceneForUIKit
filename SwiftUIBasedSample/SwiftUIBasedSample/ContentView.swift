//
//  ContentView.swift
//  SwiftUIBasedSample
//
//  Created by 能登 要 on 2025/08/14.
//

import SwiftUI
import Shared

struct ContentView: View {
    @Bindable var viewModel: AddingNumbersModel
    var body: some View {
        VStack {
            Text("SwiftUIBasedSample")
            Spacer()
            VStack(alignment: .trailing, spacing: 8) {
                TextField("", text: $viewModel.number1Text)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.trailing)
                    .frame(width: 97)
                
                TextField("", text: $viewModel.number2Text)
                    .multilineTextAlignment(.trailing)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 97)
                
                HStack {
                    Image(systemName: "plus")
                        .imageScale(.large)
                        .foregroundStyle(.gray)

                    TextField("", text: $viewModel.number3Text)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 97)
                }
                Divider()
                    .frame(width: 131)
                Text("\(viewModel.number1Value + viewModel.number2Value + viewModel.number3Value)")
            }
            Spacer()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModel: AddingNumbersModel(number1Value: 1, number2Value: 2, number3Value: 3))
}

extension AddingNumbersModel {
    var number1Text: String {
        get {
            String(number1Value)
        }
        set {
            number1Value = Int(newValue) ?? 0
        }
    }

    var number2Text: String {
        get {
            String(number2Value)
        }
        set {
            number2Value = Int(newValue) ?? 0
        }
    }

    var number3Text: String {
        get {
            String(number3Value)
        }
        set {
            number3Value = Int(newValue) ?? 0
        }
    }

}

