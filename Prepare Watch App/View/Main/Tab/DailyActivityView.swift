//
//  DailyActivityView.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 25/05/24.
//

import SwiftUI
import HealthKit
import HealthKitUI

struct DailyActivityView: View {
    var activitySummary: HKActivitySummary = {
        let summary = HKActivitySummary()
        summary.activeEnergyBurned = HKQuantity(unit: .kilocalorie(), doubleValue: 500)
        summary.activeEnergyBurnedGoal = HKQuantity(unit: .kilocalorie(), doubleValue: 1000)
        summary.appleExerciseTime = HKQuantity(unit: .minute(), doubleValue: 30)
        summary.appleExerciseTimeGoal = HKQuantity(unit: .minute(), doubleValue: 60)
        summary.appleStandHours = HKQuantity(unit: .count(), doubleValue: 12)
        summary.appleStandHoursGoal = HKQuantity(unit: .count(), doubleValue: 24)
        return summary
    }()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Day - 10/14")
                .font(.system(size: 17))
                .fontWeight(.semibold)
                .padding(.bottom)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("MOVE")
                        .font(.system(size: 10))
                        .fontWeight(.light)
                    Text("387/500")
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: "FE3082"))
                    
                    Text("EXERCISE")
                        .padding(.top, 1)
                        .font(.system(size: 10))
                        .fontWeight(.light)
                    Text("30/30")
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: "A7FB01"))

                    Text("STAND")
                        .padding(.top, 1)
                        .font(.system(size: 10))
                        .fontWeight(.light)
                    Text("10/8")
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: "01D8DA"))
                    
                }
                Spacer()
                ActivityRingViewRepresentable(activitySummary: activitySummary)
                    .frame(width: 94, height: 94)
            }.padding(.top)
            Spacer()
        }
    }
}

struct ActivityRingViewRepresentable: WKInterfaceObjectRepresentable {
    var activitySummary: HKActivitySummary
    
    func makeWKInterfaceObject(context: Context) -> WKInterfaceActivityRing {
        return WKInterfaceActivityRing()
    }
    
    func updateWKInterfaceObject(_ wkInterfaceObject: WKInterfaceActivityRing, context: Context) {
        wkInterfaceObject.setActivitySummary(activitySummary, animated: true)
    }
}

#Preview {
    DailyActivityView()
}
