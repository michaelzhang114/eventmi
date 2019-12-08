//
//  CreateEventForm.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct CreateFriendGroupForm: View {
    @Binding var data: DataController
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

    @State var groupName : String = ""
    @State var members : [String] = []
    
    var body: some View {
        VStack {
            Text("Create Group")
            TextField("Group name", text: $groupName)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding()
            FriendInviteView(membersList: $members)
            Text("Contacts List")
            TextField("Search for friends", text: $groupName)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding()
            
            ContactCardViewHorizontal(membersList: $members)
            ContactCardViewHorizontal(membersList: $members)
            ContactCardViewHorizontal(membersList: $members)
            
            Button(action: {
                self.data.addNewFriendGroup(groupName: self.groupName, members: self.members)}) {
            Text("Create Friend Group")
            }
        }
        
    }
}

struct CreateFriendGroupForm_Previews: PreviewProvider {
    @State static var data: DataController = DataController()
    static var previews: some View {
        CreateFriendGroupForm(data: $data)
    }
}
