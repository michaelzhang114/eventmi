//
//  LoginPage.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct LoginPage: View {
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    @State var btn = "Log in"
    var body: some View {
        VStack {
            Image("eventmi-logo")
            .resizable()
            .shadow(radius: 10)
            .frame(width: 310.0, height:240)
            
            VStack(spacing: -28.0) {
                TextField("Phone Number", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(lightGreyColor)
                    .frame(width: 350.0)
                    .cornerRadius(5.0)
                .padding()
                TextField("Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(lightGreyColor)
                    .frame(width: 350.0)
                    .cornerRadius(5.0)
                .padding()
                
            }
            
            VStack {
                BigLongButtonView(name: $btn)
            }
        }
        
        
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
