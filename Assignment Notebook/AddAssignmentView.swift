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
    @State private var dueDate = Date()
    static let courses = ["Algebra", "Science", "History", "English", "Healthcare"]
    var body: some View {
        NavigationView {
            Form {
                Picker("Course", selection: $course) {
                    ForEach(Self.courses, id: \.self) { priority in
                        Text(course).tag(course)
                    }
                }
                TextField("Assignment Description", text: $description)
                DatePicker("Due Date", selection: $dueDate, displayedComponents: .date)
            }
            .navigationBarTitle("Add New Assignment", displayMode: .inline)
            .navigationBarItems(trailing: Button("Save") {
                if course.count > 0, description.count > 0 {
                    let item = AssignmentItem(course: course, description: description, dueDate: dueDate)
                    assignmentList.items.append(item)
                    dismiss()
                }
            })
        }
    }
}


