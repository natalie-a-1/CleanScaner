//
//  ContentView.swift
//  CleanScaner: login interface
//
//  Created by Natalie Hill on 5/2/22.
//
import AuthenticationServices
import SwiftUI

struct OpeningScreen: View {
    @State private var loginPushed = false
    @State private var registerPushed = false
    
    var body: some View {
        VStack() {
            
            Spacer()
            Text("C L E A N  S C A N N E R")
            .frame(alignment: .center)
            .font(.largeTitle)
            .padding()
            
            HStack() {
                Spacer()
                
                Button("LOGIN") {
                    loginPushed.toggle()
                }
                .foregroundColor(Color.black)
                
                if loginPushed {
                   LoginScreen()
                }
                
                Spacer()
                
                Button("REGISTER") {
                    registerPushed.toggle()
                    //TODO: Create register ui for button
                }
                .foregroundColor(Color.black)
                
                if registerPushed {
                    RegisterScreen()
                }
                
                Spacer()
            }
            Spacer()
        }
    }
}

    

struct OpeningScreen_Previews: PreviewProvider {
    static var previews: some View {
        OpeningScreen()
    }
}

