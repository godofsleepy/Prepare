//
//  ControlsView.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 25/05/24.
//

import SwiftUI

struct ControlsView: View {
    var body: some View {
        VStack {
            Text("1/12")
                .font(Font.custom("Anton", size: 60))
                .foregroundColor(.white)
            Text("Reimaning Day")
                .fontWeight(.regular)
                .font(.system(size: 14))
                .foregroundColor(Color(hex: "AEB4BF"))
            
            HStack {
                Spacer()
                VStack {
                    Button(action: {}) {
                        Image(systemName: "xmark")
                            .frame(width: 21)
                            .foregroundColor(.white)
                            .padding(14)
                    }
                    .buttonStyle(CircularButtonStyle(backgroundColor: Color(hex: "222222"), lineWidth: 0))
                    
                    Text("Cancel")
                        .foregroundColor(Color(hex: "AEB4BF"))
                        .font(.system(size: 12))
                }
                Spacer()
                VStack {
                    Button(action: {}) {
                        Image(systemName: "list.dash")
                            .frame(width: 21)
                            .foregroundColor(.white)
                            .padding(14)
                    }
                    .buttonStyle(CircularButtonStyle(backgroundColor: Color(hex: "222222"), lineWidth: 0))
                    
                    Text("History")
                        .foregroundColor(Color(hex: "AEB4BF"))
                        .font(.system(size: 12))
                }
                Spacer()
            }.padding(.top)
        }
    }
}

#Preview {
    ControlsView()
}
