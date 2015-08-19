//
//  BuilderViewController.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/20.
//  Copyright © 2015年 zmj. All rights reserved.
//

import UIKit

class BuilderViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let iPhone5sBuilder = TCiPhoneBuilder{builder in
            
            builder.name = "iPhone5s"
            builder.size = CGSizeMake(720, 1136)
            builder.color = UIColor.yellowColor()
            builder.place = "中国"
            builder.price = 5000
        }
        
        let iPhone5s = TCiPhone(builder: iPhone5sBuilder)
        
        
        let iPhone6 = TCiPhone.create{builder in
            
            builder.name = "iPhone6"
            builder.size = CGSizeMake(750, 1280)
            builder.color = UIColor.yellowColor()
            builder.place = "中国"
            builder.price = 6000

        }
        
        self.label!.text = "iPhone5s.price = \(iPhone5s.price) && iPhone6.price = \(iPhone6.price)"
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
