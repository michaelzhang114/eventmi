//
//  FriendGroup.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/7/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import Foundation

class FriendGroup {
    var groupName = "wingMAN"
    var members = ["john", "nathan", "alethea"]
    
    init(groupName : String) {
        self.groupName = groupName
    }
    
    func addMember(name : String) {
        members.append(name)
    }
    
    func getMembers() -> [String] {
        return members
    }
    
}
