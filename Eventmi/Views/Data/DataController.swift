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
    @Published var currentEventIndex: Int
    @Published var currentFriendGroupsInvited: [Int]
    
    init() {
        listOfFriendGroups = []
        listOfEvents = []
        currentGroup = []
        currentEventIndex = 0
        currentFriendGroupsInvited = []
//        listOfFriendGroups.append(FriendGroup(groupName: "group1", members: ["jack", "john"]))
//        listOfFriendGroups.append(FriendGroup(groupName: "group2", members: ["nathan", "alethea"]))
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
    
    func addNewEvent(e : String, dt : Date, loc : String, d : String) {
        var listOfGroupNames : [String] = []
        for ind in currentFriendGroupsInvited {
            listOfGroupNames.append(listOfFriendGroups[ind].groupName)
        }
        let ev = Event(eventName: e, dateTime: dt, location: loc, groupsInvited: listOfGroupNames, description: d)
        listOfEvents.append(ev)
    }
    
    func addFriendGroupToCurrentEvent(groupIndex : Int) {
        currentFriendGroupsInvited.append(groupIndex)
    }
    
    func removeFriendGroupToCurrentEvent(groupIndex : Int) {
        if groupIndex < currentFriendGroupsInvited.count {
            currentFriendGroupsInvited.remove(at: groupIndex)
        }
    }
    
    struct FriendGroup {
        var groupName : String
        var members : [String]
    }
    
    struct Event {
        var eventName : String
        var dateTime : Date
        var location : String
        var groupsInvited : [String]
        var description : String
    }
    
}
