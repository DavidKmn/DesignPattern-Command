//
//  Command.swift
//  DesignPattern-Command
//
//  Created by David on 11/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

protocol Command {
    @discardableResult func execute() -> Result
    @discardableResult func undo() -> Result
}
