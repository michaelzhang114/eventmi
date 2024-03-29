//
//  ContactCardView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct ContactCardViewHorizontal: View {
    @Binding var name : String
    @Binding var membersList: [String]
    
    var body: some View {
        HStack {
            Image("user-icon")
                .resizable()
                .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
                .shadow(radius: 10)
                .frame(width: 50.0, height:50.0)
            Text(name)
                .font(.subheadline)
            InviteButtonView(memberName: $name, membersList: $membersList)
        }
        .frame(width: 350.0)
        
    }
}

struct ContactCardViewHorizontal_Previews: PreviewProvider {
    @State static var name = "John"
    @State static var membersList: [String] = []
    static var previews: some View {
        ContactCardViewHorizontal(name: $name, membersList: $membersList)
    }
}
