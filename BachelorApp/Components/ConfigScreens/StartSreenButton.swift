//
//  StartSreenButotn.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
@available(iOS 15.0, *)
struct StartSreenButton: View {
    
    var buttonName: String
    var color: Color
    var picture: String
    var buttonIsDisabled: Bool {
        age.isEmpty ||    userName.isEmpty
        
    }
    
    
    func buttonDis() -> Bool {
        if (age == "" || userName == "") {
            return false
        } else {
        return true
        }
    }
    
    @State var isShown : Bool = false
    
    @AppStorage("userName") var userName = ""
    @AppStorage("age") var age = ""
    
    var detailInput = DetailsInput()
    
    
    var body: some View {
        GeometryReader {
            metrics in
            let buttonWidth = metrics.size.width * 1.0
            let buttonHeight = metrics.size.height * 1.0
            
            Spacer()
                .fullScreenCover(isPresented: $isShown) {
                    Tabbar()
                }
            
        Button {
            isShown = true
        } label: {
            ZStack {
                Image("pencil")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()
                
            Text("Weiter")
                .frame(width: buttonWidth, height: buttonHeight)
                .frame(maxHeight: 50)
                .foregroundColor(.white)
                .font(.system(size: 25))
                .background(Color.purple)
                .cornerRadius(30)
                .opacity(buttonIsDisabled ? 0.5 : 1)
            }
        }
        .disabled(buttonDis())
//        .foregroundColor(.white)
//        .frame(width: buttonWidth, height: buttonHeight, alignment: .center)
//        .frame(maxHeight: 50)
//        .background(color)
        .cornerRadius(30)
        }
    }
}

@available(iOS 14.0, *)
@available(iOS 15.0, *)
struct StartSreenButton_Previews: PreviewProvider {
    static var previews: some View {
        StartSreenButton(buttonName: "weiter", color: .purple, picture: "1")
    }
}
