//
//  InfoWorkoutComponent.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 22/05/24.
//

import SwiftUI

struct InfoWorkoutComponent: View {
    let icon: String
    let value: String
    let color: Color
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 10)
                .foregroundColor(color)
            Text(value)
                .font(.system(size: 12))
        }
    }
}

#Preview {
    InfoWorkoutComponent(icon: "flame.fill",
                         value: "443 kcal", color: Color.red)
}
