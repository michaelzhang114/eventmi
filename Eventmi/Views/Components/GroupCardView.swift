//
//  GroupCardView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupCardView: View {
    @Binding var groupName: String
    var body: some View {
        VStack {
            Image("users-icon")
                .resizable()
                .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
                .shadow(radius: 10)
                .frame(width: 50.0, height:50.0)
            Text(groupName)
                .font(.subheadline)
            InviteGroupButtonView()
        }
    }
}

struct GroupCardView_Previews: PreviewProvider {
    @State static var tmp = "some group name"
    static var previews: some View {
        GroupCardView(groupName: $tmp)
    }
}
