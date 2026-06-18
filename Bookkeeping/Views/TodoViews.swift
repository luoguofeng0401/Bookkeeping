//
//  TodoViews.swift
//  Bookkeeping
//
//  Created by Guofeng Luo on 2026-06-18.
//

import SwiftUI

struct TodoRawView: View {
    let todo: TodoItem
    let onToggle: () -> Void
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AddTodoView: View {
    let vm: TodoViewModel
    @Environment(\.dismiss) private var dismiss
    @State private var title = ""
    
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

struct TodoDetailView: View {
    let todo: TodoItem
    let vm: TodoViewModel
    @Environment(\.dismiss) private var dismiss
    @State private var editTitle = ""
    @State private var isEditing = false
    
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

#Preview {
    TodoViews()
}
