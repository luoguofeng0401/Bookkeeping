//
//  BookkeepingApp.swift
//  Bookkeeping
//
//  Created by Guofeng Luo on 2026-06-18.
//

import SwiftUI
import SwiftData

@main
struct BookkeepingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: TodoItem.self)
    }
}
