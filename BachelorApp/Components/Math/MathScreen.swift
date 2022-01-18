//
//  MathScreen.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

struct MathScreen: View {
    @State private var wichExercise: String = ""
    var body: some View {
        ZStack {
            Image("mathematics-background-different-numbers-pattern-2530108")
                .resizable()
                .edgesIgnoringSafeArea(.all)
//        NavigationView {
            VStack(spacing:1) {
                MathButton(color: .pink, name: "Zahlen lernen", picture: "1").onTapGesture {
                    print("hello world")
                }
                MathButton(color: .blue, name: "Plus", picture: "PLUS").onTapGesture {
                    print("abc")
                }
                MathButton(color: .purple, name: "Minus", picture:"minuss").onTapGesture {
                    print("purple")
                }
                MathButton(color: .gray, name: "Mal", picture: "mal").onTapGesture {
                    print("gray")
                }
                MathButton(color: .orange, name: "Durch", picture:"divi").onTapGesture {
                    print("orange")
                }
                }.navigationBarTitle(Text("Mathematik"))
                           .foregroundColor(.black)
            
        }
//        }
    }
}

struct MathScreen_Previews: PreviewProvider {
    static var previews: some View {
        MathScreen()
    }
}
