//
//  VideoScreenForth.swift
//  BachelorApp
//
//  Created by Lukas Weber on 20.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct VideoScreenForth: View {
    var buttonName: String
    var picture: String
    
    @Binding var exerciseButton: Bool
    
    var body: some View {
        GeometryReader {
            metrics in
            let buttonWidth = metrics.size.width * 1.0
            let buttonHeight = metrics.size.height * 1.0
           
           
        Button {
            exerciseButton = true
            print("next")
        } label: {
            if #available(iOS 14.0, *) {
                Label(buttonName, systemImage:picture)
                    .font(.system(size: 20))
            } else {
                // Fallback on earlier versions
            }
        }
        .foregroundColor(.white)
        .frame(width: buttonWidth, height: buttonHeight, alignment: .center)
        .frame(maxHeight: 50)
        .background(Color.green)
        .cornerRadius(30)
            }
        
    }
}

struct VideoScreenForth_Previews: PreviewProvider {
    static var previews: some View {
        VideoScreenForth(buttonName: "Weiter", picture: "pencil", exerciseButton: .constant(false))
    }
}
