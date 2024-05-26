//
//  DateGameView.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 22/05/24.
//

import SwiftUI

struct DateGameView: View {
    @EnvironmentObject var router: Router
    
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let currentDate = Date()
        let endDate = calendar.date(byAdding: .year, value: 1, to: currentDate)!
        return currentDate...endDate
    }()
    
    var body: some View {
        VStack {
            DatePicker(
                "Start Date",
                selection: $date,
                in: dateRange,
                displayedComponents: [.date]
            )
                .hueRotation(Angle(degrees: 270))
                .datePickerStyle(WheelDatePickerStyle())
            Spacer()
            Button(
                action: {
                    router.removeAll()
                },
                label: {
                    Text("Next")
                        .font(.system(size: 17, weight: .medium))
                        .foregroundColor(.black)
                }
            )
            .buttonStyle(PrimaryButtonStyle())
            .padding(.top)
            
        }
        .navigationTitle("Game Day")
        .foregroundColor(.white)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(false)
    }
    
}

#Preview {
    DateGameView()
}
