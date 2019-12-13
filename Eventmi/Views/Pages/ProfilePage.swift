//
//  ProfilePage.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/6/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct ProfilePage: View {
    @EnvironmentObject var data: DataController
    
    @EnvironmentObject var data: DataController
    
    // pending invite #1
    @State var imgName = "icecream"
    @State var dateTime = "Fri, Nov 8th; 6pm"
    @State var eventName = "Ice Cream Night"
    @State var loc = "Parlour"
    
    // pending invite #2
    @State var imgName2 = "burger"
    @State var dateTime2 = "Fri, Nov 20th; 8pm"
    @State var eventName2 = "Dinner"
    @State var loc2 = "The Loop"
    
    @State var eventDateTime1 = "Sun, Oct 30 · 9:00pm"
    @State var eventName1 = "Boba"
    @State var eventLoc1 = "1100 Pace Street"
    
    @State var index1 = 0
    @State var index2 = 1
    @State var index3 = 2
    
    
    @State var index1 = 0
    
    var body: some View {
        ScrollView{
            VStack {
                Text("Profile")
                .font(.title)
                .padding(.top, -120)
                
                
                HStack {
                    VStack {
                        Text("2")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.purple)
                        Text("Events Hosted")
                            .font(.subheadline)
                    }
                    VStack {
                        Text("8")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.purple)
                        Text("Events Attendees")
                            .font(.subheadline)
                    }
                    VStack {
                        Text("1")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.purple)
                        Text("Friend Group")
                            .font(.subheadline)
                    }
                    
                }
                .frame(width: 350.0)
                .padding(.top, -60)
                
                Text("Pending Invitations")
                    .font(.title)
                    .padding(.top, 30)
                    
                InvitationView(imgName: $imgName, dateTime: $dateTime, eventName: $eventName, loc: $loc)
                
                InvitationView(imgName: $imgName2, dateTime: $dateTime2, eventName: $eventName2, loc: $loc2)
                
                Text("Upcoming Events")
                    .font(.title)
                    .padding(.top, -10)
                Text("Upcoming Events")
                    .fontWeight(.semibold)
                if(self.data.listOfEvents.isEmpty){
                    Text("You have no upcoming events yet!")
                } else {
                    UpcomingEventCard(index: $index1)
                    if(self.data.listOfEvents.count > 1){
                        UpcomingEventCard(index: $index2)
                    }
                    if(self.data.listOfEvents.count > 2){
                        UpcomingEventCard(index: $index3)
                    }
                }
            }.padding(.top, 140.0)
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
