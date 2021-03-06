//
//  ExerciseBackButton.swift
//  BachelorApp
//
//  Created by Lukas Weber on 20.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct ExerciseBackButton: View {
    var buttonName: String
    var picture: String
    
    @Binding var exerciseButton: Bool
    
    var body: some View {
        GeometryReader {
            metrics in
            let buttonWidth = metrics.size.width * 1.0
            let buttonHeight = metrics.size.height * 1.0
           
           
        Button {
            exerciseButton = false
            print("back exercise")
        } label: {
                HStack {
                Image(systemName: picture)
                Text(buttonName)
                }
                    .font(.system(size: 20))
                    .frame(width: buttonWidth, height: buttonHeight, alignment: .center)
        }
        .foregroundColor(.white)
//        .frame(width: buttonWidth, height: buttonHeight, alignment: .center)
        .frame(maxHeight: 50)
        .background(Color.red)
        .cornerRadius(30)
        
            }
        
    }
}

struct ExerciseBackButton_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseBackButton(buttonName: "Zurück", picture: "arrow.left", exerciseButton: .constant(false))
    }
}
