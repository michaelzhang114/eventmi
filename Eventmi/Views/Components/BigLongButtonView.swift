//
//  BigLongButtonView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct BigLongButtonView: View {
    @Binding var name: String
    @Binding var groupName: String
    @EnvironmentObject var data : DataController
    
    var body: some View {
        Button(action: {
        }){
            Text(name)
                .font(.title)
                .padding(10)
                .foregroundColor(Color.white)
                
        }
        .frame(width: 350.0, height: 60)
        .background(Color.purple)
    }
}

struct BigLongButtonView_Previews: PreviewProvider {
    @State static var name = "Create"
    @State static var groupName = "HotPotSquad"
    static var previews: some View {
        BigLongButtonView(name: $name, groupName: $groupName)
    }
}
