//
//  MainViewController.swift
//  NavigationBasics
//
//  Created by Иван on 10/10/14.
//  Copyright (c) 2014 Ivan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func modalButtonAction(sender: UIButton) {
        var modalViewController = ModalViewController(nibName: "ModalViewController", bundle: nil)
        modalViewController.view.backgroundColor = UIColor.redColor()
        
        var navigationController = UINavigationController(rootViewController: modalViewController)
        
        self.presentViewController(navigationController, animated: true, completion: {
            println("Present")
        })
    }
    
    @IBAction func pushButtonAction(sender: UIButton) {
        
        var pushViewController = PushViewController(nibName: "PushViewController", bundle: nil)
        pushViewController.view.backgroundColor = UIColor.greenColor()
        
        self.navigationController?.pushViewController(pushViewController, animated: true)
        
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
