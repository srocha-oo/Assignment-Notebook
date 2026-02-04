//
//  assignmentNotebook.swift
//  Assignment Notebook
//
//  Created by stephanie rocha marquez on 1/30/26.
//

import Foundation
import Observation

@Observable
class AssignmentList {
    var items : [AssignmentItem] {
       didSet {
            if let encodedData = try? JSONEncoder().encode(items) {
               UserDefaults.standard.set(encodedData, forKey: "data")
           }
        }
    }
    init() {
        if let data = UserDefaults.standard.data(forKey: "data") {
            if let decodedData = try? JSONDecoder().decode([AssignmentItem].self, from: data) {
                items = decodedData
                return
            }
        }
        items = []
    }
}
