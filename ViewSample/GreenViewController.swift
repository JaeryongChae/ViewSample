//
//  GreenViewController.swift
//  ViewSample
//
//  Created by MF839-008 on 2016. 6. 1..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController, BlueProtocol {

    @IBOutlet weak var myLabel: UILabel!
//    var labelText:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        if let myText = labelText {
//            myLabel.text = myText
//        }
        let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate
        // UIApplication Instance -> delegate(AppDelegate) 를 가져옴
        if let station = appDelegate?.stations {
            myLabel.text = station[1]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeBackgroundColor() {
        self.view.backgroundColor = UIColor.blueColor()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let blueVC = segue.destinationViewController as? BlueViewController
        
        blueVC?.delegate = self
//        blueVC?.labelText = "합정"
        blueVC?.changeColorFunc = {  // 익명함수로 전달
//            (color:UIColor)->Void in
//            (color) in // 인자 Type 및 Return Value Type이 void이면 생략 가능
//            self.view.backgroundColor = color
             self.view.backgroundColor = $0 //인자가 하나이므로 $Idx로 처리 가능
        }
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
