//
//  CarsApp.swift
//  Cars
//
//  Created by mohamdan on 05/06/2023.
//

import SwiftUI

@main
struct CarsApp: App {
    //: Properties
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    //: Body
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else{
                ListView()
            }
        }
    }
}
