//
//  ProfilePicture.swift
//  BachelorApp
//
//  Created by Lukas Weber on 07.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct ProfilePicture: View {
    var body: some View {
        VStack(spacing:150) {
            Text("Suche dir dein Lieblingstier als Profilbild aus")
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
        }
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture()
    }
}
