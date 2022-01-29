//
//  GesamtScreen.swift
//  BachelorApp
//
//  Created by Lukas Weber on 19.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

@available(iOS 15.0, *)
struct GesamtScreen: View {
       
        @State var mathButtonPressed = false
        @State var englishButtonPressed = false
        @State var germanButtonPressed = false
        @State var gymButtonPressed = false
        @State var backButtonPressed = false
    @State var userName = "default"
    @AppStorage("userName") var username = ""
    
        var body: some View {
            GeometryReader { metrics in
                
        var paddingLeft = metrics.size.width * 0.05
            ZStack {
//    //
                Image("cartoon-background-green-valley_MJZrd1ud_thumb")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 2000)
//                    .overlay(
                VStack {
                    Text("Hallo \(username)!")
                        .font(.system(size: 40))
                        .bold()
                        .padding(.bottom, 50)
                        .padding(.top, 100)
                    
                    HStack {
                        
                        
                        // english
                        
                        
                        NewButton(buttonPressed: $englishButtonPressed, buttonName: "Englisch", bild: "usa_flag", buttonColor: .purple, course: "mathe")
                            .padding(.leading, paddingLeft)
               
                    Spacer().fullScreenCover(isPresented: $englishButtonPressed) {
                        EnglishScreen(buttonPressed: $englishButtonPressed)
                    }
                
                        
                        
                        // deutsch
                        
                        
                        
                        NewButton(buttonPressed: $germanButtonPressed, buttonName: "Deutsch", bild: "Austria", buttonColor: .green, course: "deutsch")
                
                    Spacer().fullScreenCover(isPresented: $germanButtonPressed) {
                        GermanScreen(buttonPressed: $germanButtonPressed)
                    }
                
            }
                    HStack {
                        
                        // englisch
                        
                        
                        NewButton(buttonPressed: $mathButtonPressed, buttonName: "Mathematik", isFlag: false, bild: "PLUS", buttonColor: .blue, course: "english")
                            .padding(.leading, paddingLeft)
           
                        Spacer().fullScreenCover(isPresented: $mathButtonPressed) {
                            MathScreen(buttonPressed: $mathButtonPressed)
                        }

                        
                        // turnen
                        
                        
                        NewButton(buttonPressed: $gymButtonPressed, buttonName: "Sachunterricht", isFlag: false, isTree: true, bild: "tree", buttonColor: .orange, course: "sachunterricht")

                            Spacer().fullScreenCover(isPresented: $gymButtonPressed) {
                                SachScreen(buttonPressed: $gymButtonPressed)
                        }
                    }
                }
            }
//            .padding(.leading, 40)
//            .padding(.trailing, 40)
        }
    }
}
    

struct GesamtScreen_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            GesamtScreen()
        } else {
            // Fallback on earlier versions
        }
    }
}
