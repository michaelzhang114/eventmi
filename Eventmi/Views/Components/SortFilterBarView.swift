//
//  SortFilterBar.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/5/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct SortFilterBarView: View {
    var body: some View {
        HStack {
            Capsule()
            .fill(Color.green)
            .frame(width: 80, height: 40)
                .overlay(
                    Text("Sort By"))
            
            Capsule()
            .fill(Color.green)
            .frame(width: 80, height: 40)
                .overlay(
                    Text("Filters"))
        }
    }
}

struct SortFilterBar_Previews: PreviewProvider {
    static var previews: some View {
        SortFilterBarView()
    }
}
