//
//  FriendsGroupList.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct FriendsGroupIndexOneGroup: View {
    @State var name1 = "Hot Pot Squad"
    @State var members1 = "Alethea, Fatima, Nnamdi"
    @State var numMembers1 = "3 People"
    
    var body: some View {
        
        VStack {
            SortFilterBarView()
            
            FriendGroupCard(groupName: $name1, groupMembers: $members1, numMembers: $numMembers1)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Create Friend Group")
            }
            
        }
        
    }
}


struct FriendsGroupIndexOneGroup_Previews: PreviewProvider {
    static var previews: some View {
        FriendsGroupIndexOneGroup()
    }
}
