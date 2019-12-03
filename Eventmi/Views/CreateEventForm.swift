//
//  CreateEventForm.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct CreateEventForm: View {
    var body: some View {
        
        HStack {
            TextField("Group name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            
        }
    }
}

struct CreateEventForm_Previews: PreviewProvider {
    static var previews: some View {
        CreateEventForm()
    }
}
