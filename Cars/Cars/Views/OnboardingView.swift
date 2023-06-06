//
//  ContentView.swift
//  Cars
//
//  Created by mohamdan on 05/06/2023.
//

import SwiftUI

struct OnboardingView: View {
    //: Properties
    
    //: Body
    var body: some View {
        TabView{
            ForEach(carsData) { item in
                CardView(car: item)
                    .cornerRadius(15)
                    .padding(.horizontal, 10)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
