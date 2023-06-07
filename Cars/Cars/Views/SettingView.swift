//
//  SettingView.swift
//  Cars
//
//  Created by mohamdan on 07/06/2023.
//

import SwiftUI

struct SettingView: View {
    //: Properties
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    //:Body
    var body: some View {
        NavigationView {
            VStack{
                //: GroupBox
                GroupBox{
                    HStack{
                        Text("Cars".uppercased())
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title)
                    }//: Hstack first cell
                    Divider()
                    HStack{
                        Image("icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80, alignment: .center)
                        Text("Cars App include very imprtant information about luxury cars. it has details about history of different models.")
                    }//: Hstack second cell
                }//:GroupBox
                //: CheckBox
                Toggle(isOn: $isOnboarding) {
                    Text("Restart")
                        .font(.title)
                }
                .padding()
                .background(.ultraThickMaterial)
                .cornerRadius(8)
                Spacer()
            }//: Vstack main
            .navigationTitle("Setting")
            .navigationBarItems(trailing: Button(action: {
                //action
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title2)
            }))
        }//: Navigation View
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
