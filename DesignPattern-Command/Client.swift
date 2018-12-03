//
//  Client.swift
//  DesignPattern-Command
//
//  Created by David on 12/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

// This would be your normal controller, you'll have your business logic here.
// Among other things this class will create your commands and pass them to the invoker.

class VehicleClient {
    
    private let invoker = BatchInvoker()
    
    func startTesting() {
        
        // Just sending a vehicle to the API
        let dummyVehicle = ATVehicle(id: 1, name: "Dummy Vehicle")
        let apiReciever = VehicleAPI(vehicle: dummyVehicle)
        let addVehicleCommand = AddVehicleAPICommand(api: apiReciever)
        invoker.addCommand(command: addVehicleCommand)
        
        let dbReciever = VehicleDAO(vehicle: dummyVehicle)
        let saveVehicleCommand = SaveVehicleToDBCommand(dao: dbReciever)
        invoker.addCommand(command: saveVehicleCommand)
        
        let logReciever = VehicleLogger(vehicle: dummyVehicle)
        let logVehicleCommand = LogVehicleCommand(logger: logReciever)
        invoker.addCommand(command: logVehicleCommand)
        
        let addVehicleTransactionCommand = TransactionCommand(commands: [
            LogVehicleCommand(logger: logReciever),
            SaveVehicleToDBCommand(dao: dbReciever),
            AddVehicleAPICommand(api: apiReciever),
            LogVehicleCommand(logger: logReciever)
            ])
        invoker.addCommand(command: addVehicleTransactionCommand)
    
        
        let anotherLogReciever = VehicleLogger(vehicle: ATVehicle(id: 2, name: "Another Dummy Vehicle"))
        let secondLogCommand = LogVehicleCommand(logger: anotherLogReciever)
        invoker.addCommand(command: secondLogCommand)
    }
    
}
