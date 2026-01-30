//
//  assignmentNotebook.swift
//  Assignment Notebook
//
//  Created by stephanie rocha marquez on 1/30/26.
//

import Foundation

struct AssignmentListItem: Identifiable {
    let id = UUID()
    var priority: String
    var description: String
    var dueDate: Date
}

@Observable
class ToDoList {
    var items = [
        AssignmentListItem(priority: "High", description: "Take out trash", dueDate: Date()),
        AssignmentListItem(priority: "Medium", description: "Pick up clothes", dueDate: Date()),
        AssignmentListItem(priority: "Low", description: "Eat a donut", dueDate: Date())
    ]
}
