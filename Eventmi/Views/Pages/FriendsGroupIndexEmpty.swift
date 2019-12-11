//
//  FriendsGroupList.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct FriendsGroupIndexEmpty: View {
    @State var buttonName = "Create Friend Group"
    @EnvironmentObject var data : DataController
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Friend Groups")
                    .font(.title)
                VStack {
                    SortFilterBarView()
                    Spacer()
                    Text("Oops, you have no friend groups yet!")  
                    Spacer()
                    NavigationLink(destination: CreateFriendGroupForm()) {
                        Button(action: {
                        }){
                            Text(buttonName)
                                .font(.title)
                                .padding(10)
                                .foregroundColor(Color.white)
                        }
                        .frame(width: 350.0, height: 60)
                        .background(Color.purple)
                    }
                }
            }.padding(.top, 50.0)
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
