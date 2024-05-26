//
//  MainView.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 22/05/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var selection: Tab = .list

    enum Tab {
        case controls, list, activity
    }
    var body: some View {
        TabView(selection: $selection) {
            ControlsView().tag(Tab.controls)
            ListTabView().tag(Tab.list)
            DailyActivityView().tag(Tab.activity)
        }
        .navigationTitle("Day-1")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MainView()
}
