//
//  ProductsListScreen.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 31.08.2023.
//

import SwiftUI

struct RecipeListTabView: View {
    
    @StateObject var navigationManager: NavigationStateManager
    @StateObject var dataSource = DataSource()
    
    var body: some View {
        NavigationStack(path: $navigationManager.selectedScreen) {
            RecipeRootView(dataSource: dataSource).navigationDestination(for: Recipe.self) { value in
                RecipeDestinationView(recipe: value)
            }
        }
        .environmentObject(navigationManager)
        .environmentObject(dataSource)
    }
}

struct RecipeListTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListTabView(navigationManager: NavigationStateManager())
    }
}
