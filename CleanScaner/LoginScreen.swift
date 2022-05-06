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
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    @AppStorage("UserId") var UserId: String = ""
    
    var body: some View {
        VStack() {
            Spacer()
            Text("C L E A N  S C A N N E R")
            .frame(alignment: .center)
            .font(.largeTitle)
            .padding()
            Spacer()
            
            VStack() {
                Spacer()
                HStack() {
                    Text("EMAIL:")
                        .font(.title3)
                        .padding()
                //insert textbox for user
                    Spacer()
                }
                Spacer()
                
                HStack() {
                Text("PASSWORD:")
                        .font(.title3)
                        .padding()
                //insert textbox for user
                    Spacer()
                }
                Spacer()
                
                Text("OR")
                    .font(.title2)
                    .padding()
                Spacer()
                 
                NavigationView {
                    VStack {
                        if UserId.isEmpty {
                            
                        SignInWithAppleButton(.continue) { request in
                            request.requestedScopes = [.email, .fullName]
                        }
                        
                        onCompletion: { result in
                            switch result {
                            case .success(let auth):
                                switch auth.credential {
                                    case let credential as
                                ASAuthorizationAppleIDCredential:
                                    
                                    let userId = credential.user
                                    //below need ot be caught in backend or database because
                                    //can not be gotten back
                                    let email = credential.email
                                    let firstName = credential.fullName?.givenName
                                    let lastName = credential.fullName?.familyName
                                    // TODO: add let for password
                                    
                                    self.email = email ?? ""
                                    self.firstName = firstName ?? ""
                                    self.lastName = lastName ?? ""
                                    self.UserId = userId
                                    break
                                    
                                default:
                                    break
                                }
                                
                            case.failure(let error):
                                print(error)
                            }
                        }
                        }
                    }
                    .frame(width: 300, height: 50)
                        .padding()
                        .cornerRadius(10)
                } .navigationTitle("Sign in")

                
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
