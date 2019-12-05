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
            }){
                ZStack {
                    Text("Invite")
                        .fontWeight(.semibold)
                        .font(.title)
                        .padding()
                        .foregroundColor(hasClicked ? Color.clear : Color.black)
                        .cornerRadius(40)
                        .onTapGesture { self.hasClicked.toggle() }
                        .background(hasClicked ? Color.green : Color.clear)
                    
                    Text("Sent")
                        .fontWeight(.semibold)
                        .font(.title)
                        .padding()
                        .cornerRadius(40)
                        .background(hasClicked ? Color.green : Color.clear)
                        .foregroundColor(hasClicked ? Color.black : Color.clear)
                }
            }
        }
    }
}

struct InviteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        InviteButtonView()
    }
}
