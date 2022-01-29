//
//  Settings.swift
//  BachelorApp
//
//  Created by Lukas Weber on 16.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI
@available(iOS 15.0, *)
struct Settings: View {
    @State private var colorOfButton = Color.red
  
    var body: some View {
        NavigationView {
            GeometryReader {
                metrics in
                ZStack {
                
            Image("cartoon-background-green-valley_MJZrd1ud_thumb")
                .resizable()
                .frame(height: metrics.size.height * 1.5)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.7)
            VStack {
                Spacer(minLength: metrics.size.height * 0.2)
                HStack {
                Text("Name:")
                        .font(.system(size: 30))
                        .frame(width: 100, height: 80, alignment: .leading)
                    Text(UserDefaults.standard.string(forKey: "userName") ?? "Lukas")
                        .font(.system(size: 30))
                        .frame(width: 120, height: 80, alignment: .leading)
                }
                HStack {
                Text("Alter:")
                        .font(.system(size: 30))
                        .frame(width: 100, height: 80, alignment: .leading)
                    Text(UserDefaults.standard.string(forKey: "age") ?? "29")
                        .font(.system(size: 30))
                        .frame(width: 120, height: 80, alignment: .leading)
                }
                Spacer(minLength:  metrics.size.height * 0.4)
                HStack(spacing:50) {
                    SettingsButton(buttonName: "Ändern", color: .red, picture: "gear")
                        .font(.system(size: 30))
                            
                        }
                }
        }
    }
        }
        .navigationBarTitle("Einstellungen")
    }
}

@available(iOS 15.0, *)
struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
