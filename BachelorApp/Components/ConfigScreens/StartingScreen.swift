//
//  StartingScreen.swift
//  BachelorApp
//
//  Created by Lukas Weber on 07.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct StartingScreen: View {
    var body: some View {
        NavigationView {
        ZStack {
            Image("nerea-feral-pantalla-de-carga-para-after-mesa-de-trabajo-1")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:100) {
                Text("<Name der App>")
                    .font(.system(size: 40, weight: .medium, design: .default))
                    .foregroundColor(.black)
                     .padding()
                DetailsInput()
                Spacer()
                NavigationLink(destination: Tabbar()) {
                        Text("weiter")
                    }
                    .padding()
                    .background(Color.black)
                }
            }
        }
            .onTapGesture {
                hideKeyboard()
            }
//            }
        }
    }


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
