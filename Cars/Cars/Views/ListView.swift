//
//  ListView.swift
//  Cars
//
//  Created by mohamdan on 06/06/2023.
//

import SwiftUI

struct ListView: View {
    //: Properties
    
    //: Body
    var body: some View {
        NavigationView {
            List{
                ForEach(carsData) { item in
                    NavigationLink(destination:DetailedView(car: item)){
                        CellView(car: item)
                            .padding(.vertical, 4)
                    }//: Navigation link
                }
            }//: List
            .navigationTitle("Cars")
            .navigationBarTitleDisplayMode(.large)
        }//:NavigationView
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
