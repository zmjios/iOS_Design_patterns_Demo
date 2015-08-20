//
//  AdapterViewController.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/21.
//  Copyright © 2015年 zmj. All rights reserved.
//

import UIKit

class AdapterViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        let target1:target = target()
        let request:String = target1.request()
        
        let adaptee:specialTarget = specialTarget()
        let target2:adapter = adapter(adaptee: adaptee)
        let specialRequest:String = target2.request()
        
        
        self.label!.text = "request = \(request) \n\rspecialRequest = \(specialRequest)"
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
