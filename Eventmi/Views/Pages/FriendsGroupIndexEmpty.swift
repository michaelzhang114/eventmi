//
//  FriendsGroupList.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct FriendsGroupIndexEmpty: View {
    
    @State var showView = false
    
    @State var buttonName = "Create Friend Group"
    @State var index = 0
    @State var index1 = 1
    @State var index2 = 2
    @EnvironmentObject var data : DataController
    
    var body: some View {
        NavigationView{
        	VStack {
                Text("Friend Groups")
                    .font(.title)
	            VStack {
	                SortFilterBarView()
                    Spacer()
	                if(self.data.listOfFriendGroups.isEmpty) {
	                    Text("Oops, you have no friend groups yet!")
	                } else {
                        NavigationLink(destination: GroupHomePage(groupIndex: $index)){
                            FriendGroupCard(index: $index)
                            .frame(width: 340.0)
                        }
                        .foregroundColor(Color.purple)
	                    if(self.data.listOfFriendGroups.count > 1){
                            NavigationLink(destination: GroupHomePage(groupIndex: $index1)){
                                FriendGroupCard(index: $index1)
                                .frame(width: 340.0)
                            }
	                    }
	                }
                    Spacer()
                    
                    Button(action: {}){
                        NavigationLink(destination: CreateFriendGroupForm(showView: self.$showView), isActive: self.$showView) {
                        Text(buttonName)
                            .font(.title)
                            .padding(20)
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 350.0, height: 60)
                    .background(Color.purple)
                    .padding(.bottom, 20.0)
                    }
                }
            }.padding(.top, -75.0)
        }.frame(width: 350.0)
        
    }
}


struct SortFilterBar: View {
    
    var body: some View {
        HStack {
            Capsule()
            .fill(Color.green)
            .frame(width: 80, height: 40)
                .overlay(
                    Text("Sort By"))
            
            Capsule()
            .fill(Color.green)
            .frame(width: 80, height: 40)
                .overlay(
                    Text("Filters"))
        }
    }
}

struct FriendsGroupIndexEmpty_Previews: PreviewProvider {
    static var previews: some View {
        FriendsGroupIndexEmpty()
    }
}
