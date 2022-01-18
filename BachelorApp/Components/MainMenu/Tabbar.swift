//
//  Tabbar.swift
//  BachelorApp
//
//  Created by Lukas Weber on 27.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

struct Tabbar: View {
    @State private var startingTab = 1
    @State private var selectedIndex = 2
    @State private var isTrue = true
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.darkGray
    }
    var body: some View {
        NavigationView {
        TabView(selection:$startingTab) {
            RedView()
                .tabItem {
                        Image(systemName: "phone.fill")
                            .background(Color.blue)
                    Text("Testen")
            }
                .tag(0)
            
//            YellowView()
//                .tabItem {
//                    Image(systemName: "plus.circle.fill")
//                    .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 50, height: 50, alignment: .center)
//                        .foregroundColor(.blue)
//
//            }
                .tag(1)
            BlueView()
                .tabItem {
                    if #available(iOS 14.0, *) {
                        Image(systemName: "gamecontroller.fill").font(.title3)
                    } else {
                        // Fallback on earlier versions
                    }
                    Text("Spielen")
                }
                .background(Color.blue)
            .tag(1)
        
            GreenView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Einstellungen")
                        .foregroundColor(.red)
                        .background(Color.blue)
                }
            .tag(2)
        }
//        .accentColor(Color.init(red: 82/255, green: 182/255, blue: 154/255))
        .accentColor(Color.init(red: 0/255, green: 0/255, blue: 0/255))
        .background(Color.black)
}
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
}
        
}

struct RedView: View {
    var body: some View {
//    MathScreen()
        ZStack {
            Image("cartoon-background-green-valley_MJZrd1ud_thumb")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            MainMenuButton(color: .purple, text: "deutsch")
        }
    }
}

struct BlueView: View {
//    @Binding var nameOfUser: String
    var body: some View {
        ZStack {
            Image("cartoon-background-green-valley_MJZrd1ud_thumb")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Top()
            Buttons()
        }
    }
}

struct GreenView: View {
    var body: some View {
//        ZStack {
//            Image("cartoon-background-green-valley_MJZrd1ud_thumb")
//            .resizable()
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
//                Text("green")
//                    .tabItem {
//                        Text("abc")
//            }
//        }
        Settings()
    }
}
struct YellowView: View {
    var body: some View {
        ZStack {
            Image("cartoon-background-green-valley_MJZrd1ud_thumb")
            .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                Text("green")
                    .tabItem {
                        Text("abc")
            }
        }
    }
}
    
struct Tabbar_Previews: PreviewProvider {
    @State static var name = "lukas"
    static var previews: some View {
        Tabbar()
    }
}
