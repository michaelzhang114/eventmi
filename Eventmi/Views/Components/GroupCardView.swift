//
//  GroupCardView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupCardView: View {
    
    @EnvironmentObject var data: DataController
    @Binding var index: Int
    var body: some View {
        VStack {
            Image("users-icon")
                .resizable()
                .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
                .shadow(radius: 10)
                .frame(width: 50.0, height:50.0)
            Text(self.data.listOfFriendGroups[index].groupName)
                .font(.subheadline)
            InviteGroupButtonView(index: $index)
        }
    }
}

struct GroupCardView_Previews: PreviewProvider {
    @State static var tmp = 0
    static var previews: some View {
        GroupCardView(index: $tmp)
    }
}
