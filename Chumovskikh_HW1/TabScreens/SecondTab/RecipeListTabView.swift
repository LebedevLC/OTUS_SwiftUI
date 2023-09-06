//
//  ProductsListScreen.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 31.08.2023.
//

import SwiftUI

struct RecipeListTabView: View {
    
    let recipes: [Recipe] = Recipe.examples()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(recipes) { recipe in
                    NavigationLink(
                        recipe.title,
                        destination: RecipeDestinationView(recipe: recipe)
                    )
                }
            }
        }
    }
}

struct RecipeListTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListTabView()
    }
}
