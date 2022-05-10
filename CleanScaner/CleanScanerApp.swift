//
//  CleanScanerApp.swift
//  CleanScaner
//
//  Created by Natalie Hill on 5/2/22.
//

import SwiftUI
import Firebase

@main
struct CleanScanerApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginScreen()
        }
    }
}
