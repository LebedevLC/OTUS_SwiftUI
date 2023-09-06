//
//  FavoritesTabView.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 31.08.2023.
//

import SwiftUI

struct FavoritesTabView: View {
    
    let recipe: Recipe?
    @State var isLoaderAnimating: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Go to favorite recipe") {
                    guard let recipe else { return }
                    NavigationLink(
                        recipe.title,
                        destination: RecipeDestinationView(recipe: recipe)
                    )
                }
                UIKitToSwiftUIView(isAnimating: $isLoaderAnimating)
            }
        }
    }
}

struct FavoritesTabView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesTabView(recipe: Recipe(title: "Some title", receipt: "Some receipt"))
    }
}
