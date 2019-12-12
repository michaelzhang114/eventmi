//
//  GroupHomePage.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupHomePage: View {
    
    
    
//    @State private var quickEvents = ["Chill?","Dinner?", "Boba?", "Lunch?", "Gym", "Ping Pong?"]
//
//    @State var qeName1 = "Chill?"
//    @State var qeName2 = "Dinner?"
    
    @State var member1 = "Me"
    @State var member2 = "Nnamdi"
    @State var member3 = "Fatima"
    
    @State var eventDateTime1 = "Sun, Oct 30 · 9:00pm"
    @State var eventName1 = "Boba"
    @State var eventLoc1 = "1100 Pace Street"
    
    @State var size1 = CGFloat(100)
    @State var size2 = CGFloat(50)
    
    var body: some View {
        NavigationView {
            VStack {
                // label
                Text("Groups")
                .font(.title)
                // bubbles
                BubblesView().padding(.bottom, 30)
                
                // label for group members
                Text("Members")
                    .fontWeight(.semibold)
                // group members
                HStack {
                    GroupMember(groupMemberName: $member1)
                    GroupMember(groupMemberName: $member2)
                    GroupMember(groupMemberName: $member3)
                }.padding(.bottom, 30)
                
                // label for upcoming events
                Text("Upcoming Events")
                    .fontWeight(.semibold)
                UpcomingEventCard(upcomingEventDateTime: $eventDateTime1, upcomingEventName: $eventName1, upcomingEventLocation: $eventLoc1)
                
            }.frame(width: 350.0)
        }
        
    }
}


struct GroupHomePage_Previews: PreviewProvider {
    static var previews: some View {
        GroupHomePage()
    }
}
