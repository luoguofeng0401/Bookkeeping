//
//  TodoDetailView.swift
//  Bookkeeping
//
//  Created by Guofeng Luo on 2026-06-29.
//

import SwiftUI

struct TodoDetailView: View {
    let todo: TodoItem
    let vm: TodoViewModel
    @Environment(\.dismiss) private var dismiss
    @State private var editTitle = ""
    @State private var isEditing = false
    
    var body: some View {
        Form {
            Section("標題") {
                if isEditing {
                    TextField("標題", text: $editTitle)
                }else {
                    Text(todo.title)
                }
            }
            
            Section("狀態") {
                Toggle("已完成", isOn: Binding(get: {
                    todo.isCompleted
                }, set: { _ in
                    vm.toggle(todo)
                }))
            }
            
            Section("建立時間") {
                Text(todo.createdAt.formatted())
                    .foregroundStyle(.secondary)
            }
            
            Section {
                Button("刪除", role: .destructive) {
                    vm.delete(todo)
                    dismiss()
                }
            }
        }
        .navigationTitle("詳細說明")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(isEditing ? "儲存" : "編輯") {
                    if isEditing {
                        vm.updata(todo, newTitle: editTitle)
                    } else {
                        editTitle = todo.title
                    }
                }
            }
        }
    }
}

