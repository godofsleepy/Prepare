//
//  WorkoutTypeView.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 22/05/24.
//

import SwiftUI

struct WorkoutTypeView: View {
    let listWorkoutType = [
        WorkoutTypeModel(
            icon: "figure.run",
            type: "Agility",
            position: ["Forward"],
            foregroundColor: Color(hex: "A3FF00"),
            backgroundColor: Color(hex: "1A2A00")
        ),
        WorkoutTypeModel(
            icon: "dumbbell.fill",
            type: "Strength",
            position: ["Defender"],
            foregroundColor: Color(hex: "E3041C"),
            backgroundColor: Color(hex: "FE3081").opacity(0.25)
        ),
        WorkoutTypeModel(
            icon: "figure.flexibility",
            type: "Durable",
            position: ["Midfielder"],
            foregroundColor: Color(hex: "F3BA2F"),
            backgroundColor: Color(hex: "F3BA2F").opacity(0.3)
        )
    ]
    
    var body: some View {
        List(listWorkoutType, id: \.self) { workoutType in
            VStack(alignment: .leading, spacing: 8) {
                Image(systemName: workoutType.icon)
                    .foregroundColor(workoutType.foregroundColor)
                    .imageScale(.large)
                Text(workoutType.type)
                    .font(.system(size: 18))
                    .fontWeight(.medium)
                Text(workoutType.position.joined(separator: ", "))
                    .foregroundColor(Color(hex: "AEB4BF"))
                    .font(.system(size: 12))
                    .fontWeight(.regular)
            }
            .listItemTint(workoutType.backgroundColor)
            .padding(.vertical, 10)
            
        }
        .navigationTitle("Workout Type")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    WorkoutTypeView()
}
