//
//  PizzaExpressApp.swift
//  PizzaExpress
//
//  Created by Xingguo Huang on 3/1/24.
//

import SwiftUI

@main
struct PizzaExpressApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
