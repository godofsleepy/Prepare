//
//  Router.swift
//  Prepare Watch App
//
//  Created by Rifat Khadafy on 22/05/24.
//

import Foundation
import SwiftUI

enum PathRoute {
    case dateGame
    case workoutType
    case workout
    case descriptionWorkout
}

class Router: ObservableObject {
    @Published var stack: [Route<AnyHashable>] = []
    
    
    
    func navigate<T: Hashable>(path: PathRoute, data: T? = Optional<AnyHashable>.none) {
        let route = Route(path: path, data: data as AnyHashable)
        
        stack.append(route)
    }
    
    func navigateAndRemoveUntil<T: Hashable>(path: PathRoute, data: T?, until: (Route<AnyHashable>) -> Bool) {
        let route = Route(path: path, data: data as AnyHashable)
        stack.append(route)
        
        //        while let lastRoute = stack.last, !until(lastRoute) {
        //            stack.removeLast()
        //        }
    }
    
    func removeAll() {
        stack.removeAll()
    }
    
    
    func dismiss() {
        stack.removeLast()
    }
    
    func handleRoute(route: Route<AnyHashable>) -> some View  {
        switch route.path {
        case .dateGame:
            return AnyView(DateGameView())
        case .workoutType:
            return AnyView(WorkoutTypeView())
        case .workout:
            return AnyView(WorkoutView())
        case .descriptionWorkout:
            return AnyView(DescriptionWorkoutView())
        }
    }
}

struct Route<T: Hashable>: Identifiable, Hashable {
    let id = UUID()
    let path: PathRoute
    let data: T?
}


