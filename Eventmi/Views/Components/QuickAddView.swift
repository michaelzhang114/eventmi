//
//  QuickAddView.swift
//  Eventmi
//
//  Created by Michael Zhang on 12/3/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct QuickAddView: View {
    var body: some View {
        VStack {
            Text("Quick Add")
            HStack {
                ContactCardViewVertical()
                ContactCardViewVertical()
                ContactCardViewVertical()
            }
        }
        
        
    }
}

struct QuickAddView_Previews: PreviewProvider {
    static var previews: some View {
        QuickAddView()
    }
}
