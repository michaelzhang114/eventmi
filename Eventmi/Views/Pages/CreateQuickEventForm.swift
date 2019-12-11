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
        VStack (alignment: .leading){
            HStack {
                Text(eventName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(day)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
            }
            
            HStack {
                Text("at")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(time)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
            }
            
            Text("with")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(groupName)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            Text("@" + location)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            //BigLongButtonView(name: $buttonName)
            Button(action: {
            }){
                Text(buttonName)
                    .font(.title)
                    .padding(10)
                    .foregroundColor(Color.white)
                    
            }
            .frame(width: 300.0, height: 60)
            .background(Color.purple)
            .padding(.top, 20.0)
        }
        .padding(30)
        .border(Color.black, width: 2)
        
        
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
