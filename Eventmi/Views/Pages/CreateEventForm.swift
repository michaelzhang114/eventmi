//
//  CreateEventForm.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct CreateEventForm: View {
    @EnvironmentObject var data : DataController
    @Binding var selection: Int

    @State private var eventName : String = ""
    @State private var dateTime : Date = Date()
    @State private var location : String = ""
    @State private var description : String = ""
    
    @State var btn = "Create"
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

    var body: some View {
        ScrollView{
            VStack (alignment: .center){
                Text("Create Event")
                    .font(.title)
                TextField("Event name", text: $eventName)
                    .padding()
                    .background(lightGreyColor)
                    .frame(width: 350.0)
                    .cornerRadius(10.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.purple, lineWidth: 2)
                    )
                    .padding(.bottom, 5.0)
                Text("Date")
                    .fontWeight(.semibold)
                .padding(.bottom, 0.0)
                DatePicker(selection: $dateTime, label: { Text("") })
                    .frame(width: 350.0)
                TextField("Location", text: $location)
                    .padding()
                    .background(lightGreyColor)
                    .frame(width: 350.0)
                    .cornerRadius(5.0)
//                    .padding()
                GroupInviteView()
                TextField("Add a description for your event?", text: $description)
                    .padding()
                    .background(lightGreyColor)
                    .frame(width: 350.0)
                    .cornerRadius(5.0)
                    .padding()
                    
                Button(action: {
                    self.data.addNewEvent(e: self.eventName, dt: self.dateTime, loc: self.location, d: self.description)
                    self.selection = 1
                }){
                    Text(btn)
                        .font(.title)
                        .padding(10)
                        .foregroundColor(Color.white)
                        
                }
                .frame(width: 350.0, height: 60)
                .background(Color.purple)
            }.padding(.top, 20.0)
            
        }
    }
}

struct CreateEventForm_Previews: PreviewProvider {
    @State static var tmp = 2
    static var previews: some View {
        CreateEventForm(selection: $tmp)
    }
}
