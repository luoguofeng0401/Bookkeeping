//
//  TodoRowView.swift
//  Bookkeeping
//
//  Created by Guofeng Luo on 2026-06-29.
//

import SwiftUI

struct TodoRowView: View {
    let todo: TodoItem
    let onToggle:() -> Void
    
    var body: some View {
        HStack {
            Button(action: onToggle) {
                Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundStyle(todo.isCompleted ? .green : .secondary)
                    .font(.title2)
            }
            .buttonStyle(.plain)
            
            Text(todo.title)
                .strikethrough(todo.isCompleted)
                .foregroundStyle(todo.isCompleted ? .green : .secondary)
        }
    }
}


