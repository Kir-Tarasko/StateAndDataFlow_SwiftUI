//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            ButtonTimerView(timer: timer)
            ButtonView(action: {user.name = ""}, titleOfButton: "Logout", color:.blue)
                .padding(.top, 200)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}


struct ButtonTimerView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        ButtonView(action: timer.startTimer, titleOfButton: timer.buttonTitle, color: .red)
    }
}

