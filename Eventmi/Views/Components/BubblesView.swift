//
//  BubblesView.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/7/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct BubblesView: View {
    @EnvironmentObject var data : DataController
    
    @State private var qeName1 = "Chill"
    @State private var qeName2 = "Dinner"
    @State private var qeName3 = "Boba"
    @State private var qeName4 = "Lunch"
    @State private var qeName5 = "Gym"
    @State private var qeName6 = "Ping Pong"
    @State private var qeName7 = "Games"
    @State private var qeName8 = "Wine"
    
    @State private var biggestQE = "blah"
    
    //@State private var quickEvents = ["Chill?","Dinner?", "Boba?", "Lunch?", "Gym", "Ping Pong?"]
    
    @State private var size1 = CGFloat(90)
    @State private var size2 = CGFloat(55)
    @State private var size3 = CGFloat(75)
    @State private var size4 = CGFloat(140)
    
//    @State private var latesttEvent = self.data.getLatestEvent()
    
    var body: some View {
        VStack {
            HStack {
                VStack {  QuickEventBubble(quickEventName: $qeName1, size: $size2)
                }
                VStack { QuickEventBubble(quickEventName: $qeName2, size: $size1)
                }
                VStack { QuickEventBubble(quickEventName: $qeName3, size: $size3)
                }
            }
            HStack {
                VStack { QuickEventBubble(quickEventName: $qeName4, size: $size3)
                }
                VStack { QuickEventBubble(quickEventName: .constant(data.getLatestEvent()), size: $size4)
                }
                VStack { QuickEventBubble(quickEventName: $qeName5, size: $size1)
                }
            }
            HStack {
                VStack { QuickEventBubble(quickEventName: $qeName6, size: $size1)
                }
                VStack { QuickEventBubble(quickEventName: $qeName7, size: $size3)
                }
                VStack { QuickEventBubble(quickEventName: $qeName8, size: $size1)
                }
            }
        }
    }
}

//struct Row: View {
//    var body: some View {
//        Text("Hello")
//    }
//}


struct BubblesView_Previews: PreviewProvider {
    static var previews: some View {
        BubblesView()
    }
}
