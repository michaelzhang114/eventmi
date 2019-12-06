//
//  InvitationView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/6/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct InvitationView: View {
    
    @State var imgName = "icecream"
    @State var dateTime = "Fri, Nov 8th; 6pm"
    @State var eventName = "Ice Cream Night"
    @State var loc = "Parlour"
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
    static var previews: some View {
        InvitationView()
    }
}
