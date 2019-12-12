//
//  UpcomingEventCard.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/6/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct UpcomingEventCardDefault: View {
    
    @State var member2 = "Nnamdi"
    @State var member3 = "Fatima"
    
    @Binding var upcomingEventDateTime: String
    @Binding var upcomingEventName: String
    @Binding var upcomingEventLocation: String
    
    var body: some View {
        HStack {
            // event picture
            Image("icecream")
            .resizable()
            .aspectRatio(CGSize(width:1.5, height:1.0), contentMode: .fit)
            .shadow(radius: 10)
            .frame(width: 80)
            
            VStack (alignment: .leading) {
                Text(upcomingEventDateTime)
                    .foregroundColor(Color.purple)
                Text(upcomingEventName)
                    .fontWeight(.semibold)
                Text(upcomingEventLocation)
                    .font(.footnote)
            }
            
            VStack (alignment: .center){
                HStack {
                    GroupMember(groupMemberName: $member2)
                        
                    GroupMember(groupMemberName: $member3)
                        //.padding(.leading, 20)
                }
                //Text(member2 + " and " + member3 + " are going")
                Text("are going")
                .font(.footnote)
            }
        }
        .frame(width: 350.0)
    }
}

struct UpcomingEventCardDefault_Previews: PreviewProvider {
    @State static var tmp1 = "xx"
    @State static var tmp2 = "xx"
    @State static var tmp3 = "xx"
    
    static var previews: some View {
        UpcomingEventCardDefault(upcomingEventDateTime: $tmp1, upcomingEventName: $tmp2, upcomingEventLocation: $tmp3)
    }
}
