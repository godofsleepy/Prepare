//
//  StartView.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 22/05/24.
//

import SwiftUI

struct StartView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("IT’S GAME \nTIME")
                .font(Font.custom("Anton", size: 32))
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.white)
                .padding(.leading)
            
            Text("Prepare to all out")
                .font(.system(size: 17, weight: .medium))
                .foregroundColor(.white)
                .padding(.leading)
            
            Spacer()
            
            Button(
                action: {
                    router.navigate(path: .dateGame, data: Optional<AnyHashable>.none)
                },
                label: {
                    Text("Start")
                        .font(.system(size: 17, weight: .medium))
                        .foregroundColor(.black)
                }
            )
            .buttonStyle(PrimaryButtonStyle())
            .padding(.top)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}


#Preview {
    StartView()
}
