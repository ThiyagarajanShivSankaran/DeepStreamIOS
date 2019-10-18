//
//  ViewController.swift
//  DeepStreamIOS
//
//  Created by ThiyagarajanShivSankaran on 10/18/2019.
//  Copyright (c) 2019 ThiyagarajanShivSankaran. All rights reserved.
//

import UIKit
import DeepStreamIOS

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let test = DeepStreamTest()
        test.testFrameWorkLog()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

