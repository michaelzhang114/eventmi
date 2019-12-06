//
//  UpcomingEventCard.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/6/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct UpcomingEventCard: View {
    
    @State var member2 = "Nnamdi"
    @State var member3 = "Fatima"
    
    @Binding var upcomingEventDateTime: String
    @Binding var upcomingEventName: String
    @Binding var upcomingEventLocation: String
    
    var body: some View {
        HStack {
            // event picture
            Image("users-icon")
            .resizable()
            .aspectRatio(CGSize(width:1.0, height:1.0), contentMode: .fit)
            .shadow(radius: 10)
            .frame(width: 50.0, height:50.0)
            
            VStack {
                // date and time
                Text(upcomingEventDateTime)
                // event name
                Text(upcomingEventName)
                // location
                Text(upcomingEventLocation)
            }
            
            VStack {
                HStack {
                    GroupMember(groupMemberName: $member2)
                    GroupMember(groupMemberName: $member3)
                }
                Text(member2 + " and " + member3 + " are going")
            }
        }
    }
}

struct UpcomingEventCard_Previews: PreviewProvider {
    @State static var tmp1 = "xx"
    @State static var tmp2 = "xx"
    @State static var tmp3 = "xx"
    
    static var previews: some View {
        UpcomingEventCard(upcomingEventDateTime: $tmp1, upcomingEventName: $tmp2, upcomingEventLocation: $tmp3)
    }
}
