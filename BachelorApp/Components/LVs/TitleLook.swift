//
//  TitleLook.swift
//  BachelorApp
//
//  Created by Lukas Weber on 20.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

struct TitleLook: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.top, 40)
            .font(.system(size: 40))
            .foregroundColor(.black)
            .frame( alignment: .center)
    }
}
