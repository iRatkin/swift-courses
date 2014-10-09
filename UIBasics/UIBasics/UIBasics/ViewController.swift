//
//  ViewController.swift
//  UIBasics
//
//  Created by Иван on 08/10/14.
//  Copyright (c) 2014 Ivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonAction(sender: UIButton) {
        
        if label.text?.toInt() == nil {
            return
        }
        
        var count = label.text!.toInt()!
        count++
        label.text = String(count)
    }

}

