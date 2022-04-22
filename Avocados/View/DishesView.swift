//
//  DishesView.swift
//  Avocados
//
//  Created by Metin Atalay on 21.04.2022.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            // MARK: - 1 st column
            VStack (alignment: .leading, spacing: 4){
                HStack() {
                    Image("icon-toasts")
                        .resizable()
                        .scaledToFit()
                        .modifier(IconModifier())
                    
                    Spacer()
                    Text("Toasts")
                }
                Divider()
                HStack() {
                    Image("icon-tacos")
                        .resizable()
                        .scaledToFit()
                        .modifier(IconModifier())
                    
                    Spacer()
                    Text("Tacos")
                }
                Divider()
                HStack() {
                    Image("icon-salads")
                        .resizable()
                        .scaledToFit()
                        .modifier(IconModifier())
                    
                    Spacer()
                    Text("Salads")
                }
                Divider()
                HStack() {
                    Image("icon-halfavo")
                        .resizable()
                        .scaledToFit()
                        .modifier(IconModifier())
                    
                    Spacer()
                    Text("Halfavo")
                }
            }
            
            // MARK: - 2nd Column
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .imageScale(.large)
                    .font(Font.title.weight(.ultraLight))
                
                HStack {
                    Divider()
                }
            }
            
            // MARK: - 3rd Column
            VStack (alignment: .trailing, spacing: 4){
                HStack() {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .scaledToFit()
                        .modifier(IconModifier())
                    
                }
                
                Divider()
                
                HStack() {
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .scaledToFit()
                        .modifier(IconModifier())
                    
                }
                Divider()
                
                HStack() {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .scaledToFit()
                        .modifier(IconModifier())
                    
                }
                Divider()
                
                HStack() {
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .scaledToFit()
                        .modifier(IconModifier())
                }
            }
        }
        .font(.system(.callout,design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
