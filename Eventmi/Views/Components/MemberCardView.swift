//
//  MemberCardView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/7/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct MemberCardView: View {
    @Binding var memberName: String
    
    var body: some View {
        VStack {
            Image("user-icon")
                .resizable()
                .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
                .shadow(radius: 10)
                .frame(width: 50.0, height:50.0)
            Text(memberName)
                .font(.subheadline)
            InviteButtonView(memberName: $memberName)

        }
        .frame(width: 350.0)
    }
}

struct MemberCardView_Previews: PreviewProvider {
    @State static var memberName: String = "Alethea"
    static var previews: some View {
        MemberCardView(memberName: $memberName)
    }
}
