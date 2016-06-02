//
//  PurpleViewController.swift
//  ViewSample
//
//  Created by MF839-008 on 2016. 6. 1..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

class PurpleViewController: UIViewController {

    @IBAction func goHome(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NSNotificationCenter.defaultCenter().addObserver(self,
                                                         selector: #selector(changeBackgroundColor),
                                                         name: "changecolor",
                                                         object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeBackgroundColor(notification:NSNotification) {
        self.view.backgroundColor = notification.object as? UIColor
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
