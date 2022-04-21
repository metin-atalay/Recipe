//
//  AvocadosApp.swift
//  Avocados
//
//  Created by Metin Atalay on 21.04.2022.
//

import SwiftUI

@main
struct AvocadosApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
