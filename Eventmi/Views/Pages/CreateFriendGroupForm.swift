//
//  CreateEventForm.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct CreateFriendGroupForm: View {
    @EnvironmentObject var data: DataController
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    @State private var btn = "Create Friend Group"
    @State private var name1 = "John"
    @State private var name2 = "Fatima"
    @State private var name3 = "Esther"

    @State var groupName : String = ""
    
    var body: some View {
        VStack {
            Text("Create Group")
            TextField("Group name", text: $groupName)
                .padding()
                .background(lightGreyColor)
                .frame(width: 350.0)
                .cornerRadius(5.0)
                .padding()
            FriendInviteView()
            Text("Contacts List")
            TextField("Search for friends", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .padding()
            .background(lightGreyColor)
            .frame(width: 350.0)
            .cornerRadius(5.0)
            .padding()
            
            ContactCardViewHorizontal(name: $name1)
            ContactCardViewHorizontal(name: $name2)
            ContactCardViewHorizontal(name: $name3)

            Button(action: {
                self.data.createNewFriendGroup(groupName: self.groupName)
            }){
                Text(btn)
                    .font(.title)
                    .padding(10)
                    .foregroundColor(Color.white)
                    
            }
            .frame(width: 350.0, height: 60)
            .background(Color.purple)
        }
        
    }
}

struct CreateFriendGroupForm_Previews: PreviewProvider {
    static var previews: some View {
        CreateFriendGroupForm()
    }
}
