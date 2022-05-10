//
//  LoginScreen.swift
//  CleanScaner
//
//  Created by Natalie Hill on 5/5/22.
//

import Foundation
import SwiftUI
import AuthenticationServices

struct LoginScreen: View {
    @AppStorage("email") var email: String = ""
    @AppStorage("password") var password: String = ""
    
    var body: some View {
        VStack() {
            Spacer()
            Text("C L E A N  S C A N N E R")
            .frame(alignment: .center)
            .font(.largeTitle)
            .padding(.vertical, 120)
            
            VStack() {
                HStack() {
                    Text("EMAIL:")
                        .font(.title3)
                        .padding()
                        .padding(.trailing, -10)
                    
                    TextField("Enter email", text: $email)
                        .padding()
                        .padding(.leading, -10)
                    
                }
                
                HStack() {
                Text("PASSWORD:")
                        .font(.title3)
                        .padding()
                        .padding(.trailing, -10)


                    Spacer()
                    
                    TextField("Enter password", text: $password)
                        .padding()
                        .padding(.leading, -10)
                }
                Spacer()
                
//                Button("LOGIN") {
//                    let localEmail: String = $email
//                    email = localEmail
//                    UserDefaults.standard.set(localEmail, forKey: "email")
//
//                    let localPass: String = $password
//                    password = localPass
//                    UserDefaults.standard.set(localPass, forKey: "password")
//
//                }
                    }
                }

                
            }
        }

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
