//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by stephanie rocha marquez on 1/27/26.
//

import SwiftUI

struct ContentView: View {
   
    @State private var assignmentList: [AssignmentItem] = [
        AssignmentItem(course: "Algebra", description: "Linear Equations", dueDate: Date()),
        AssignmentItem(course: "Science", description: "Atomic Bomb Lab", dueDate: Date()),
        AssignmentItem(course: "History", description: "Civil War Essay", dueDate: Date()),
        AssignmentItem(course: "English", description: "AP Central Assignment", dueDate: Date())
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(assignmentList) { item in
                    VStack(alignment: .leading) {
                        Text(item.course).font(.headline)
                        Text(item.description)
                    }
                }
                .onMove(perform: { indices, newOffset in
                    assignmentList.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSets in
                    assignmentList.remove(atOffsets: indexSets)
                })
                
            }
            .navigationBarTitle("Assignment Notebook", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
    }
}
#Preview {
    ContentView()
}
