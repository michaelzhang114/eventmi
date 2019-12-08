//
//  GroupInviteView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct FriendInviteView: View {
    @State var name1 = "Alethea"
    @State var name2 = "Nathan"
    @State var name3 = "Nnamdi"
    
    @Binding var membersList: [String]
    
    var body: some View {
        VStack {
            Text("Quick Add")
            HStack {
                MemberCardView(memberName: $name1, membersList: $membersList)
                MemberCardView(memberName: $name2, membersList: $membersList)
                MemberCardView(memberName: $name3, membersList: $membersList)
            }
        }
    }
}

struct FriendInviteView_Previews: PreviewProvider {
    @State static var membersList: [String] = ["Alethea"]
    static var previews: some View {
        FriendInviteView(membersList: $membersList)
    }
}
