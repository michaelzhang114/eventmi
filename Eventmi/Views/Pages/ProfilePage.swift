//
//  ProfilePage.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/6/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct ProfilePage: View {
    
    // pending invite #1
    @State var imgName = "icecream"
    @State var dateTime = "Fri, Nov 8th; 6pm"
    @State var eventName = "Ice Cream Night"
    @State var loc = "Parlour"
    
    // pending invite #2
    @State var imgName2 = "burger"
    @State var dateTime2 = "7pm tomorrow"
    @State var eventName2 = "Dinner"
    @State var loc2 = "The Loop"
    
    @State var eventDateTime1 = "Sun, Oct 30 · 9:00pm"
    @State var eventName1 = "Boba"
    @State var eventLoc1 = "1100 Pace Street"
    
    
    var body: some View {
        VStack (alignment: .leading){
            Text("Profile")
            .font(.title)
            
            HStack {
                VStack {
                    Text("2")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                    Text("Events Hosted")
                        .font(.subheadline)
                }
                VStack {
                    Text("8")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                    Text("Events Attendees")
                        .font(.subheadline)
                }
                VStack {
                    Text("1")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                    Text("Friend Group")
                        .font(.subheadline)
                }
                
            }
            
            Text("Pending Invitations")
                .font(.title)
                
            InvitationView(imgName: $imgName, dateTime: $dateTime, eventName: $eventName, loc: $loc)
            
            InvitationView(imgName: $imgName2, dateTime: $dateTime2, eventName: $eventName2, loc: $loc2)
            
            Text("Upcoming Events")
                .font(.title)
            UpcomingEventCard(upcomingEventDateTime: $eventDateTime1, upcomingEventName: $eventName1, upcomingEventLocation: $eventLoc1)
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
