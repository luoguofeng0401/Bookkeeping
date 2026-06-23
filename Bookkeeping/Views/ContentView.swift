//
//  ContentView.swift
//  Bookkeeping
//
//  Created by Guofeng Luo on 2026-06-18.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) private var content
    
    var body: some View {
        TodoListView(vm: TodoViewModel(content: content))
    }
}

#Preview {
    ContentView()
}
