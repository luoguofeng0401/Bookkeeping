//
//  AddTodoView.swift
//  Bookkeeping
//
//  Created by Guofeng Luo on 2026-06-29.
//

import SwiftUI

struct AddTodoView: View {
    
    let vm: TodoViewModel
    @Environment(\.dismiss)private var dismiss
    @State private var title = ""
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("輸入標題", text: $title)
            }
            .navigationTitle("新增待辦")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("取消") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("新增") {
                        vm.add(title: title)
                        dismiss()
                    }
                    .disabled(title.trimmingCharacters(in: .whitespaces).isEmpty)
                }
            }
        }
    }
}

