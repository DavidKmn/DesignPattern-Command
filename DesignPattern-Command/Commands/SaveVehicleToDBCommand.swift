//
//  File.swift
//  DesignPattern-Command
//
//  Created by David on 12/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

class SaveVehicleToDBCommand: Command {
    
    private let vehicleDAO: VehicleDAO
    
    init(dao: VehicleDAO) {
        self.vehicleDAO = dao
    }
    
    func execute() -> Result {
        return vehicleDAO.saveToDB()
    }
    
    func undo() -> Result {
        return vehicleDAO.delete()
    }
}
