//
//  ViewController.swift
//  BitriseTestingSample
//
//  Created by Viktor Benei on 6/17/15.
//  Copyright (c) 2015 Bitrise. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var variable:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var testButton: UIButton!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func testButtonTouched(sender: AnyObject) {

        if(ConnectionHelper.pingServer())
        {
            variable += 1
        }
    }

}

