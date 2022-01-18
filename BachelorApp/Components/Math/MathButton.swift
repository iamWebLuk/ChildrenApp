//
//  MathButton.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

struct MathButton: View {
    
    var color: Color
    var name: String
    var picture: String
    
    var body: some View {
        HStack {
           Image(picture)
           .resizable()
               .frame(width: 50, height: 50, alignment: .leading)
               .padding()
            Text(name)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 80, alignment: .center)
               }
                .background(color)
                .cornerRadius(20)
    }
}

struct MathButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing:1) {
            MathButton(color: .pink, name: "Zahlen", picture:"1")
            MathButton(color: .purple, name: "purple", picture:"mal")
        }
    }
}
