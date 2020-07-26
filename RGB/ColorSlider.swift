//
//  ColorSlider.swift
//  RGB
//
//  Created by Andrey on 26.07.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    @Binding var textFieldData: String
    var color: Color

    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundColor(color)
                .frame(width: 40)
            Slider(value: $value, in: 0...255, step: 1)
                .padding(.vertical, 3.0)
                .accentColor(color)
            TextField("\(lround(value))", text: $textFieldData){
                if let doubleTextFieldValue = Double(self.textFieldData) {
                    switch doubleTextFieldValue {
                    case ..<0:
                        self.value = 0
                    case 0...255:
                        self.value = doubleTextFieldValue
                    default:
                        self.value = 255
                    }
                    self.textFieldData = "\(Int(self.value))"
                } else {
                    self.textFieldData = "0"
                }
            }
                .frame(width: 50, height: 35)
                .foregroundColor(.black)
                .padding(.leading)
                .background(Color.white)
                .cornerRadius(8)
                .keyboardType(.numbersAndPunctuation)
        }
        .padding(.horizontal)
    }
}
