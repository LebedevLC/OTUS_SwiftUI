//
//  FavoritesTabView.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 31.08.2023.
//

import SwiftUI

struct FavoritesTabView: View {
    
    @StateObject var navigationManager: NavigationStateManager
    @Binding var selectedTabIndex: Int
    @State var isLoaderAnimating: Bool = true
    
    @StateObject var modelDataManager = DataSource()
    
    var body: some View {
        VStack(alignment: .center, spacing: 60) {
            UIKitHearthView(isAnimating: $isLoaderAnimating)
                .shadow(color: .red, radius: 10, x: 0, y: 0)
                .frame(width: 250, height: 200, alignment: .center)
                .blur(radius: 20)
            Button("Перейти к случайному рецепту") {
                guard let recipe = modelDataManager.recipes.randomElement() else { return }
                navigationManager.selectedScreen = [recipe]
                selectedTabIndex = 1
            }
            .font(.headline)
            .foregroundColor(.indigo)
        }.padding(20)
    }
}

struct FavoritesTabView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesTabView(navigationManager: NavigationStateManager(), selectedTabIndex: .constant(0))
    }
}
