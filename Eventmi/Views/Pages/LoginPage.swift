//
//  LoginPage.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct LoginPage: View {
    @EnvironmentObject var data : DataController
    
    @State private var phoneNumber : String = ""
    @State private var password : String = ""
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    @State var btn = "Log in"
    
    @State private var showContent = false
    
    var body: some View {
        //NavigationView {
            
        
        VStack {
            
            if (showContent) {
                ContentView()
            }
            else {
                VStack {
                    Image("eventmi-logo")
                    .resizable()
                    .shadow(radius: 10)
                    .frame(width: 310.0, height:240)
                    
                    VStack(spacing: -28.0) {
                        TextField("Phone Number", text: $phoneNumber)
                        .padding()
                        .background(lightGreyColor)
                            .frame(width: 350.0)
                            .cornerRadius(5.0)
                            .padding()
                        SecureField("Password", text: $password)
                        .padding()
                        .background(lightGreyColor)
                            .frame(width: 350.0)
                            .cornerRadius(5.0)
                        .padding()
                }
                    
                
                    
                        Button(action: {
                            self.showContent.toggle()
                        }){
                            //NavigationLink (destination: ContentView()){
                                Text(btn)
                                .font(.title)
                                .padding(10)
                                .foregroundColor(Color.white)
                            //}
                        }
                        .frame(width: 350.0, height: 60)
                        .background(Color.purple)
                }
                }//.navigationBarTitle("")
            }
            
            
        
        
        }
    //}
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
