//
//  Bool+Random.swift
//  DesignPattern-Command
//
//  Created by David on 11/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
extension Bool {
    static var random: Bool {
        return arc4random_uniform(2) == 0
    }
}
