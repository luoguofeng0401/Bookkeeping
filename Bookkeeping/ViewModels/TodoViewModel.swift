//
//  TodoViewModel.swift
//  Bookkeeping
//
//  Created by Guofeng Luo on 2026-06-18.
//

import Foundation
import SwiftData

@Observable
final class TodoViewModel {
    
    private var context: ModelContext
    var todos: [TodoItem] = []
    
    init(context: ModelContext) {
        self.context = context
        fetch()
    }
    
    func add(title: String) {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        let item = TodoItem(title: title)
        context.insert(item)
        save()
    }
    
    func fetch() {
        let descriptor = FetchDescriptor<TodoItem>(
            sortBy: [SortDescriptor(\.createdAt, order: .reverse)]
        )
        todos = (try? context.fetch(descriptor)) ?? []
    }
    
    func toggle(_ item: TodoItem) {
        item.isCompleted.toggle()
        save()
    }
    
    func update(_ item: TodoItem, newTitle: String) {
        item.title = newTitle
        save()
    }
    
    func delete(_ item: TodoItem) {
        context.delete(item)
        save()
    }
    
    func delete(at offsets: IndexSet) {
        offsets.forEach {
            context.delete(todos[$0])
        }
        save()
    }
    
    private func save() {
        try? context.save()
        fetch()
    }
    
}

#Preview {
    TodoViewModel()
}
