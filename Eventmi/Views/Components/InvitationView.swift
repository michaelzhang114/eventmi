//
//  InvitationView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/6/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct InvitationView: View {
    
    @Binding var imgName: String
    @Binding var dateTime: String
    @Binding var eventName: String
    @Binding var loc: String
    @State var btnName = "Respond"
    
    var body: some View {
        
        HStack {
            Image(imgName)
                .resizable()
                .aspectRatio(CGSize(width:1.5, height:1.0), contentMode: .fit)
                .shadow(radius: 10)
                .frame(width: 110)
            VStack (alignment: .leading) {
                Text(dateTime)
                    .foregroundColor(Color.purple)
                Text(eventName)
                    .fontWeight(.semibold)
                Text(loc)
                    .font(.footnote)    
            }
            LittleButton(name: $btnName)
        }
        
        
    }
}

struct InvitationView_Previews: PreviewProvider {
    
    @State static var imgName = "icecream"
    @State static var dateTime = "6pm Fri, Nov 8th"
    @State static var eventName = "Ice Cream Night"
    @State static var loc = "Parlour"
    
    static var previews: some View {
        InvitationView(imgName: $imgName, dateTime: $dateTime, eventName: $eventName, loc: $loc)
    }
}
