//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by stephanie rocha marquez on 1/27/26.
//

import SwiftUI

struct ContentView: View {
    struct AssignmentItem: Identifiable {
        let id = UUID()
        var course: String
        var description: String
        var dueDate: Date
    }
    @State private var assignmentItems = [
        AssignmentItem(course: "Algebra", description: "Linear Equations", dueDate: Date()),
        AssignmentItem(course: "Science", description: "Atomic Bomb Lab", dueDate: Date()),
        AssignmentItem(course: "History", description: "Civil War Essay", dueDate: Date()),
        AssignmentItem(course: "English", description: "AP Central Assignment", dueDate: Date())
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(assignmentItems) { item in
                    VStack(alignment: .leading) {
                        Text(item.course).font(.headline)
                        Text(item.description)
                    }
                }
                .onMove(perform: { indices, newOffset in
                    assignmentItems.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSets in
                    assignmentItems.remove(atOffsets: indexSets)
                })
                
            }
            .navigationBarTitle("Assignment Noteboook", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
    }
}
#Preview {
    ContentView()
}
