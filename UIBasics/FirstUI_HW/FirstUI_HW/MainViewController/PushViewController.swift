//
//  MainViewController.swift
//  FirstUI_HW
//
//  Created by Иван on 11/10/14.
//  Copyright (c) 2014 Ivan. All rights reserved.
//

import UIKit

class PushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func PushButtonAction(sender: UIButton) {
        
        var pushViewController = PushViewController(nibName: "PushViewController", bundle: nil)
        var currentCount = self.navigationController?.title?.toInt()!
        
        currentCount!++
        
        self.navigationController?.title = String(currentCount!)
        
        self.navigationController?.pushViewController(pushViewController, animated: true)
        
        pushViewController.title = self.navigationController?.title
    }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


