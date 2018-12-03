//
//  Result.swift
//  DesignPattern-Command
//
//  Created by David on 11/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

enum Result {
    case success
    case failure(Error)
}

extension Result: Equatable {
    static func == (lhs: Result, rhs: Result) -> Bool {
        switch (lhs, rhs) {
        case (.success, .success):
            return true
        case (.failure(let error1), .failure(let error2)):
            return String(describing: error1.localizedDescription) == String(describing: error2.localizedDescription)
        default: return false 
        }
    }
}
