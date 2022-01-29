//
//  DetailsInput.swift
//  BachelorApp
//
//  Created by Lukas Weber on 07.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI

//@available(iOS 14.0, *)
@available(iOS 15.0, *)
struct DetailsInput: View {
    
    
    
//    @FocusState var amountIsFocused: Bool
    @AppStorage("userName") var userName: String = ""
    @AppStorage("age") var age: String = ""
    
    var body: some View {
        VStack {
            HStack {
            Text("Dein Name:")
                    .frame(width: 120)
                    .padding()
            TextField("Hallo! Wie heißt du?", text: $userName)
                    .frame(width:200)
                    .padding()
                    .background(Color.white)
//                    .focused($amountIsFocused)
//                    .toolbar {
//                        ToolbarItemGroup(placement: .keyboard) {
//                            Button("duno") {
//                            amountIsFocused = false
//                        }
//                        }
                    }
                Spacer()
            }
            
            HStack {
            Text("Dein Alter:")
                    .frame(width:120)
                    .padding()
            TextField("Wie alt bist du?", text: $age)
                    .frame(width: 200)
                    .padding()
                    .background(Color.white)
                    .keyboardType(.numberPad)
//                    .focused($amountIsFocused)
//                    .toolbar {
//                        ToolbarItemGroup(placement: .keyboard) {
//                            Button("Clik me") {
//                                print("pressed")
//                            }
//                        }
//                    }

                Spacer()
            
//                }
        }
//        .toolbar {
//            ToolbarItemGroup(placement: .keyboard) {
//                Button("Done") {
//                    amountIsFocused = false
//                }
//            }
//            }
        
//        }
    }
}

@available(iOS 15.0, *)
struct DetailsInput_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 14.0, *) {
            DetailsInput()
        } else {
            // Fallback on earlier versions
        }
    }
}

extension View {
    func endTextEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
