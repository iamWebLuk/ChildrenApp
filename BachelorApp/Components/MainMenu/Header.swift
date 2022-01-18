//
//  Header.swift
//  BachelorApp
//
//  Created by Lukas Weber on 27.12.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import SwiftUI

struct Header: View {
    
    var body: some View {
        
        NavigationView {
            VStack() {
                Text("ac")
            }
            .padding()
            .navigationBarTitle("Name der App", displayMode: .inline)
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
