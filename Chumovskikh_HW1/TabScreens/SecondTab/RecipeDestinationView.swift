//
//  RecipeDestinationView.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 06.09.2023.
//

import SwiftUI

struct RecipeDestinationView: View {
    
    let recipe: Recipe
    
    var body: some View {
        VStack {
            Text(recipe.receipt)
        }
        .navigationTitle(recipe.title)
    }
}

struct ReceiptDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDestinationView(recipe: Recipe(title: "Some", receipt: "Some"))
    }
}
