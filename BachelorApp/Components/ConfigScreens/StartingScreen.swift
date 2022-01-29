//
//  StartingScreen.swift
//  BachelorApp
//
//  Created by Lukas Weber on 07.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

//@available(iOS 14.0, *)
@available(iOS 15.0, *)
struct StartingScreen: View {
    @State private var nameOfApp = ""
    @State private var nextButtonPressed = false
    @available(iOS 15.0, *)
    
    
    var body: some View {
        ZStack {
                Spacer().fullScreenCover(isPresented: $nextButtonPressed) {
                    Tabbar()
                }
            Image("nerea-feral-pantalla-de-carga-para-after-mesa-de-trabajo-1")
                .resizable()
                .edgesIgnoringSafeArea(.all)
//            VStack(spacing:100)
            VStack {
//                Text("<Name der App>")
                Text("Name der App")
                    .font(.system(size: 40, weight: .medium, design: .default))
                    .foregroundColor(.black)
                    .padding(.top, 100)
               
                    DetailsInput()
                    .padding(.top, 100)
//                Button {
//                    print("button is pressed")
//                    nextButtonPressed = true
//                } label: {
//                    Text("abc")
//                        .frame(width: 100, height: 100, alignment: .center)
//                        .background(Color.red)
//                }
//                .frame(width: 100, height: 200, alignment: .center)
                Spacer()
                StartSreenButton(buttonName: "cool", color: .purple, picture: "thumb.up")
                    }
//                    .padding()
                }
            .onTapGesture {
//                .hideKeyboard()
        }
    }
}


//@available(iOS 14.0, *)
@available(iOS 15.0, *)
struct StartingScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartingScreen()
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
