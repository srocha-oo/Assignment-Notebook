//
//  assignmentNotebook.swift
//  Assignment Notebook
//
//  Created by stephanie rocha marquez on 1/30/26.
//

import Foundation
import Observation

struct AssignmentItem: Identifiable {
    let id = UUID()
    var course: String
    var description: String
    var dueDate: Date
}

@Observable
class AssignmentList {
    var items: [AssignmentItem] = [
        AssignmentItem(course: "High", description: "Take out trash", dueDate: Date()),
        AssignmentItem(course: "Medium", description: "Pick up clothes", dueDate: Date()),
        AssignmentItem(course: "Low", description: "Eat a donut", dueDate: Date())
    ]
}
