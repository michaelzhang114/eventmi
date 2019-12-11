//
//  Event.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/11/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import Foundation

class Event {
    var eventName : String
    var dateTime : Date
    var location : String
    var groupsInvited : [String]
    var description : String
    
    init(e : String, dt : Date, loc : String, gr : [String], d : String) {
        self.eventName = e
        self.dateTime = dt
        self.location = loc
        self.groupsInvited = gr
        self.description = d
    }
    
}
