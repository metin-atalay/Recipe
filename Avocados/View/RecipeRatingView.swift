//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Metin Atalay on 22.04.2022.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(.yellow)
            }
        }
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
