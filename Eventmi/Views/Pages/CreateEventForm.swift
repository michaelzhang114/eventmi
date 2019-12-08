//
//  CreateEventForm.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct CreateEventForm: View {
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

    var body: some View {
        VStack {
            Text("Create Event")
                .font(.title)
            TextField("Event name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(lightGreyColor)
                .frame(width: 350.0)
                .cornerRadius(5.0)
                .padding()
            Text("Date")
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("") })
                .frame(width: 350.0)
            TextField("Location", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(lightGreyColor)
                .frame(width: 350.0)
                .cornerRadius(5.0)
                .padding()
            GroupInviteView()
            TextField("Add a description for your event?", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .frame(width: 350, height: 100)
                .padding()
                .background(lightGreyColor)
                .frame(width: 350.0)
                .cornerRadius(5.0)
                .padding()
        }
        .padding(.top, 50.0)

    }
}

struct CreateEventForm_Previews: PreviewProvider {
    static var previews: some View {
        CreateEventForm()
    }
}
