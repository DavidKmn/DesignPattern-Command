//
//  LogVehicleCommand.swift
//  DesignPattern-Command
//
//  Created by David on 12/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

class LogVehicleCommand: Command {
    
    private let logger: VehicleLogger
    
    init(logger: VehicleLogger) {
        self.logger = logger
    }
    
    func execute() -> Result {
        self.logger.appendToLogfile()
        return .success
    }
    
    func undo() -> Result {
        print("Cannot undo a logging operation")
        return .success
    }
    
}
