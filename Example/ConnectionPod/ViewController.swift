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

    @IBOutlet weak var lbl: UILabel!
    var requestManager: RequestManager = RequestManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.requestManager.getAllPost(succes: setAllPost)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setAllPost(data : [PostResult]?){
        DispatchQueue.main.async {
            if let list = data{
                self.lbl.text! = "\(data!.count)"
            }
            
        }
    }
}

