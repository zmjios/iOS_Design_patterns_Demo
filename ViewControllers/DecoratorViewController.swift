//
//  DecoratorViewController.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/23.
//  Copyright © 2015年 zmj. All rights reserved.
//

import UIKit

class DecoratorViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let text = "hello Swift"
        
        if text.containsIgnoreCase("swift"){
            self.label!.text = "I love Swift"
        }
        
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
