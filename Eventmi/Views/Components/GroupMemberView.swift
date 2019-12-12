//
//  GroupMemberView.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/6/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupMember: View {
    @EnvironmentObject var data: DataController
    @Binding var indexEvent: Int
    @Binding var index: Int
    
    var body: some View {
        VStack {
           Image("users-icon")
               .resizable()
               .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
               .shadow(radius: 10)
               .frame(width: 50.0, height:50.0)
            Text(self.data.listOfEvents[indexEvent].groupsInvited[index])
            .font(.footnote)
       }
    }
}


struct GroupMemberView_Previews:
PreviewProvider {
    @State static var tmp = 0
    @State static var tmp2 = 0
    static var previews: some View {
        GroupMember(indexEvent: $tmp, index: $tmp2)
    }
}
