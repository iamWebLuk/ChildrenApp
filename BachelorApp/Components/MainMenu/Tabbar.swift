//
//  Tabbar.swift
//  BachelorApp
//
//  Created by Lukas Weber on 27.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct Tabbar: View {
    @State private var startingTab = 0
    @State private var selectedIndex = 1
    @State private var isTrue = true
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.gray
    }
    var body: some View {
//        NavigationView {
        TabView(selection:$startingTab) {
//            RedView()
            if #available(iOS 14.0, *) {
                GesamtScreen()
                    .tabItem {
                        Image(systemName: "info.circle")
                            .background(Color.blue)
                        Text("About")
                    }
                    .tag(0)
            } else {
                // Fallback on earlier versions
            }
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
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
//}
        
}

struct RedView: View {
    @State var mathButtonPressed = false
    @State var englishButtonPressed = false
    @State var germanButtonPressed = false
    @State var backButtonPressed = false
    var body: some View {
        Text("abc")
        
    }
}

struct BlueView: View {
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

@available(iOS 14.0, *)
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
    
@available(iOS 14.0, *)
struct Tabbar_Previews: PreviewProvider {
    @State static var name = "lukas"
    static var previews: some View {
        Tabbar()
    }
}
