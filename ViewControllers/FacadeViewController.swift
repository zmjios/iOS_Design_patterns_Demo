//
//  FacadeViewController.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/23.
//  Copyright © 2015年 zmj. All rights reserved.
//

import UIKit

class FacadeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        shapMaker.drawCircleAndRectanle()
        shapMaker.drawDotAndLine()
        shapMaker.drawLineAndRectanle()
        
        self.label!.text = "外观模式请看代码和调试窗口打印日志"
        
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
