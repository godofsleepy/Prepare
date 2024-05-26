//
//  CircularButtonStyle.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 22/05/24.
//

import SwiftUI

struct CircularButtonStyle: ButtonStyle {
    var backgroundColor: Color = Color.black
    var accentColor: Color = Color.accentColor
    var lineWidth: CGFloat = 1
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(backgroundColor)
            .clipShape(Circle())
            .overlay(Circle().stroke(accentColor, lineWidth: lineWidth))
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .background(.accent) // Set background color to blue
            .cornerRadius(8) // Add corner radius to the button
            .buttonStyle(DefaultButtonStyle()) // Apply default button style
            .clipShape(.capsule)
    }
}
