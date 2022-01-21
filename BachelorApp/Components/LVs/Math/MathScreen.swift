//
//  MathScreen.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

struct MathScreen: View {
    @State var wichExercise: String = ""
    @Binding var buttonPressed: Bool
    
    var exercises = ["Zahlen lernen", "Plus", "Minus", "Mal", "Durch"]
    var farben = [Color.green, Color.red, Color.blue, Color.yellow, Color.purple]
    var pictures = ["1", "PLUS", "minuss", "divi", "mal"]
    var videoID = ["TYAX8VW-G_c", "yBfRoFAnC3o", "SzQzWF_LERg", "2bOxrAiULq0", "Ht6ZC6U5vQY"]
    
    var body: some View {
        ZStack {
            Image("mathematics-background-different-numbers-pattern-2530108")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
            
            VStack {
                Text("Mathematik")
                    .padding(.top, 40)
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                    .frame( alignment: .center)
                
                ForEach(0..<5) {num in
                    NewMathButton(buttonText: exercises[num], buttonColor: farben[num], picture: pictures[num], videoID: videoID[num])
                }
                    
                if #available(iOS 14.0, *) {
                    Spacer()
                        .fullScreenCover(isPresented: .constant(false), content: {
                            Text("fullscreen cover")
                        })
                } else {
                    // Fallback on earlier versions
                }
                Button {
                    print("abc")
                    buttonPressed = false
                } label: {
                    HStack {
                    Text("Zurück")
                        .padding()
                    Image(systemName: "arrow.uturn.backward")
                    }
                    .frame(width:300, height: 50)
                    
                }
                .modifier(LVBackButtonAppearance())
            }
        }
    }
}
            
            

struct MathScreen_Previews: PreviewProvider {
    static var previews: some View {
        MathScreen(buttonPressed: .constant(false))
    }
}
