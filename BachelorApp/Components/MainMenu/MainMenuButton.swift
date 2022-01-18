//
//  MainMenuButton.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

struct MainMenuButton: View {
    var color: Color
    var text: String
//    var bild: Image
    var body: some View {
        HStack {
            ZStack(alignment: .top) {
                
                Text("")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .frame(width: 130, height: 130, alignment: .top)
                    .padding()
                    .background(color)
                    .cornerRadius(30)
                VStack { 
                    ZStack {
                Image("pngaaa.com-73714")
                    .resizable()
                    .frame(width: 150, height: 50, alignment: .top)
                Text(text)
                    .font(.system(size: 30))
                    .frame(height:150, alignment: .top)
                    }
                    .padding(10)
               
                    Text("das ist text")
                        .frame(alignment: .bottom)
                }
            }
            Text("abc")
        }
       
    }
    
}

struct MainMenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuButton(color: .purple, text: "Deutsch")
    }
}
