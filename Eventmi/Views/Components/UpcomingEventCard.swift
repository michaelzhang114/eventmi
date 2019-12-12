//
//  UpcomingEventCard.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/6/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct UpcomingEventCard: View {
    
    @EnvironmentObject var data: DataController
    
    @State var member2 = "Nnamdi"
    @State var member3 = "Fatima"
    
    @Binding var index: Int
    
    @State var index0 = 0
    @State var index1 = 1
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH E, d MMM"
        return formatter
    }
    
    var body: some View {
        HStack {
            // event picture
            Image("icecream")
            .resizable()
            .aspectRatio(CGSize(width:1.5, height:1.0), contentMode: .fit)
            .shadow(radius: 10)
            .frame(width: 80)
            
            VStack (alignment: .leading) {
                Text(dateFormatter.string(from: self.data.listOfEvents[index].dateTime))
                    .foregroundColor(Color.purple)
                Text(self.data.listOfEvents[index].eventName)
                    .fontWeight(.semibold)
                Text(self.data.listOfEvents[index].location)
                    .font(.footnote)
            }
            
            VStack (alignment: .center){
                HStack {
                    GroupMember(indexEvent: $index, index: $index0)
                    if(self.data.listOfEvents[index].groupsInvited.count > 1){
                        GroupMember(indexEvent: $index, index: $index1)
                    }
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

struct UpcomingEventCard_Previews: PreviewProvider {
    @State static var tmp1 = 0
    
    static var previews: some View {
        UpcomingEventCard(index: $tmp1)
    }
}
