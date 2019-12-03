//
//  GroupCardView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupCardView: View {
    var body: some View {
        VStack {
            Image("users-icon")
                .resizable()
                .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
                .shadow(radius: 10)
                .frame(width: 50.0, height:50.0)
            Text("Some group name")
                .font(.subheadline)
            
            // TODO: create the click action
            
            InviteButtonView()
        }
    }
}

struct GroupCardView_Previews: PreviewProvider {
    static var previews: some View {
        GroupCardView()
    }
}
