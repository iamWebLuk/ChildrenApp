//
//  VideoButtons.swift
//  BachelorApp
//
//  Created by Lukas Weber on 15.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct VideoButtons: View {
    var buttonName: String
    var color: Color
    var picture: String
    
    var body: some View {
        GeometryReader {
            metrics in
            let buttonWidth = metrics.size.width * 1.0
            let buttonHeight = metrics.size.height * 1.0
           
           
        Button {
            print("abc")
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
        .background(color)
        .cornerRadius(30)
            }
        
    }
}

struct VideoButtons_Previews: PreviewProvider {
    static var previews: some View {
        VideoButtons(buttonName: "abc", color: .red, picture: "pencil")
    }
}
