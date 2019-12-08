//
//  QuickEventBubble.swift
//  Eventmi
//
//  Created by Alethea Toh on 12/7/19.
//  Copyright © 2019 Michael Zhang. All rights reserved.
//

import SwiftUI

struct QuickEventBubble: View {
    @Binding var quickEventName: String
    @Binding var size: CGFloat
    
    var body: some View {
        Arc(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: true)
        .fill(Color.purple)
        .frame(width: size, height: size)
        .overlay(
        Text(quickEventName))
    }
}

struct Arc: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
        return path
    }
}

struct QuickEventBubble_Previews:
PreviewProvider {
    @State static var qeName1 = "Chill?"
    @State static var size = CGFloat(100)
    
    static var previews: some View {
        QuickEventBubble(quickEventName: $qeName1, size: $size)
    }
}
