//
//  ListTabView.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 25/05/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ListTabView: View {
    @EnvironmentObject var router: Router
    @State var isAnimation = false
    
    var body: some View {
        List {
            Section {
                Button(
                    action: {},
                    label: {
                        Text("Start Workout")
                            .font(.system(size: 17, weight: .medium))
                            .foregroundColor(.black)
                    }
                )
                .buttonStyle(PrimaryButtonStyle())
            }.listItemTint(Color.clear)
            
            Section {
                ForEach(0..<10) { _ in
                    HStack{
                        if let localImageURL = Bundle.main.url(forResource: "workout-push-up", withExtension: "webp") {
                            WebImage(url: localImageURL, isAnimating: $isAnimation)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45, height: 45)
                                .clipped()
                        }
                    
                        VStack(alignment: .leading) {
                            Text("Push Up")
                                .font(.system(size: 17))
                                .fontWeight(.medium)
                            Text("20 Reps, 3 Set")
                                .foregroundColor(Color(hex: "AEB4BF"))
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                        }.padding(.leading)
                    }.onTapGesture {
                        router.navigate(path: PathRoute.workout)
                    }
                }
            }
            .navigationTitle("Day-1")
        }
    }
}

#Preview {
    ListTabView()
}
