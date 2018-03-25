//
//  ToDoItem.swift
//  TodoList
//
//  Created by Maciej Motak on 25/03/2018.
//  Copyright © 2018 Maciej Motak. All rights reserved.
//

import Foundation

class ToDoItem {
    let body : String
    var isDone : Bool
    
    init(body: String) {
        self.body = body
        self.isDone = false
    }
}
