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
            Text(recipe.title)
                .font(.largeTitle)
            VStack(alignment: .leading, spacing: 12) {
                Divider()
                Text(recipe.receipt)
                    .font(.body)
            }.padding(22)
        }
        .padding(10)
    }
}

struct ReceiptDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDestinationView(recipe: DataSource().recipes.first!)
    }
}
