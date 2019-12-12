//
//  GroupMemberView.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/6/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupMemberString: View {
    @EnvironmentObject var data: DataController
    @Binding var groupIndex: Int
    @Binding var memberIndex: Int
    
    var body: some View {
        VStack {
           Image("users-icon")
               .resizable()
               .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
               .shadow(radius: 10)
               .frame(width: 50.0, height:50.0)
            Text(self.data.listOfFriendGroups[groupIndex].members[memberIndex])
            .font(.footnote)
       }
    }
}


struct GroupMemberStringView_Previews:
PreviewProvider {
    @State static var tmp = 0
    @State static var tmp2 = 0
    static var previews: some View {
        GroupMemberString(groupIndex: $tmp, memberIndex: $tmp2)
    }
}
