//
//  ViewController.swift
//  TodoList
//
//  Created by Maciej Motak on 25/03/2018.
//  Copyright © 2018 Maciej Motak. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    let repo = ToDoRepo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repo.getCount()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)
        
        let todoItem = repo.getItem(atIndex: indexPath.row)
        
        cell.textLabel?.text = todoItem?.body
        cell.accessoryType = (todoItem?.isDone)! ? .checkmark : .none
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(repo.getItem(atIndex: indexPath.row)?.body ?? "nil")
        let cell = tableView.cellForRow(at: indexPath)
        let item = repo.getItem(atIndex: indexPath.row)
        
        item?.isDone = !(item?.isDone)!
        cell?.accessoryType = (item?.isDone)! ? .checkmark : .none
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

