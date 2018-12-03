//
//  VehicleAPI.swift
//  DesignPattern-Command
//
//  Created by David on 11/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

class VehicleAPI {
    private let vehicle: Vehicle
    
    init(vehicle: Vehicle) {
        self.vehicle = vehicle
    }
    
    func sendToBackend() -> Result {
        print("Sending the vehicle '\(vehicle.name)' to backend!")
        
        let success = true
        
        if success {
            print("Success")
            return .success
        } else {
            print("Failure")
            return .failure(VehicleAPIError.APIError)
        }
    }
    
    func deleteFromBackend() -> Result {
        print("Delete the vehicle '\(vehicle.name)' from the backend")
        return .success
    }
}
