//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack {
            HStack {
            TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
            Text("\(name.count)")
                .foregroundColor(name.count > 2 ? .green : .red)
                .padding(.trailing, 16)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
            .disabled(checkText())
        }
    }
    private func registerUser() {
        user.name = name
    }
    
    private func checkText() -> Bool{
        if name.count > 2 {
            return false
        } else {
            return true
        }
    }
}

 

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
