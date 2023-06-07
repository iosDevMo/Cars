//
//  CardView.swift
//  Cars
//
//  Created by mohamdan on 06/06/2023.
//

import SwiftUI

struct CardView: View {
    //: Properties
    var car : Car
    @State var isAnimating : Bool = false
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    //: Body
    
    var body: some View {
        VStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .padding()
                .scaleEffect(isAnimating ? 1 : 0.6)
                .animation(.linear(duration: 0.4), value: isAnimating)
            
            Text(car.title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
            
            Text(car.headline)
                .foregroundColor(.white)
                .font(.title3)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
            
            Button {
                isOnboarding = false
            } label: {
                Image(systemName: "arrow.right.circle")
                Text("start")
            }
            .font(.largeTitle)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .foregroundColor(.white)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.5))

        }//: Vstack
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 2, x: 2, y: 2)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
        .onAppear{
            isAnimating = true
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(car: carsData[1])
    }
}
