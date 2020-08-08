//
//  ViewController.swift
//  ConnectionPod
//
//  Created by Gabo2494 on 08/07/2020.
//  Copyright (c) 2020 Gabo2494. All rights reserved.
//

import UIKit
import ConnectionPod

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var x = MyUrlConnection.init(host: "qwertyhj")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

