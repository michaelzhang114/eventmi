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
    
    var body: some View {
        VStack {
            Text("Quick Add")
            .fontWeight(.semibold)
            HStack {
                MemberCardView(memberName: $name1)
                MemberCardView(memberName: $name2)
                MemberCardView(memberName: $name3)
            }
        }
    }
}

struct FriendInviteView_Previews: PreviewProvider {
    static var previews: some View {
        FriendInviteView()
    }
}
