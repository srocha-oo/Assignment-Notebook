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
    @State private var AssignmentItems = [
            AssignmentItem(course: "Algebra", description: "Linear Equations", dueDate: Date()),
            AssignmentItem(course: "Science", description: "Atomic Bomb Lab", dueDate: Date()),
            AssignmentItem(course: "History", description: "Civil War Essay", dueDate: Date()),
            AssignmentItem(course: "English", description: "AP Central Assignment", dueDate: Date())
        ]
    var body: some View {
        NavigationView {
            List {
                ForEach(AssignmentItems) { thing in Text(thing.description) }
                .onMove(perform: { indices, newOffset in
                    AssignmentItems.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSets in
                    AssignmentItems.remove(atOffsets: indexSets)
                })
                .navigationBarTitle("Things", displayMode: .inline)
                .navigationBarItems(leading: EditButton())
            }
        }
        
    }
}
#Preview {
    ContentView()
}
