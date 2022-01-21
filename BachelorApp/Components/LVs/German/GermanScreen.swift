//
//  MathScreen.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

struct GermanScreen: View {
@State var wichExercise: String = ""
@Binding var buttonPressed: Bool

var exercises = ["A-F", "G-L", "M-R", "SV", "X-Z"]
var farben = [Color.green, Color.red, Color.blue, Color.yellow, Color.purple]
var pictures = ["1", "PLUS", "minuss", "divi", "mal"]
    var videoID = ["luKyRCSxKL0", "IzIFU9JSFNk", "cllUMYCUQUw", "2bOxrAiULq0", "Ht6ZC6U5vQY"]
    
var body: some View {
    ZStack {
        Image("letters")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .scaledToFill()
            .opacity(0.5)
        
            VStack {
            Text("Deutsch")
                    .modifier(TitleLook())
            
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
                print("deutsch")
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
        

struct GermanScreen_Previews: PreviewProvider {
    static var previews: some View {
        GermanScreen(buttonPressed: .constant(false))
    }
}
