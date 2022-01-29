//
//  NewButton.swift
//  BachelorApp
//
//  Created by Lukas Weber on 19.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct NewButton: View {
    @Binding var buttonPressed: Bool
    var buttonName: String
    var isFlag: Bool?
    var isTree: Bool?
    var bild: String
    var buttonColor: Color
    var course: String
    
    var body: some View {
        
        HStack {
            VStack {
            Button {
                print(course)
                buttonPressed = true
                
            } label: {
                ZStack {
                    Image("pngaaa.com-73714")
                        .resizable()
                        .frame(width: 150, height: 70)
                Text(buttonName)
                    .frame(width: 160, height: 100, alignment: .center)
                    .foregroundColor(.black)
                }
            }
                if isFlag == nil {
                Image(bild)
                .resizable()
                .frame(width: 80, height: 40)
                .padding(.bottom, 20)
                } else if isTree != nil {
                    Image(bild)
                        .resizable()
                        .frame(width:70, height:70)
                        .padding(.bottom, 2)
                } else {
                    Image(bild)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.bottom, 20)
                }
                
            }
            
        .background(buttonColor)
            .cornerRadius(30)
            }
    }
}

struct NewButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
        NewButton(buttonPressed: .constant(false), buttonName:"abc", bild: "1", buttonColor: .red, course: "abc")
        NewButton(buttonPressed: .constant(false), buttonName: "def", bild: "1", buttonColor: .blue, course: "abc")
        }
    }
}
