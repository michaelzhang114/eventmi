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
    @Binding var memberName: String
    @Binding var membersList: [String]
    @EnvironmentObject var data: DataController
    
    func removeMember(_groupMember: String){
        if let idx = self.membersList.firstIndex(of: self.memberName) {
            self.membersList.remove(at: idx)
        }
    }
    
    var body: some View {
        HStack {
            Button(action: {
                self.hasClicked.toggle()
                self.hasClicked ? self.membersList.append(self.memberName) :
                self.removeMember(_groupMember: self.memberName)
            }){
                ZStack {
                    Text("Invite")
                        .fontWeight(.semibold)
                        .font(.subheadline)
                        .padding()
                        .foregroundColor(hasClicked ? Color.clear : Color.black)
                        .cornerRadius(40)
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

struct InviteButtonView_Previews: PreviewProvider {
    @State static var memberName: String = "Alethea"
    @State static var membersList: [String] = []
    static var previews: some View {
        InviteButtonView(memberName: $memberName, membersList: $membersList)
    }
}

//self.hasClicked ? self.membersList.append(self.memberName) :
//   self.removeMember(_groupMember: self.memberName)
//self.hasClicked.toggle()
