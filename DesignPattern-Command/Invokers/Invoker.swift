//
//  Invoker.swift
//  DesignPattern-Command
//
//  Created by David on 11/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

protocol Invoker {
    func addCommand(command: Command)
}
