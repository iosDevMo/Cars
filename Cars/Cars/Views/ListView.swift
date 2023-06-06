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
        List{
            ForEach(carsData) { item in
                CellView(car: item)
                    .padding(.vertical, 4)
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
