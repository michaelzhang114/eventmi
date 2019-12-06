//
//  LittleButton.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/6/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct LittleButton: View {
    @Binding var name: String
    var body: some View {
        Button(action: {
        }){
            Text(name)
                .font(.subheadline)
                .padding(2)
                .foregroundColor(Color.white)
                
        }
        .frame(width: 100, height: 40)
        .background(Color.purple)
    }
}

struct LittleButton_Previews: PreviewProvider {
    @State static var name = "Respond"
    static var previews: some View {
        LittleButton(name: $name)
    }
}
