//
//  GroupMemberView.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/6/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupMember: View {
    @Binding var groupMemberName: String
    
    var body: some View {
        VStack {
           Image("users-icon")
               .resizable()
               .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
               .shadow(radius: 10)
               .frame(width: 50.0, height:50.0)
           Text(groupMemberName)
               .font(.subheadline)
       }
    }
}


struct GroupMemberView_Previews:
PreviewProvider {
    @State static var tmp = "some member name"
    static var previews: some View {
        GroupMember(groupMemberName: $tmp)
    }
}
