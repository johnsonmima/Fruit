//
//  SUI2_APP_FRUITSApp.swift
//  SUI2-APP-FRUITS
//
//  Created by Johnson Olusegun on 1/6/21.
//

import SwiftUI

@main
struct SUI2_APP_FRUITSApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding:Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
            OnboardingView()
            }
            else{
                ContentView()
            }
        }
    }
}
