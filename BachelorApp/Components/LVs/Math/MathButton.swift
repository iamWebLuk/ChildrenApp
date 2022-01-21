//
//  MathButton.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

struct MathButton: View {
    
    var color: Color
    var name: String
    var picture: String
    
    var body: some View {
        NavigationView {
        GeometryReader {
            metrics in
            VStack {
            Button {
                print("abc")
            } label: {
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()
//                NavigationLink(destination: VideoScreen(newMathButtonPressed: .constant(false))) {
                Text(name)
                    .foregroundColor(.white)
                    .frame(width: metrics.size.width * 0.3
                           , height: metrics.size.height * 0.1)
//                }
//                    .padding(.trailing, 10)
            }
            .background(Color.red)
            .cornerRadius(30)
//            .padding()
            
//        }
//        HStack {
//           Image(picture)
//           .resizable()
//               .frame(width: 50, height: 50, alignment: .leading)
//               .padding()
//            Text(name)
//                .foregroundColor(.white)
//                .frame(maxWidth: .infinity, maxHeight: 80, alignment: .center)
//               }
//                .background(color)
//                .cornerRadius(20)
//                .frame(width: metrics.size.width * 1)
//                .scaledToFit()
        }
    }
}
}
}

struct MathButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing:1) {
            MathButton(color: .purple, name: "name", picture: "1")
        }
    }
}
