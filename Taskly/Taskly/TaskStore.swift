//
//  TaskStore.swift
//  Taskly
//
//  Created by Vadym Horovyi on 28/04/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import Foundation

class TaskStore {
                // todo    comlited
    var tasks = [[Task](), [Task]()]
    
    //    add tasks
    func add(_ task: Task, at index: Int, isDone: Bool = false) {
        let section = isDone ? 1 : 0
        tasks[section].insert(task, at: index)
        
    }
    
    //    remove tasks
    func removeTask(at index: Int, isDone: Bool = false) -> Task {
        let section = isDone ? 1 : 0
        return tasks[section].remove(at: index)
        
    }
}
