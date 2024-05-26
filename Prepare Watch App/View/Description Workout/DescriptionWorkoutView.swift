//
//  DescriptionWorkoutView.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 22/05/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct DescriptionWorkoutView: View {
    @State var isAnimating = true
    var body: some View {
        VStack{
            Text("Push Up")
            if let localImageURL = Bundle.main.url(forResource: "workout-push-up", withExtension: "webp") {
                Spacer()
                WebImage(url: URL(string: "https://liftmanual.com/wp-content/uploads/2023/04/push-up-w.webp"), isAnimating: $isAnimating)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .clipped()
                    .onAppear {
            self.isAnimating = true
        }
            }

        }
    }
}

#Preview {
    DescriptionWorkoutView()
}
