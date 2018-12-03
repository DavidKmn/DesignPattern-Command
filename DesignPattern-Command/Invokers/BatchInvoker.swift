//
//  BatchInvoker.swift
//  DesignPattern-Command
//
//  Created by David on 12/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

class BatchInvoker: Invoker {
    private enum Constants {
        static let BatchSize = 5
    }
    
    private var toBeExecuted: [Command] = [] {
        didSet {
            if toBeExecuted.count >= Constants.BatchSize {
                executeCommands()
            }
        }
    }

    private var finished: [Command] = []
    private var failed: [Command] = []
    
    func addCommand(command: Command) {
        toBeExecuted.append(command)
    }
    
    private func executeCommands() {
        toBeExecuted.forEach { (command) in
            if command.execute() == Result.success {
                finished.append(command)
            } else {
                failed.append(command)
            }
        }
        toBeExecuted.removeAll()
    }
}
