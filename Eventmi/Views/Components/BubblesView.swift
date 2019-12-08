//
//  BubblesView.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/7/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct BubblesView: View {
    @State private var qeName1 = "Chill?"
    @State private var size1 = CGFloat(90)
    @State private var size2 = CGFloat(55)
    @State private var size3 = CGFloat(75)
    @State private var size4 = CGFloat(140)
    
    var body: some View {
        VStack {
            HStack {
                VStack {  QuickEventBubble(quickEventName: $qeName1, size: $size2)
                }
                VStack { QuickEventBubble(quickEventName: $qeName1, size: $size1)
                }
                VStack { QuickEventBubble(quickEventName: $qeName1, size: $size3)
                }
            }
            HStack {
                VStack { QuickEventBubble(quickEventName: $qeName1, size: $size3)
                }
                VStack { QuickEventBubble(quickEventName: $qeName1, size: $size4)
                }
                VStack { QuickEventBubble(quickEventName: $qeName1, size: $size1)
                }
            }
            HStack {
                VStack { QuickEventBubble(quickEventName: $qeName1, size: $size1)
                }
                VStack { QuickEventBubble(quickEventName: $qeName1, size: $size3)
                }
                VStack { QuickEventBubble(quickEventName: $qeName1, size: $size1)
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
