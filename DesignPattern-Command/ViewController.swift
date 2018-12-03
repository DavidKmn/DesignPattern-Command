//
//  ViewController.swift
//  DesignPattern-Command
//
//  Created by David on 11/06/2018.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit
// https://agostini.tech/2018/06/03/design-patterns-in-swift-command-pattern/

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let client = VehicleClient()
        client.startTesting()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

