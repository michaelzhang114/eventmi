//
//  InviteButtonView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct InviteButtonView: View {
    @State private var hasClicked = false
    var body: some View {
        
        HStack {
            Button(action: {
                self.hasClicked.toggle()
            }) {
                Text("Invite")
                    .font(.title)
                    .padding()
                    .border(Color.green, width:5)
            }
            
//            TODO: Make this button say "SENT"
            if hasClicked {
                Text("Sent")
                    .font(.largeTitle)
            }

        }
        
    }
}

struct InviteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        InviteButtonView()
    }
}
