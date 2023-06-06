//
//  ModelView.swift
//  Cars
//
//  Created by mohamdan on 06/06/2023.
//

import SwiftUI

struct ModelView: View {
    //:Properties
    var car : Car
    //:Body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Car Models") {
                ForEach(0..<7) { item in
                    Divider()
                    HStack{
                        Image(systemName: "car")
                            .foregroundColor(car.gradientColors[1])
                        Text("Model \(item+1)")
                            .foregroundColor(car.gradientColors[1])
                            .fontWeight(.bold)
                        Spacer()
                        
                        Text(car.models[item])
                        
                    }
                }// : Hstack
                .padding(.vertical, 2)
                
            }// : Disclosure
            .foregroundColor(car.gradientColors[1])
            
        }//: GroupBox
    }
}

struct ModelView_Previews: PreviewProvider {
    static var previews: some View {
        ModelView(car: carsData[1])
            .preferredColorScheme(.light)
    }
}
