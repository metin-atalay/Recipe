//
//  AvocadosView.swift
//  Avocados
//
//  Created by Metin Atalay on 21.04.2022.
//

import SwiftUI

struct AvocadosView: View {
    
    // MARK: - PROPERTIES
    
    @State private var pulsateAnimation: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
            
            VStack {
                Spacer()
                
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240, height: 240, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                    .scaleEffect(pulsateAnimation ? 1 : 0.9)
                    .opacity(pulsateAnimation ? 1 : 0.9)
                    .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                
                VStack {
                    Text("Avocados")
                        .font(.system(size: 42, weight: .bold, design: .serif))
                        .foregroundColor(.white)
                        .padding()
                        .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                    
                    Text("""
            Creamy, green, and full of nutrients!
            Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
            """)
                    
                        .font(.system(.headline, design: .serif))
                        .foregroundColor(Color("ColorGreenLight"))
                        .multilineTextAlignment(.center)
                        .lineSpacing(8)
                        .frame(maxWidth: 640, minHeight: 120)
                }.padding()
                
                Spacer()
            }
        }
        .ignoresSafeArea()
        .onAppear {
            withAnimation {
                pulsateAnimation.toggle()
            }
        }
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .environment(\.colorScheme, .dark)
    }
}
