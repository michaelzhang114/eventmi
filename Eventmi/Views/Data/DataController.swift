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
    
    var listOfEvents : [Event]
    
    init() {
        listOfFriendGroups = []
        listOfEvents = []
    }
    
    func addNewFriendGroup(groupName : String, members : [String]) {
        let fg = FriendGroup(groupName: groupName)
        
        for s in members {
            fg.addMember(name: s)
        }
    }
    
    func addNewEvent(e : String, dt : Date, loc : String, gr : [String], d : String) {
        let ev = Event(e: e, dt: dt, loc: loc, gr: gr, d: d)
        listOfEvents.append(ev)
    }
    
    
    
}
