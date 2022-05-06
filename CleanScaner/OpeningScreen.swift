//
//  ContentView.swift
//  CleanScaner: login interface
//
//  Created by Natalie Hill on 5/2/22.
//
import AuthenticationServices
import SwiftUI

struct OpeningScreen: View {
    
    @State private var login:Bool = false
    
    var body: some View {
        VStack() {
            //CleanScanner title
            Spacer()
            Text("C L E A N  S C A N N E R")
            .frame(alignment: .center)
            .font(.largeTitle)
            .padding()
            //login and register buttons
            HStack() {
                Spacer()
                
                Button("LOGIN") {
                    
                }
                    //TODO: Create login ui for button
                
                .foregroundColor(Color.black)
                
                Spacer()
                
                Button("REGISTER") {
                    //TODO: Create register ui for button
                }
                .foregroundColor(Color.black)
                
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
