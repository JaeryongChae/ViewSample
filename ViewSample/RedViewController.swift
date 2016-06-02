//
//  RedViewController.swift
//  ViewSample
//
//  Created by MF839-008 on 2016. 6. 1..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {  // 화면이 나타날때 마다 다시 load
        let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate
        // UIApplication Instance -> delegate(AppDelegate) 를 가져옴
        if let station = appDelegate?.stations {
            myLabel.text = station[0]
        }
    }
    
    override func viewDidLoad() { // 최초 나타날때만 load 됨
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let greenVC = segue.destinationViewController as? GreenViewController
//        
//        greenVC?.labelText = "홍대"
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
