//
//  NavigationState.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 14.09.2023.
//

import Foundation

class NavigationStateManager: ObservableObject {
    @Published var selectedScreen = [Recipe]()
}
