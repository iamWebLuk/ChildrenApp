//
//  NewMathButton.swift
//  BachelorApp
//
//  Created by Lukas Weber on 19.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct NewMathButton: View {
    var buttonText: String
    var buttonColor: Color
    var picture: String?
    var videoID: String
    @State var newMathButtonPressed: Bool = false
    var body: some View {
        VStack {
            if #available(iOS 15.0, *) {
                Spacer()
                    .fullScreenCover(isPresented: $newMathButtonPressed){
                        VideoScreen(newMathButtonPressed: $newMathButtonPressed, videoID: videoID)
                    }
            } else {
                // Fallback on earlier versions
            }
            Button {
                   newMathButtonPressed = true
                        
                print("zurück")
            } label: {
                HStack {
                    Image(picture!)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding()
                    
                Text(buttonText)
                    .frame(width: 290, height: 100)
//                    .foregroundColor(.black)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                }
                .background(buttonColor)
            }
            .cornerRadius(30)

        }
    }
}

struct NewMathButton_Previews: PreviewProvider {
    static var previews: some View {
        NewMathButton(buttonText: "hallo", buttonColor: Color.green, videoID: "abc")
    }
}
