//
//  FriendGroup.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/7/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import Foundation

class FriendGroup2 {
    var groupName : String
    var members : [String]
    
    init(groupName : String) {
        self.groupName = ""
        self.members = []
    }
    
    func addMember(name : String) {
        members.append(name)
    }
    
    func getMembers() -> [String] {
        return members
    }
    
}
