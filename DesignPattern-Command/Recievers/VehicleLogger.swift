//
//  VehicleLogger.swift
//  DesignPattern-Command
//
//  Created by David on 12/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

class VehicleLogger
{
    private let vehicle: Vehicle
    
    init(vehicle: Vehicle) {
        self.vehicle = vehicle
    }
    
    func appendToLogfile() {
        print("This class will append the logfile with a vehicle '\(vehicle.name)'")
    }
}
