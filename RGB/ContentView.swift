//
//  ContentView.swift
//  RGB
//
//  Created by Andrey on 25.07.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValueRed = 0.0
    @State private var sliderValueGreen = 0.0
    @State private var sliderValueBlue = 0.0
    @State private var textFieldData = ""
    @State private var textFieldDataRed = ""
    @State private var textFieldDataGreen = ""
    @State private var textFieldDataBlue = ""
    
    var body: some View {
        ZStack{
            Color(red: 0, green: 1, blue: 1, opacity: 0.4)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                RGBView(color: Color.init(UIColor(red: CGFloat(sliderValueRed/255), green: CGFloat(sliderValueGreen/255), blue: CGFloat(sliderValueBlue/255), alpha: 1.0)))
                    .padding(.bottom, 20.0 )
                
                ColorSlider(value: $sliderValueRed, textFieldData: $textFieldDataRed, color: .red)
                ColorSlider(value: $sliderValueGreen, textFieldData: $textFieldDataGreen, color: .green)
                ColorSlider(value: $sliderValueBlue, textFieldData: $textFieldDataBlue, color: .blue)
            }.offset(y: -180)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
