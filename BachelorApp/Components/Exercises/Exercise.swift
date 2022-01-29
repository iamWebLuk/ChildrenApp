//
//  Exercise.swift
//  BachelorApp
//
//  Created by Lukas Weber on 15.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct Exercise: View {
    
    @State private var number: Int = 0
    @State private var textsts: String = ""
    @Binding var nextButtonPressed: Bool
    @Binding var isMathScreen: Bool
    
    
    
    var body: some View {
        
        
        ZStack {
         
        GeometryReader {
            metrics in
            var heightSpacer: CGFloat = metrics.size.height * 0.3
            var buttonSpacer: CGFloat = metrics.size.height * 0.2

            Image("mathematics-background-different-numbers-pattern-2530108")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.4)
                .frame(height: metrics.size.height * 1)
            
            VStack(spacing: heightSpacer) {
//            VStack {
                Spacer()
            HStack {
                Text("2...")
                        .font(.system(size: 60))
                TextField("?", text: $textsts)
                    .disableAutocorrection(true)
                    .border(.gray)
                    .frame(width: 60, alignment: .center)
                    .font(.system(size: 60))
                    .multilineTextAlignment(.center)
                    .keyboardType(.numberPad)
//                    if #available(iOS 15.0, *) {
//                        TextField("?", text:$textsts)
//                            .disableAutocorrection(true)
//                            .border(.secondary)
//                            .frame(width: 60, alignment: .center)
//                            .font(.system(size: 60))
//                            .multilineTextAlignment(.center)
//                            .keyboardType(.numberPad)
//                    } else {
//                        // Fallback on earlier versions
//                    }
                    Text("...4")
                        .font(.system(size: 60))
                        
            }
//                Spacer()
//                    .frame(height:10)
//                    .background(Color.orange)
                HStack {
                    ExerciseBackButton(buttonName: "Zurück", picture: "arrow.left", exerciseButton: $nextButtonPressed)
                    .padding(.bottom, 10)
                ExerciseForthButton(buttonName: "Weiter", picture: "arrow.right", exerciseButton: $nextButtonPressed)
                }
            }
        }}
    }
}

struct Exercise_Previews: PreviewProvider {
    static var previews: some View {
        Exercise(nextButtonPressed: .constant(false), isMathScreen: .constant(false))
    }
}

struct Effect: GeometryEffect {
    var time: Double
    var speed = Double.random(in: 20...200)
    var direction = Double.random(in: -Double.pi ... Double.pi)
    
    var animatableData: Double {
        get { time }
        set { time = newValue }
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        let xTransition = speed * cos(direction) * time
        let yTransition = speed * sin(direction) * time
        let affineTransition = CGAffineTransform(translationX: xTransition, y: yTransition)
        return ProjectionTransform(affineTransition)
    }
    
    
}
