//
//  Settings.swift
//  BachelorApp
//
//  Created by Lukas Weber on 16.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct Settings: View {
    @State private var isEdit = false
    @State private var colorOfButton = Color.red
    func buttonslk() -> Color {
        if(isEdit) {
            colorOfButton = Color.red
            isEdit = true
            return Color.green
        } else {
            colorOfButton = Color.green
            isEdit = false
            return Color.red
        }
    }
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
                    Text("Lukas")
                        .font(.system(size: 30))
                        .frame(width: 100, height: 80, alignment: .leading)
                }
                HStack {
                Text("Alter:")
                        .font(.system(size: 30))
                        .frame(width: 100, height: 80, alignment: .leading)
                    Text("10")
                        .font(.system(size: 30))
                        .frame(width: 100, height: 80, alignment: .leading)
                }
                Spacer(minLength:  metrics.size.height * 0.3)
                HStack(spacing:20) {
//                    VideoButtons(buttonName: "Editieren", color: colorOfButton, picture: "wrench.fill")
//                        .onTapGesture {
//                            print("is edit \(isEdit)")
                            
                    SettingsButtons(buttonName: "buttonname", color: .purple, picture: "pencil")
                            
                        }
                }
        }
    }
        }
        .navigationBarTitle("Einstellungen")
//        .padding(-50)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
