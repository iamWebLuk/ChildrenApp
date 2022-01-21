//
//  LVBackButton.swift
//  BachelorApp
//
//  Created by Lukas Weber on 20.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct LVBackButtonAppearance: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.white)
            .frame(width: 300, height: 50, alignment: .center)
            .frame(maxHeight: 50)
            .background(Color.red)
            .cornerRadius(30)
            .padding(.bottom, 50)
    }
}
