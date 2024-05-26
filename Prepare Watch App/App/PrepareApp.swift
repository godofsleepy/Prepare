//
//  PrepareApp.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 22/05/24.
//

import SwiftUI
import SDWebImageWebPCoder

@main
struct Prepare_Watch_AppApp: App {
    init() {
        let webPCoder = SDImageWebPCoder.shared
        SDImageCodersManager.shared.addCoder(webPCoder)
    }
    
    @StateObject private var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.stack) {
                MainView()
                    .navigationDestination(for: Route<AnyHashable>.self) { route in
                        router.handleRoute(route: route)
                    }
                
            }
            .onReceive(router.$stack, perform: { _ in
                print("\(router.stack)")
            })
            .navigationViewStyle(StackNavigationViewStyle())
        }
        .environmentObject(router)
    }
}
