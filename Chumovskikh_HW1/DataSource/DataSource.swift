//
//  DataSource.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 14.09.2023.
//

import Foundation

final class DataSource: ObservableObject {
    @Published var recipes = Recipe.examples()
}
