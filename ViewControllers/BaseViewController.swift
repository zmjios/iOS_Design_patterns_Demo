//
//  BaseViewController.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/19.
//  Copyright © 2015年 zmj. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var label:UILabel?
    var naviTitle:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationItem.title = self.naviTitle
        
        self.label = UILabel(frame: CGRectMake(100, 100, UIScreen.mainScreen().bounds.size.width - 200, 200))
        self.view.addSubview(self.label!)
        self.label?.numberOfLines = 0

        // Do any additional setup after loading the view.
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
