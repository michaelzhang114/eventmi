//
//  CreateQuickEventForm.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct CreateQuickEventForm: View {
    
    @Binding var eventName: String
    @Binding var day: String
    @Binding var time: String
    @Binding var groupName: String
    @Binding var location: String
    
    @State var buttonName = "Create"
    
    var body: some View {
        VStack {
            HStack {
                Text(eventName)
                    .font(.largeTitle)
                Text(day)
                    .font(.largeTitle)
                    .foregroundColor(Color.purple)
            }
            
            HStack {
                Text("at")
                    .font(.largeTitle)
                Text(time)
                    .font(.largeTitle)
                    .foregroundColor(Color.purple)
            }
            
            Text("with")
                .font(.largeTitle)
            Text(groupName)
                .font(.largeTitle)
                .foregroundColor(Color.purple)
            Text(location)
                .font(.largeTitle)
                .foregroundColor(Color.purple)
            BigLongButtonView(name: $buttonName)
        }
        
    }
}

struct CreateQuickEventForm_Previews: PreviewProvider {
    @State static var eventName = "Boba"
    @State static var day = "Today"
    @State static var time = "7pm"
    @State static var groupName = "Hot pot squad"
    @State static var location = "Quickly"
    
    static var previews: some View {
        CreateQuickEventForm(eventName: $eventName, day: $day, time: $time, groupName: $groupName, location: $location)
    }
}
