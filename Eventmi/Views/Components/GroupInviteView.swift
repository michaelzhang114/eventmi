//
//  GroupInviteView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupInviteView: View {
    
    @EnvironmentObject var data : DataController
    
    
//    var allGroups : [String]
        
    @State var group1 = "group 1 name"
    @State var group2 = "group 2 name"
    @State var group3 = "group 3 name"
    
//    var ind = data.getAllFriendGroups()
//
    //self.data.addToCurrentFriendGroup(memberName: group1)
    
    
    var body: some View {
        
        VStack (alignment: .center){
            Text("Who to invite?")
                .fontWeight(.semibold)
            HStack {
                GroupCardView(groupName: $group1)
                GroupCardView(groupName: $group2)
                GroupCardView(groupName: $group3)
            }
        }
        .frame(width: 350.0)
    }
}

struct GroupInviteView_Previews: PreviewProvider {
    static var previews: some View {
        GroupInviteView()
    }
}
