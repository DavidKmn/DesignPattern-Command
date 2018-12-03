//
//  AddVehicleAPICommand.swift
//  DesignPattern-Command
//
//  Created by David on 11/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

class AddVehicleAPICommand: Command {
    private var vehicleAPI: VehicleAPI
    
    init(api: VehicleAPI) {
        self.vehicleAPI = api
    }
    
    func execute() -> Result {
        return self.vehicleAPI.sendToBackend()
    }
    
    
    func undo() -> Result {
        return self.vehicleAPI.sendToBackend()
    }
    
}

