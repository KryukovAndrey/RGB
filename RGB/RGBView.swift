//
//  RGBView.swift
//  RGB
//
//  Created by Andrey on 25.07.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

struct RGBView: View {
    var color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 150.0)
            .foregroundColor(color)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4)
        )
            .padding(.horizontal, 10.0)
            .shadow(radius: 5)
    }
}

struct RGBView_Previews: PreviewProvider {
    static var previews: some View {
        RGBView(color: Color.blue)
    }
}
