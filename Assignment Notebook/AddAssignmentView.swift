//
//  AddAssignmentView.swift
//  Assignment Notebook
//
//  Created by stephanie rocha marquez on 2/2/26.
//

import SwiftUI

struct AddAssignmentView: View {
    @Environment(AssignmentList.self) var assignmentList
    @Environment(\.dismiss) var dismiss
    @State private var course = ""
    @State private var description = ""
    @State private var dueDate = ""
    @State private var priority: String = priorities.first ?? "Medium"
    static let priorities: [String] = ["High", "Medium", "Low"]
    var body: some View {
        NavigationView {
            Form {
                Picker("Priority", selection: $priority) {
                    ForEach(Self.priorities, id: \.self) { priority in
                        Text(priority).tag(priority)
                    }
                }
                
            }
        }
    }
}


