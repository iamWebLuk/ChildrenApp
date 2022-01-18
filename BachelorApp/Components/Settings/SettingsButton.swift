//
//  VideoButtons.swift
//  BachelorApp
//
//  Created by Lukas Weber on 15.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct SettingsButtons: View {
    var buttonName: String
    var color: Color
    var picture: String
    
    var body: some View {
        GeometryReader {
            metrics in
            let buttonWidth = metrics.size.width * 1.0
            let buttonHeight = metrics.size.height * 1.0
            
            NavigationLink(destination: VideoScreen()) {
        Button {
            
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
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        
    }
}

struct SettingsButtons_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButtons(buttonName: "abc", color: .red, picture: "pencil")
    }
}
