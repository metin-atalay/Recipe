//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Metin Atalay on 22.04.2022.
//

import SwiftUI

struct RecipeCookingView: View {
    
    // MARK: - PROP
    
    var recipe : Recipe
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves) ")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation) ")
            }
            
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking) ")
            }
            
        } //: HSTACK
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
