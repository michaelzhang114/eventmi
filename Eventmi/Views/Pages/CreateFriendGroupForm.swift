//
//  CreateEventForm.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct CreateFriendGroupForm: View {
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    @State private var btn = "Create Friend Group"

    var body: some View {
        VStack {
            
            Text("Create Group")
                .frame(width: 350.0)
            TextField("Group name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
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
            
            ContactCardViewHorizontal()
            ContactCardViewHorizontal()
            ContactCardViewHorizontal()
            
            BigLongButtonView(name: $btn)

        }
        
    }
}

struct CreateFriendGroupForm_Previews: PreviewProvider {
    static var previews: some View {
        CreateFriendGroupForm()
    }
}
