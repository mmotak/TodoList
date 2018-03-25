//
//  ToDoRepo.swift
//  TodoList
//
//  Created by Maciej Motak on 25/03/2018.
//  Copyright © 2018 Maciej Motak. All rights reserved.
//

import Foundation

class ToDoRepo {
    var items = [ToDoItem]()
    
    init() {
        items.append(ToDoItem(body: "to do 1"))
        items.append(ToDoItem(body: "to do 2"))
        items.append(ToDoItem(body: "to do 3"))
    }
    
    public func getItem(atIndex: Int) -> ToDoItem? {
        if (atIndex >= 0 && atIndex < items.count) {
            return items[atIndex]
        } else {
            return nil
        }
    }
    
    public func getCount() -> Int {
        return items.count
    }
    
    public func getItems() -> [ToDoItem] {
        return items
    }
}
