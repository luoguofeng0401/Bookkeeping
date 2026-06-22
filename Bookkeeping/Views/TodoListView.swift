//
//  TodoView.swift
//  Bookkeeping
//
//  Created by Guofeng Luo on 2026-06-18.
//

import SwiftUI

struct TodoListView: View {
    @State var vm: TodoViewModel
    @State private var showAdd = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.todos) { todo in
                    NavigationLink(destination: TodoDetailView(todo: todo, vm: vm)) {
                        TodoRawView(todo: todo) {
                            vm.toggle(todo)
                        }
                    }
                }
                .onDelete(perform: vm.delete)
            }
            .navigationTitle("待辦清單")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button { showAdd = true } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showAdd) {
                AddTodoView(vm: vm)
            }
        }
    }
}


