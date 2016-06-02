//
//  BlueViewController.swift
//  ViewSample
//
//  Created by MF839-008 on 2016. 6. 1..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

protocol BlueProtocol {
    func changeBackgroundColor()
}

class BlueViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
//    var labelText:String?
    var delegate:BlueProtocol? // View Controllor 또는 Protocol명을 쓸 수 있다.
    var changeColorFunc:((UIColor)->())? // changeColorFunc는 function Type이고, UIColor를 수신
    
    @IBAction func changeColorNoti(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("changecolor", object: UIColor.brownColor())
    }
    
    @IBAction func changeColorFunc(sender: AnyObject) {
        changeColorFunc?(UIColor.redColor())
    }
    
    @IBAction func changeColor(sender: AnyObject) {
        delegate?.changeBackgroundColor()
    }
    
    @IBAction func changeValue(sender: AnyObject) {
        let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate
        
        appDelegate?.stations?[0] = "강남"
    }
    
    @IBAction func goHome(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        if let myText = labelText {
//            myLabel.text = myText
//        }
        
        let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate
        // UIApplication Instance -> delegate(AppDelegate) 를 가져옴
        if let station = appDelegate?.stations {
            myLabel.text = station[2]
        }
        
//        if let st = station {
//            myLabel.text = st
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
