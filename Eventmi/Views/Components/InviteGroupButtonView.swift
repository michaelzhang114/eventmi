//
//  InviteButtonView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct InviteGroupButtonView: View {
    @EnvironmentObject var data : DataController
    
    @State private var hasClicked = false
    @Binding var index: Int
    

    var body: some View {
        HStack {
            Button(action: {
                self.hasClicked.toggle()
            }){
                ZStack {
                    Text("Invite")
                        .fontWeight(.semibold)
                        .font(.subheadline)
                        .padding()
                        .foregroundColor(hasClicked ? Color.clear : Color.black)
                        .cornerRadius(40)
                        .onTapGesture {
                            self.hasClicked.toggle()
                            if self.hasClicked {
                                self.data.addFriendGroupToCurrentEvent(groupIndex: self.index)
                            }
                            else {
                                self.data.removeFriendGroupToCurrentEvent(groupIndex: self.index)
                            }
                            
                        }
                        .background(hasClicked ? Color.green : Color.clear)
                    
                    Text("Sent")
                        .fontWeight(.semibold)
                        .font(.subheadline)
                        .padding()
                        .cornerRadius(40)
                        .background(hasClicked ? Color.green : Color.clear)
                        .foregroundColor(hasClicked ? Color.black : Color.clear)
                }
            }
        }
    }
}

struct InviteGroupButtonView_Previews: PreviewProvider {
    @State static var tmp: Int = 0
    
    static var previews: some View {
        InviteGroupButtonView(index: $tmp)
    }
}
