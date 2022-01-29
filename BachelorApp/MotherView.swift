//
//  MotherView.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
@available(iOS 15.0, *)
struct MotherView: View {

    @EnvironmentObject var viewRouter: ViewRouter
    @AppStorage("userName") var userName = ""
    @AppStorage("age") var age = ""
    var body: some View {
        VStack {
        if viewRouter.currentPage == "onboardingView" || userName == "" || age == "" {
            StartingScreen()
        } else if viewRouter.currentPage == "homeView" {
            Tabbar()
        }
        }
    }
}
