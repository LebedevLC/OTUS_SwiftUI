//
//  Recipe.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 06.09.2023.
//

import Foundation

struct Recipe: Identifiable, Hashable {
    
    var title: String
    var receipt: String
    let id: UUID
    
    init(title: String, receipt: String) {
        self.title = title
        self.receipt = receipt
        self.id = UUID()
    }
    
    static func examples() -> [Recipe] {
        [Recipe(
            title: "Two eggs",
            receipt: "You just need two eggs. You can do whatever you want with them"
        ),
         Recipe(
            title: "Fried bread",
             receipt: "Take the bread. Fry it!"
         ),
         Recipe(
            title: "Soup",
            receipt: "Add water and a pile of firewood to the pot..."
         )]
    }
}
