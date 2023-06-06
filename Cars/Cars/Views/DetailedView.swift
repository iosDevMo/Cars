//
//  DetailedView.swift
//  Cars
//
//  Created by mohamdan on 06/06/2023.
//

import SwiftUI

struct DetailedView: View {
    //: Properties
    var car : Car
    
    //: Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            VStack{
                //: header
                Image(car.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 440, alignment: .center)
                    .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
                VStack(alignment: .leading, spacing: 15){
                    //car title
                    Text(car.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(car.gradientColors[1])
                    //: car headline
                    Text(car.headline)
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    //: model
                    
                    
                    //:description
                    Text("Learn more about \(car.title)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(car.gradientColors[1])
                    
                    Text(car.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    //: link
                    
                }//:Vstack
                .padding(.horizontal, 15)
            }//:Vstack main end
        }//: Scroll View
        
        
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(car: carsData[7])
    }
}
