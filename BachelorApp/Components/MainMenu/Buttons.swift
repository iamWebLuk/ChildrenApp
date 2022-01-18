//
//  Buttons.swift
//  BachelorApp
//
//  Created by Lukas Weber on 27.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

struct Buttons: View {
    @State var changePage = false
    var body: some View {
//        NavigationView {
        VStack {
            HStack {
                MainButton(course: "Deutsch", bild: "800px-Flag_of_Austria", color: Color.init(red: 82/255, green: 184/255, blue: 90/255))
                MainButton(course: "Englisch", bild:
                    "usa_flag", color: .purple)
            
        
        }
            HStack {
//                NavigationLink(destination: MathScreen()) {
                MainButton(course: "Mathematik", bild: "PLUS", color: .blue, isFlag: false)
//                }
                MainButton(course: "Turnen", bild: "football", color: .orange, isFlag: false)
            }
        }
//    }
//            Button(action: {}) {
//                ZStack {
//                    Image(systemName: "tv.fill")
//                Text("Engisch")
//                    .foregroundColor(.white)
//                    .frame(width: 150, height: 150, alignment: .center)
//                }
//            }
//                    .background(Color.red)
//                    .cornerRadius(30)
//        }
//            .padding()
//            NavigationLink(destination: MathScreen(), label: {
//                MathButton(color: .pink, name: "text")
//                })
//
//        HStack {
//        Button(action: {
//            print("hello world")
//            self.changePage = true
//        }) {
//            Text("Mathe")
//                .foregroundColor(.white)
//                .frame(width: 150, height: 150, alignment: .center)
//                           }
//                .background(Color.blue)
//                .cornerRadius(30)
//
//                }
//
//        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
//            Text("Turnen")
//                .foregroundColor(.white)
//                .frame(width: 150, height: 150, alignment: .center)
//   }
//                .background(Color.orange)
//
//                .cornerRadius(30)
//        }
//            }
        }
}
var myFriend = [
    Friend(id: 1, name: "Zahlen"),
    Friend(id: 2, name: "Plus"),
    Friend(id: 3, name: "Minus"),
    Friend(id: 4, name: "Mal"),
    Friend(id: 5, name: "Durch"),
    Friend(id: 6, name: "abf")
]

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
