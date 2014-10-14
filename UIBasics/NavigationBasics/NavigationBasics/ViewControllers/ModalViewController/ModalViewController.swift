//
//  ModalViewController.swift
//  NavigationBasics
//
//  Created by Иван on 10/10/14.
//  Copyright (c) 2014 Ivan. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.Bordered, target: self, action: Selector("closeViewController"))
        // Do any additional setup after loading the view.
    }

    func closeViewController() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func backButtonAction(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
