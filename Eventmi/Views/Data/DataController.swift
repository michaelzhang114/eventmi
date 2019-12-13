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
    @Published var currentEventIndex: Int
    @Published var currentFriendGroupsInvited: [Int]
    
    @Published var listOfQuickEvents : [String]
    
    init() {
        listOfFriendGroups = []
        listOfEvents = []
        currentEventIndex = 0
        currentFriendGroupsInvited = []
        listOfQuickEvents = ["Chill?","Dinner?", "Boba?", "Lunch?", "Gym", "Ping Pong?", "Games", "Wine", "Coffee"]
//        listOfFriendGroups.append(FriendGroup(groupName: "group1", members: ["jack", "john"]))
//        listOfFriendGroups.append(FriendGroup(groupName: "group2", members: ["nathan", "alethea"]))
    }
    
    func createNewFriendGroup(gName : String, gMembers: [String]) {
        let fg = FriendGroup(groupName: gName, members: gMembers)
        listOfFriendGroups.append(fg)
    }
    
    func addNewEvent(e : String, dt : Date, loc : String, d : String) {
        var listOfGroupNames : [String] = []
        for ind in currentFriendGroupsInvited {
            listOfGroupNames.append(listOfFriendGroups[ind].groupName)
        }
        if (currentFriendGroupsInvited.count == 0) {
            listOfGroupNames = ["WingMan"]
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
    
    func getLatestEvent() -> String {
        if (listOfEvents.isEmpty) {
            return "Coffee"
        }
        else {
            return listOfEvents[listOfEvents.count - 1].eventName
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
