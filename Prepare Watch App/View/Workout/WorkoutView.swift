//
//  WorkoutView.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 22/05/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct WorkoutView: View {
    @EnvironmentObject var router: Router
    @State var isAnimating: Bool = false

    var body: some View {
    
        VStack(alignment: .leading){
            HStack {
                Text("S: 0/3")
                    .font(.system(size: 14))
                    .foregroundColor(.accentColor)
            }.frame(maxWidth:.infinity, alignment: .center)
            HStack{
                Text("Push Up")
                    .font(.system(size: 17, weight: .medium))
                if let localImageURL = Bundle.main.url(forResource: "workout-push-up", withExtension: "webp") {
                    Spacer()
                    WebImage(url: localImageURL, isAnimating: $isAnimating)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 60)
                        .clipped()
                        .onTapGesture {
                            router.navigate(path: PathRoute.descriptionWorkout)
                        }
                }
            }
            HStack{
                Text("20")
                  .font(Font.custom("Anton", size: 24))
                  .foregroundColor(.accentColor)
                + Text(" Reps | ")
                    .font(Font.custom("Anton", size: 15))
                + Text("3")
                    .font(Font.custom("Anton", size: 24))
                    .foregroundColor(.accentColor)
                + Text(" Set")
                    .font(Font.custom("Anton", size: 15))
                
            }
            Spacer()
            HStack {
                VStack {
                    InfoWorkoutComponent(
                        icon: "flame.fill",
                        value: "443 kcal",
                        color: Color.red
                    )
                    InfoWorkoutComponent(
                        icon: "heart.fill",
                        value: "72 bpm",
                        color: Color.red
                    )
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "checkmark")
                        .foregroundColor(.white)
                        .padding(8)
                    
                }
                .buttonStyle(CircularButtonStyle())
            }
        }
    }
}

#Preview {
    WorkoutView()
}
