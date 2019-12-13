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
    
    
    @State var group1 = 0
    @State var group2 = 1
    @State var group3 = 2
    
 //   var listOfGroups : [String] = ["a", "b"]
//    var ind = data.getAllFriendGroups()
//
    //self.data.addToCurrentFriendGroup(memberName: group1)
    
    
    
    var body: some View {
        
        VStack (alignment: .center){
            Text("Who to invite?")
                .fontWeight(.semibold)
            HStack {
                if (self.data.listOfFriendGroups.isEmpty) {
                    Text("There are no friend groups")
                }
                else if (self.data.listOfFriendGroups.count == 1) {
                    GroupCardView(index:
                        $group1)
                }
                else if (self.data.listOfFriendGroups.count == 2) {
                    GroupCardView(index: $group1)
                    GroupCardView(index:
                        $group2)
                }
                else {
                    GroupCardView(index: $group1)
                    GroupCardView(index: $group2)
                    GroupCardView(index: $group3)
                }
            }
        }
        .frame(width: 350.0)
        .padding(.bottom, -20.0)
    }
}

struct GroupInviteView_Previews: PreviewProvider {
    static var previews: some View {
        GroupInviteView()
    }
}
