//
//  GroupInviteView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupInviteView: View {
    @State var group1 = "group 1 name"
    @State var group2 = "group 2 name"
    @State var group3 = "group 3 name"
    
    var body: some View {
        VStack {
            Text("Who to invite?")
            HStack {
                GroupCardView(groupName: $group1)
                GroupCardView(groupName: $group2)
                GroupCardView(groupName: $group3)
            }
        }
    }
}

struct GroupInviteView_Previews: PreviewProvider {
    static var previews: some View {
        GroupInviteView()
    }
}
