//
//  RecipeRootView.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 14.09.2023.
//

import SwiftUI

struct RecipeRootView: View {
    
    @ObservedObject var dataSource: DataSource
    
    var body: some View {
        List {
            ForEach(dataSource.recipes) { recipe in
                NavigationLink(recipe.title, value: recipe)
            }
        }
        .navigationBarTitle("Recipe")
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRootView(dataSource: DataSource())
    }
}

