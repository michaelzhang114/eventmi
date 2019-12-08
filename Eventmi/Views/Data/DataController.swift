//
//  DataController.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/7/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import Foundation

class DataController {
    var listOfFriendGroups: [FriendGroup]
    
    init() {
        listOfFriendGroups = []
    }
    
    func addNewFriendGroup(groupName : String, members : [String]) {
        let fg = FriendGroup(groupName: groupName)
        
        for s in members {
            fg.addMember(name: s)
        }
    }
    
    
    
}
