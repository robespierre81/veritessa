//
//  Veritessa_iOS_AppApp.swift
//  Veritessa iOS App
//
//  Created by Walter Kurz on 28.05.23.
//

import SwiftUI

@main
struct Veritessa_iOS_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
