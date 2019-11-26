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
 
    var body: some View {
        TabView(selection: $selection){
            Text("discover")
                .font(.largeTitle)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("Discover")
                    }
                }
                .tag(0)
            Text("groups View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Groups")
                    }
                }
                .tag(1)
            Text("create event View")
            .font(.title)
            .tabItem {
                VStack {
                    Image("second")
                    Text("Create Event")
                }
            }
            .tag(2)
            Text("Memories View")
            .font(.title)
            .tabItem {
                VStack {
                    Image("second")
                    Text("Memories")
                }
            }
            .tag(3)
            Text("Profile View")
            .font(.title)
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
