//
//  MathScreen.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

@available (iOS 15.0, *)
struct EnglishScreen: View {
@State var wichExercise: String = ""
@Binding var buttonPressed: Bool

var exercises = ["Colors", "Numbers", "Family", "Animals", "Bodyparts"]
var farben = [Color.orange, Color.yellow, Color.green, Color.blue, Color.indigo]
var pictures = ["PLUS", "1", "minuss", "divi", "mal"]
    var videoID = ["E5b3hPDlO-I", "tbkP7FQy1WQ", "cllUMYCUQUw", "oDDkLGcje00", "j6g_OPGdblU"]
    
var body: some View {
    ZStack {
        Image("london")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .scaledToFill()
            .opacity(0.3)
        
        VStack(spacing:0.5) {
            Text("Englisch")
                .modifier(TitleLook())
//                .font(.system(size: 30))
//                .foregroundColor(.black)
//                .frame( alignment: .center)
            
            ForEach(0..<5) { num in
                NewMathButton(buttonText: exercises[num], buttonColor: farben[num], picture: pictures[num], videoID: videoID[num])
            }
                
                Spacer()
                    .fullScreenCover(isPresented: .constant(false), content: {
                        Text("fullscreen cover")
                    })

            Button {
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
struct EnglishScreen_Previews: PreviewProvider {
static var previews: some View {
    EnglishScreen(buttonPressed: .constant(false))
}
}
