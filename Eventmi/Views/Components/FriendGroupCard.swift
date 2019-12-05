//
//  SortFilterBar.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct FriendGroupCard: View {
    @Binding var groupName: String
    @Binding var groupMembers: String
    @Binding var numMembers: String
    
    var body: some View {
        HStack {
            
            Image("users-icon")
            .resizable()
            .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
            .shadow(radius: 10)
            .frame(width: 50.0, height:50.0)
            
            VStack {
                Text(groupName)
                Text(groupMembers)
                Text(numMembers)
            }
        }
    }
}

struct FriendGroupCard_Previews: PreviewProvider {
    
    @State static var name1 = "Hot Pot Squad"
    @State static var members1 = "Alethea, Fatima, Nnamdi"
    @State static var numMembers1 = "3 People"
    
    static var previews: some View {
        FriendGroupCard(groupName: $name1, groupMembers: $members1, numMembers: $numMembers1)
    }
}
