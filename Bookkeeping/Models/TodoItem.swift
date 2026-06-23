//
//  TodoItem.swift
//  Bookkeeping
//
//  Created by Guofeng Luo on 2026-06-23.
//

import Foundation
import SwiftData

@Model
class TodoItem {
    var title: String
    var isCompleted: Bool
    var createAt: Date
    
    init(title: String) {
        self.title = title
        self.isCompleted = false
        self.createAt = Date()
    }
}
