//
//  VehicleDAO.swift
//  DesignPattern-Command
//
//  Created by David on 12/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

class VehicleDAO {
    
    private let vehicle: Vehicle
    
    init(vehicle: Vehicle) {
        self.vehicle = vehicle
    }
    
    func saveToDB() -> Result {
        print("Saved vehicle '\(vehicle.name)' to DB!")
        return .success
    }
    
    func delete() -> Result {
        print("Deleted the vehicle '\(vehicle.name)' from the DB")
        return .success
    }
}
