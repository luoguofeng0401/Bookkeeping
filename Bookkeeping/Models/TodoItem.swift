//
//  TodoItem.swift
//  Bookkeeping
//
//  Created by Guofeng Luo on 2026-06-18.
//

import Foundation
import SwiftData

@Model
class TodoItem {
    var title: String
    var isCompleted: Bool
    var createdAt: Date
    
    init(title: String) {
        self.title = title
        self.isCompleted = false
        self.createdAt = Date()
    }
}
