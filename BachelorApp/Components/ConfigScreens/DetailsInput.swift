//
//  DetailsInput.swift
//  BachelorApp
//
//  Created by Lukas Weber on 07.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI


enum Numbers: String, CaseIterable {
    case ten = "10"
    case nine = "9"
    case eight = "8"
    case seven = "7"
    case six = "6"
}

//@available(iOS 14.0, *)
@available(iOS 15.0, *)
struct DetailsInput: View {
    

    
    
    
//    @FocusState var amountIsFocused: Bool
    @AppStorage("userName") var userName: String = ""
    @AppStorage("age") var age: String = ""
    var pickedNumber = ""
    @State var selectedAge: Numbers = .six
   
    
    func textFieldIsEmpty() -> Bool {
        if userName.isEmpty {
            return false
        }
        if age.isEmpty {
            return false
        }
        return true
    }
    
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
                    .border(.secondary)
                    .submitLabel(.done)
        }
//                Spacer()
//            }
            
            HStack {
            Text("Dein Alter:")
                    .frame(width:120)
                    .padding()
                Picker(selection: Binding(get: {selectedAge}, set: {newValues in
                    age = newValues.rawValue}
                      ), label: Text("Picker"))
                {
                    ForEach(Numbers.allCases, id: \.self) { number in
                        Text(number.rawValue)
                        
                    }
//                    frame(width:100)
                }
                .frame(width:230, height: 50)
                .border(.primary)
                .background(Color.white)
//                .colorMultiply(.gray).colorInvert()
//            TextField("Wie alt bist du?", text: $age)
//                    .frame(width: 200)
//                    .padding()
//                    .background(Color.white)
//                    .keyboardType(.numberPad)
//                    .submitLabel(.done)
            }

                Spacer()
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
            DetailsInput()
    }
}

extension View {
    func endTextEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
