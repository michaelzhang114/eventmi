//
//  GroupMemberView.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/6/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupMemberDefault: View {
    @Binding var groupName: String
    
    var body: some View {
        VStack {
           Image("users-icon")
               .resizable()
               .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
               .shadow(radius: 10)
               .frame(width: 50.0, height:50.0)
            Text(groupName)
            .font(.footnote)
       }
    }
}


struct GroupMemberDefaultView_Previews:
PreviewProvider {
    @State static var tmp = "Hot Pot Squad"
    static var previews: some View {
        GroupMemberDefault(groupName: $tmp)
    }
}
