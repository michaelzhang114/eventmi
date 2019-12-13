//
//  GroupHomePage.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct GroupHomePage: View {
    @EnvironmentObject var data: DataController
    
    @Binding var groupIndex: Int
    
//    @State private var quickEvents = ["Chill?","Dinner?", "Boba?", "Lunch?", "Gym", "Ping Pong?"]
//
//    @State var qeName1 = "Chill?"
//    @State var qeName2 = "Dinner?"
    
    @State var member1 = "Me"
    @State var member2 = "Nnamdi"
    @State var member3 = "Fatima"
    
    @State var index1 = 0
    @State var index2 = 1
    @State var index3 = 2
    
    @State var eventDateTime1 = "Sun, Oct 30 · 9:00pm"
    @State var eventName1 = "Boba"
    @State var eventLoc1 = "1100 Pace Street"
    
    @State var size1 = CGFloat(100)
    @State var size2 = CGFloat(50)
    
    struct NavigationConfigurator: UIViewControllerRepresentable {
        var configure: (UINavigationController) -> Void = { _ in }

        func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
            UIViewController()
        }
        func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
            if let nc = uiViewController.navigationController {
                self.configure(nc)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // label
                    // bubbles
                    BubblesView().padding(.bottom, 30).padding(.top, 20)
                    
                    // label for group members
                    Text("Members")
                        .fontWeight(.semibold)
                    // group members
                    HStack {
                        GroupMemberString(groupIndex: $groupIndex, memberIndex: $index1)
                        GroupMemberString(groupIndex: $groupIndex, memberIndex: $index2)
                        if(self.data.listOfFriendGroups[groupIndex].members.count > 2){
                            GroupMemberString(groupIndex: $groupIndex, memberIndex: $index3)
                        }
                    }.padding(.bottom, 30)
                    
                    // label for upcoming events
                    Text("Upcoming Events")
                        .fontWeight(.semibold)
                    if(self.data.listOfEvents.isEmpty){
                        Text("You have no upcoming events yet!")
                    } else {
                        UpcomingEventCard(index: $index1)
                        if(self.data.listOfEvents.count > 1){
                            UpcomingEventCard(index: $index2)
                        }
                        if(self.data.listOfEvents.count > 2){
                            UpcomingEventCard(index: $index3)
                        }
                    }
                    
                }.frame(width: 350.0)
            }
            .navigationBarTitle(Text(self.data.listOfFriendGroups[groupIndex].groupName), displayMode: .inline)
            .background(NavigationConfigurator { nc in
                nc.navigationBar.barTintColor = .white
                nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.black]
                nc.navigationBar.largeTitleTextAttributes = [.foregroundColor : UIColor.black]
                nc.navigationBar.shadowImage = UIImage()
            })
        }.padding(.top, -1.0).edgesIgnoringSafeArea(.top)
    }
}


struct GroupHomePage_Previews: PreviewProvider {
    @State static var tmp1 = 0
    static var previews: some View {
        GroupHomePage(groupIndex: $tmp1)
    }
}
