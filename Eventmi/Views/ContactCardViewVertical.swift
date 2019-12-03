//
//  ContactCardViewVertical.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct ContactCardViewVertical: View {
    var body: some View {
        VStack {
            Image("user-icon")
                .resizable()
                .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
                .shadow(radius: 10)
                .frame(width: 50.0, height:50.0)
            Text("John")
                .font(.subheadline)
            InviteButtonView()
        }
    }
}

struct ContactCardViewVertical_Previews: PreviewProvider {
    static var previews: some View {
        ContactCardViewVertical()
    }
}