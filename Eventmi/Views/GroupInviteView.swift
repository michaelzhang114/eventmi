//
//  GroupInviteView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupInviteView: View {
    var body: some View {
        VStack {
            Text("Who to invite?")
            HStack {
                GroupCardView()
                GroupCardView()
                GroupCardView()
            }
        }
    }
}

struct GroupInviteView_Previews: PreviewProvider {
    static var previews: some View {
        GroupInviteView()
    }
}
