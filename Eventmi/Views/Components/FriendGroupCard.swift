//
//  SortFilterBar.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct FriendGroupCard: View {
    
    @EnvironmentObject var data: DataController
    @Binding var index: Int
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    var body: some View {
        HStack {
            
            Image("users-icon")
            .resizable()
            .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
            .shadow(radius: 10)
            
            .frame(width: 50.0, height:50.0)
            
            
            VStack {
                Text(self.data.listOfFriendGroups[index].groupName)
                Text(self.data.listOfFriendGroups[index].members.prefix(3).joined(separator: ", "))
                Text(String(self.data.listOfFriendGroups[index].members.count) + " People")
            }
        }
        .frame(width: 340.0)
        .padding(15)
        .background(lightGreyColor)
        
    }
}

struct FriendGroupCard_Previews: PreviewProvider {
    @State static var index: Int = 0
    static var previews: some View {
        FriendGroupCard(index: $index)
    }
}
