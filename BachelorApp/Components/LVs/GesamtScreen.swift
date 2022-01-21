//
//  GesamtScreen.swift
//  BachelorApp
//
//  Created by Lukas Weber on 19.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct GesamtScreen: View {
       
        @State var mathButtonPressed = false
        @State var englishButtonPressed = false
        @State var germanButtonPressed = false
        @State var gymButtonPressed = false
        @State var backButtonPressed = false
    
    
        var body: some View {
//            ZStack {
//    //
//                Image("cartoon-background-green-valley_MJZrd1ud_thumb")
//                    .resizable()
//                    .scaledToFill()
//                    .edgesIgnoringSafeArea(.all)
//                    .frame(width: 400, height: 400)
//                    .overlay(
                VStack {
                    HStack {
                        
                        
                        
                        // mathe
                        
                        
                        
                        NewButton(buttonPressed: $englishButtonPressed, buttonName: "Englisch", bild: "usa_flag", buttonColor: .purple, course: "mathe")
                if #available(iOS 14.0, *) {
                    Spacer().fullScreenCover(isPresented: $englishButtonPressed) {
                        EnglishScreen(buttonPressed: $englishButtonPressed)
                    }
                } else {
                    // Fallback on earlier versions
                }
                        
                        
                        // deutsch
                        
                        
                        
                        NewButton(buttonPressed: $germanButtonPressed, buttonName: "Deutsch", bild: "Austria", buttonColor: .green, course: "deutsch")
                if #available(iOS 14.0, *) {
                    Spacer().fullScreenCover(isPresented: $germanButtonPressed) {
                        GermanScreen(buttonPressed: $germanButtonPressed)
                    }
                } else {
                    // Fallback on earlier versions
    //            }
                }
            }
                    HStack {
                        
                        // englisch
                        
                        
                        NewButton(buttonPressed: $mathButtonPressed, buttonName: "Mathematik", isFlag: false, bild: "PLUS", buttonColor: .blue, course: "english")
                    if #available(iOS 14.0, *) {
                        Spacer().fullScreenCover(isPresented: $mathButtonPressed) {
                            MathScreen(buttonPressed: $mathButtonPressed)
                        }
                    } else {
                        // Fallback on earlier versions
        //            }
                    }
                        
                        // turnen
                        
                        
                        NewButton(buttonPressed: $gymButtonPressed, buttonName: "Sachunterricht", isFlag: false, isTree: true, bild: "tree", buttonColor: .orange, course: "sachunterricht")
                        if #available(iOS 14.0, *) {
                            Spacer().fullScreenCover(isPresented: $gymButtonPressed) {
                                SachScreen(buttonPressed: $gymButtonPressed)
                            }
                        } else {
                            // Fallback on earlier versions
            //            }
//                        }
                            
                    }
                    
                }
//                )
        }
//            .background(Image("cartoon-background-green-valley_MJZrd1ud_thumb"))
    }
        
}
    

struct GesamtScreen_Previews: PreviewProvider {
    static var previews: some View {
        GesamtScreen()
    }
}
