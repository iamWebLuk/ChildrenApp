//
//  MainButton.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

struct MainButton: View {
    
    var course: String
    var bild: String
    var secondBild: String?
    var color: Color
    var isFlag: Bool?
    
    var body: some View {
        ZStack {
        ZStack {
            
        Text("")
            .frame(width: 170, height: 170, alignment: .top)
            .background(color)
            .cornerRadius(30)
    }
        VStack {
            ZStack {
                Image("pngaaa.com-73714")
                    .resizable()
                    .frame(width: 150, height: 70, alignment: .top)
                    
                Text(course)
                    .font(.system(size: 20))
            }
            if isFlag == nil {
            Image(bild)
            .resizable()
            .frame(width: 80, height: 40)
            } else {
                Image(bild)
                .resizable()
                .frame(width: 50, height: 50)
            }
        }
    }
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(course: "Deutsch", bild: "800px-Flag_of_Austria", color: .green)
    }
}
