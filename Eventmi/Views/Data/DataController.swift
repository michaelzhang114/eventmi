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
    @Published var currentGroup: [String]
    
    init() {
        listOfFriendGroups = []
    }
    
    func addToCurrentFriendGroup(memberName: String){
        currentGroup.append(memberName);
    }
    
    func removeFromCurrentFriendGroup(memberName: String){
        if let idx = currentGroup.firstIndex(of: memberName) {
            currentGroup.remove(at: idx)
        }
    }
    
    func createNewFriendGroup(groupName : String) {
        let fg = FriendGroup(groupName: groupName)
        
        for member in currentGroup {
            fg.addMember(name: member)
        }
        currentGroup = []
    }
    
    
    
}
