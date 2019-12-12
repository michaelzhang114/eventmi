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
    
    @State var buttonName = "Create Friend Group"
    
    var body: some View {
        
        VStack {

            SortFilterBarView()
          
            //FriendGroupCard()
                .frame(width: 340.0)
            Spacer()
     
        }
        .padding(.top, 50.0)
        .frame(width: 350.0)
        
    }
}


struct FriendsGroupIndexOneGroup_Previews: PreviewProvider {
    static var previews: some View {
        FriendsGroupIndexOneGroup()
    }
}
