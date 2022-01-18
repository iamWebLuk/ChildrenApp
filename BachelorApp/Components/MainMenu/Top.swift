//
//  Top.swift
//  BachelorApp
//
//  Created by Lukas Weber on 27.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

struct Top: View {
//    @Binding var nameOfUser: String
//    private var name: String
    
    func theName() {
//        name = nameOfUser
    }
    var body: some View {
        ZStack {
          
            VStack {
                Text("<Name der App>")
                    .font(.system(size: 40, weight: .medium, design: .default))
                    .foregroundColor(.white)
                     .padding()
               
                VStack {
                    Text("<Name des Nutzers>")
                    Text("<name de Nutzers")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                    
                }
               
                Spacer()
            }
            
        }
    }
}

//struct Top_Previews: PreviewProvider {
//    @State static var name1 = "lukas"
//    static var previews: some View {
//        Top(nameOfUser: $name1)
//    }
//}
