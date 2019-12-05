//
//  BigLongButtonView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct BigLongButtonView: View {
    @Binding var name: String
    // TODO: make this button big
    var body: some View {
        Button(action: {
            
        }){
            Text(name)
        }
    }
}

struct BigLongButtonView_Previews: PreviewProvider {
    @State static var name = "Boba"
    static var previews: some View {
        BigLongButtonView(name: $name)
    }
}
