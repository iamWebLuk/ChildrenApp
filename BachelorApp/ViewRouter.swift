//
//  ViewRouter.swift
//  BachelorApp
//
//  Created by Lukas Weber on 28.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

class ViewRouter: ObservableObject {
 
   
    init() {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
            currentPage = "onboardingView"
        } else {
            currentPage = "homeView"
        }
    }
    
    @Published var currentPage: String
}
