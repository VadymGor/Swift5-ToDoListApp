//
//  TasksController.swift
//  Taskly
//
//  Created by Vadym Horovyi on 28/04/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import UIKit

class TasksController: UITableViewController {
    
    var taskStore = TaskStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let todoTasks = [Task(name: "Maditate"), Task(name: "By bananas"), Task(name: "Learn Swift")]
        let doneTasks = [Task(name: "Watch Netflix")]
        taskStore.tasks = [todoTasks, doneTasks]
    }
    
    @IBAction func addTask(_ sender: UIBarButtonItem) {
        
        //        Setting up alert controller
        let alertController = UIAlertController(title: "Add Task", message: nil, preferredStyle: .alert)
        
        //        Set up the actions
        let addAction = UIAlertAction(title: "Add", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        //        Add the text field
        alertController.addTextField { textField in
            textField.placeholder = "Enter task name..."
        }
        
        //        Add the actions
        alertController.addAction(addAction)
        alertController.addAction(cancelAction)
        
        //        Present
        present(alertController, animated: true)
    }
}

// MARK: - DataSource

extension TasksController {
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 54
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "To-do" : "Done"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return taskStore.tasks.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskStore.tasks[section].count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = taskStore.tasks[indexPath.section][indexPath.row].name
        return cell
    }
}
