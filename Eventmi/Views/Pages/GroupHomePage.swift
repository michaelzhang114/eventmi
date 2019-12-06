//
//  GroupHomePage.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupHomePage: View {
    
    @State private var quickEvents = ["Chill?","Dinner?", "Boba?", "Lunch?", "Gym", "Ping Pong?"]
    
    @State var qeName1 = "Chill?"
    @State var qeName2 = "Dinner?"
    
    @State var member1 = "Me"
    @State var member2 = "Nnamdi"
    @State var member3 = "Fatima"
    
    @State var eventDateTime1 = "Sun, Oct 30 · 9:00pm"
    @State var eventName1 = "Boba"
    @State var eventLoc1 = "1100 Pace Street"
    
    
    var body: some View {
        
        VStack {
            // label
            Text("Groups")
            
            // bubbles
            QuickEvent(quickEventName: $qeName1)
            QuickEvent(quickEventName: $qeName2)
            
            // label for group members
            Text("Members")
            
            // group members
            HStack {
                GroupMember(groupMemberName: $member1)
                GroupMember(groupMemberName: $member2)
                GroupMember(groupMemberName: $member3)
            }
            
            // label for upcoming events
            Text("Upcoming Events")
            
            UpcomingEventCard(upcomingEventDateTime: $eventDateTime1, upcomingEventName: $eventName1, upcomingEventLocation: $eventLoc1)
            
        }
    }
}

struct QuickEvent: View {
    @Binding var quickEventName: String
    
    var body: some View {
        Arc(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: true)
        .fill(Color.purple)
        .frame(width: 100, height: 100)
        .overlay(
        Text(quickEventName))
    }
}

struct Arc: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
        return path
    }
}




struct GroupHomePage_Previews: PreviewProvider {
    static var previews: some View {
        GroupHomePage()
    }
}
