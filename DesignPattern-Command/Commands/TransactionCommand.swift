//
//  TransactionCommand.swift
//  DesignPattern-Command
//
//  Created by David on 11/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

class TransactionCommand: Command {
    
    private let commands: [Command]
    private var finishedCommands: [Command] = []
    
    init(commands: [Command]) {
        self.commands = commands
    }
    
    func execute() -> Result {
        
        print("Transaction Started")
        for command in commands {
            let result = command.execute()
            if result == .success {
                finishedCommands.append(command)
            } else {
                print("Transaction failed: \(result)")
                finishedCommands.forEach { $0.undo() }
                finishedCommands.removeAll()
                return .failure(TransactionError.TransactionFailed)
            }
        }
        
        return .success
    }
    
    func undo() -> Result {
        return commands.reduce(Result.success, { (result, command) -> Result in
            guard result == .success else { return result }
            return command.undo()
        })
    }
    
}
