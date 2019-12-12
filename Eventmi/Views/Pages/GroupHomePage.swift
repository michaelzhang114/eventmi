//
//  GroupHomePage.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupHomePage: View {
    @EnvironmentObject var data: DataController
    
    @Binding var groupIndex: Int
    
//    @State private var quickEvents = ["Chill?","Dinner?", "Boba?", "Lunch?", "Gym", "Ping Pong?"]
//
//    @State var qeName1 = "Chill?"
//    @State var qeName2 = "Dinner?"
    
    @State var member1 = "Me"
    @State var member2 = "Nnamdi"
    @State var member3 = "Fatima"
    
    @State var index1 = 0
    @State var index2 = 1
    @State var index3 = 2
    
    @State var eventDateTime1 = "Sun, Oct 30 · 9:00pm"
    @State var eventName1 = "Boba"
    @State var eventLoc1 = "1100 Pace Street"
    
    @State var size1 = CGFloat(100)
    @State var size2 = CGFloat(50)
    
    var body: some View {
        NavigationView {
            ScrollView {
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
                        GroupMemberString(groupIndex: $groupIndex, memberIndex: $index1)
                        GroupMemberString(groupIndex: $groupIndex, memberIndex: $index2)
                        if(self.data.listOfFriendGroups[groupIndex].members.count > 2){
                            GroupMemberString(groupIndex: $groupIndex, memberIndex: $index3)
                        }
                    }.padding(.bottom, 30)
                    
                    // label for upcoming events
                    Text("Upcoming Events")
                        .fontWeight(.semibold)
                    UpcomingEventCardDefault(upcomingEventDateTime: $eventDateTime1, upcomingEventName: $eventName1, upcomingEventLocation: $eventLoc1)
                    if(self.data.listOfEvents.count > 0){
                        UpcomingEventCard(index: $index1)
                    }
                    
                }.frame(width: 350.0)
            }
        }.padding(.top, -20.0)
        
    }
}


struct GroupHomePage_Previews: PreviewProvider {
    @State static var tmp1 = 0
    static var previews: some View {
        GroupHomePage(groupIndex: $tmp1)
    }
}
