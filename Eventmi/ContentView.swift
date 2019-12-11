//
//  ContentView.swift
//  Eventmi
//
//  Created by Michael Zhang on 11/26/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    @EnvironmentObject var data : DataController
 
    var body: some View {
        TabView(selection: $selection){
            Text("Coming soon!")
                .font(.largeTitle)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("Discover")
                    }
                }
                .tag(0)
            FriendsGroupIndexEmpty()
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Groups")
                    }
                }
                .tag(1)
            CreateEventForm()
            .tabItem {
                VStack {
                    Image("second")
                    Text("Create Event")
                }
            }
            .tag(2)
            Text("Coming soon!")
            .font(.title)
            .tabItem {
                VStack {
                    Image("second")
                    Text("Memories")
                }
            }
            .tag(3)
            ProfilePage()
            .tabItem {
                VStack {
                    Image("second")
                    Text("Profile")
                }
            }
            .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
