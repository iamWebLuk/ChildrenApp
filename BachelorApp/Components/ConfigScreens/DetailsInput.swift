//
//  DetailsInput.swift
//  BachelorApp
//
//  Created by Lukas Weber on 07.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct DetailsInput: View {
    @State var username: String = ""
    @State var age = ""
    
    var body: some View {
        VStack {
            HStack {
            Text("Dein Name:")
                    .frame(width: 120)
                    .padding()
            TextField("Hallo! Wie heißt du?", text: $username)
                    .frame(width:200)
                    .padding()
                    .background(Color.white)
                Spacer()
            }
            
            HStack {
            Text("Dein Alter:")
                    .frame(width:120)
                    .padding()
            TextField("Wie alt bist du?", text: $age)
                    .frame(width: 200)
                    .padding()
                    .background(Color.white)
                    .keyboardType(.numberPad)
                    .onTapGesture {
                        endTextEditing()
                    }
                Spacer()
            
            }
            }
//            Spacer()
//            ProfilePicture()
        }
    
}

struct DetailsInput_Previews: PreviewProvider {
    static var previews: some View {
        DetailsInput()
    }
}

extension View {
    func endTextEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
