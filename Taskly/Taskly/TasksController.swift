//
//  TasksController.swift
//  Taskly
//
//  Created by Vadym Horovyi on 28/04/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import UIKit

class TasksController: UITableViewController {
    
}

// MARK: - DataSource

extension TasksController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Task"
        return cell
    }
}

