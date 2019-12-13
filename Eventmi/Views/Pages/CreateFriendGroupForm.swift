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
    @Binding var showView : Bool
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    @State private var btn = "Create Friend Group"
    @State private var name1 = "John"
    @State private var name2 = "Fatima"
    @State private var name3 = "Esther"
    
    @State var members : [String] = []
    @State var groupName : String = ""
    
    var body: some View {
        ScrollView{
            VStack (alignment: .center){
                Text("Create Group")
                    .font(.title)
                TextField("Group name", text: $groupName)
                    .padding()
                    .background(lightGreyColor)
                    .frame(width: 350.0)
                    .cornerRadius(5.0)
                    .padding()
                FriendInviteView(membersList: $members)
                Text("Contacts List")
                .fontWeight(.semibold)
                .padding(.bottom, -5.0)
                HStack {
                    Image(systemName: "magnifyingglass")
//                    .resizable()
//                    .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
//                    .shadow(radius: 10)
//                    .frame(width: 50.0, height:50.0)
                    TextField("Search for friends", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                }
                .padding()
                .background(lightGreyColor)
                .frame(width: 350.0)
                .cornerRadius(5.0)
                .padding()
                
                ContactCardViewHorizontal(name: $name1, membersList: $members)
                ContactCardViewHorizontal(name: $name2, membersList: $members)
                ContactCardViewHorizontal(name: $name3, membersList: $members)

                Button(action: {
                    self.showView = false
                    self.data.createNewFriendGroup(gName: self.groupName, gMembers: self.members)
                }){
                    Text(btn)
                        .font(.title)
                        .padding(20)
                        .foregroundColor(Color.white)
                        
                }
                .frame(width: 350.0, height: 60)
                .background(Color.purple)
                .padding(.top, 20)
            }.padding(.top, -75.0)
        }
    }
}

struct CreateFriendGroupForm_Previews: PreviewProvider {
    @State static var showView: Bool = true
    static var previews: some View {
        CreateFriendGroupForm(showView: $showView)
    }
}
