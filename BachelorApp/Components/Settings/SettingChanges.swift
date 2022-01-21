//
//  SettingChanges.swift
//  BachelorApp
//
//  Created by Lukas Weber on 19.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct SettingChanges: View {
    @State private var userName: String = ""
    @State private var age: String = ""
    @Binding var isShown : Bool
    var body: some View {
            GeometryReader {
                metrics in
                VStack(spacing: 20) {
                    let buttonWidth = metrics.size.width * 1.0
                    let buttonHeight = metrics.size.height * 1.0
                    Text("Ändere deinen Namen oder Alter")
                        .font(.largeTitle)
                        .padding(.bottom, 100)
                        .padding(.top, 50)
                        .multilineTextAlignment(.center)
                    
                    HStack {
                    Text("Name: ")
                            .frame(width: 100)
                            .font(.system(size: 20))
                    TextField("Hallo! Wie heißt du?", text: $userName)
                            .frame(width:200)
                            .padding()
                            .background(Color.white)
                            .border(.gray)
                            .font(.system(size: 20))
                    }
                    HStack {
                    Text("Alter: ")
                            .frame(width: 100)
                            .font(.system(size: 20))
                        TextField("Wie alt bist du?", text: $age)
                                .frame(width:200)
                                .padding()
                                .background(Color.white)
                                .border(.gray)
                                .font(.system(size: 20))
                    }
                    Spacer()
                    Button {
                        isShown = false
                        print(isShown)
                    } label: {
                        Text("Weiter")
                            .padding()
                        Image(systemName: "hand.thumbsup")
                        
                        //            if #available(iOS 14.0, *) {
                        //                Label("Weiter", systemImage:"hand.thumbsup")
                        //                    .font(.system(size: 20))
                        //            } else {
                        //                // Fallback on earlier versions
                        //            }
                    }
                    .foregroundColor(.white)
                    .frame(width: buttonWidth, height: buttonHeight, alignment: .center)
                    .frame(maxHeight: 50)
                    .background(Color.green)
                    .cornerRadius(30)
                    .padding(.bottom, 30)
                }
                
            }
}
}
struct SettingChanges_Previews: PreviewProvider {
    @State static var isTrue = true
    static var previews: some View {
        SettingChanges(isShown: $isTrue)
    }
}
