//
//  Task.swift
//  Taskly
//
//  Created by Vadym Horovyi on 28/04/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import Foundation

class Task {
    var name: String
    var isDone: Bool
    
    init(name: String, isDone: Bool = false) {
        self.name = name
        self.isDone = isDone
    }
    
}
