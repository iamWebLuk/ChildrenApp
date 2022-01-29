//
//  MathScreen.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

@available(iOS 15.0, *)
struct SachScreen: View {
@State var wichExercise: String = ""
@Binding var buttonPressed: Bool

    var exercises = ["Obst","Mensch","Natur","Pflanzen","Tiere"]
var farben = [Color.orange, Color.yellow, Color.green, Color.blue, Color.indigo]
    var pictures = ["apfel", "gesicht", "tree", "plant", "elefant"]
    var videoID = ["luKyRCSxKL0", "IzIFU9JSFNk", "cllUMYCUQUw", "2bOxrAiULq0", "Ht6ZC6U5vQY"]
    
var body: some View {
    ZStack {
        Image("mathematics-background-different-numbers-pattern-2530108")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .scaledToFill()
            .opacity(0.2)
        
        VStack(spacing:0.5) {
            Text("Sachunterricht")
                .modifier(TitleLook())
            
            ForEach(0..<5) {num in
                NewMathButton(buttonText: exercises[num], buttonColor: farben[num], picture: pictures[num], videoID: videoID[num])
            }
                
            if #available(iOS 15.0, *) {
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
    

@available(iOS 15.0, *)
struct SachScreen_Previews: PreviewProvider {
static var previews: some View {
    SachScreen(buttonPressed: .constant(false))
}
}
