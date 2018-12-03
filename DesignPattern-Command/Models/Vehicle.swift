//
//  Models.swift
//  DesignPattern-Command
//
//  Created by David on 11/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

protocol Vehicle {
    var vehicleID: Int { get }
    var name: String { get set }
}

class ATVehicle: Vehicle {
    var vehicleID: Int
    var name: String
    
    init(id: Int, name: String) {
        self.vehicleID = id
        self.name = name
    }
}
