//
//  DataController.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/7/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import Foundation

class DataController: ObservableObject {
    @Published var listOfFriendGroups: [FriendGroup]
    @Published var listOfEvents: [Event]
    @Published var currentGroup: [String]
    
    init() {
        listOfFriendGroups = []
        listOfEvents = []
        currentGroup = []
    }
    
    func addToCurrentFriendGroup(memberName: String){
        currentGroup.append(memberName);
    }
    
    func removeFromCurrentFriendGroup(memberName: String){
        if let idx = currentGroup.firstIndex(of: memberName) {
            currentGroup.remove(at: idx)
        }
    }
    
    func createNewFriendGroup(gName : String) {
        let fg = FriendGroup(groupName: gName, members: currentGroup)
        listOfFriendGroups.append(fg)
        currentGroup = []
    }
    
    func addNewEvent(e : String, dt : Date, loc : String, gr : [String], d : String) {
        let ev = Event(e: e, dt: dt, loc: loc, gr: gr, d: d)
        listOfEvents.append(ev)
    }
    
    struct FriendGroup {
        var groupName : String
        var members : [String]
    }
    
}
