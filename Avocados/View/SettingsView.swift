//
//  SettingsView.swift
//  Avocados
//
//  Created by Metin Atalay on 21.04.2022.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPS
    
    @State private var enableNotification: Bool = false
    @State private var backgroundRefresh: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 8, x: 0, y: 4)
                
                Text("Avocados")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .serif))
                    .foregroundColor(Color("ColorGreenAdaptive"))
                
            } //: VSTACK
            .padding()
            
            Form {
                // MARK: - SECTION #1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notificaation")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                    
                }
                
                // MARK: - SECTION #2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Metin Atalay")
                        }
                        HStack {
                            Text("Designer").foregroundColor(Color.gray)
                            Spacer()
                            Text("metin-atalay")
                        }
                        HStack {
                            Text("Githup").foregroundColor(Color.gray)
                            Spacer()
                            Text("github.com/metin-atalay")
                        }
                        HStack {
                            Text("Version").foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message").foregroundColor(Color.gray)
                            Spacer()
                            Text("👍 Happy Coding!")
                        }
                    }
                }
            }
        } //: VSTACK
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
