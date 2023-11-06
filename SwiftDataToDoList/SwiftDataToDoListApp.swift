//
//  SwiftDataToDoListApp.swift
//  SwiftDataToDoList
//
//  Created by Moroz Pavlo on 2023-06-16.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            
            // modelContainer storing the provided model type, sets a model context for that container in this view’s environment
            MainView()
                .modelContainer(for: Product.self)
        }
    }
}
