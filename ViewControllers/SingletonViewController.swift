//
//  SingletonViewController.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/19.
//  Copyright © 2015年 zmj. All rights reserved.
//

import UIKit

class SingletonViewController: BaseViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let request1 = SwiftRequest.sharedInstance
        
        let request2 = SwiftRequest.sharedInstance
        
        let log1 = request1.requestBeginLog()
        let log2 = request2.requestBeginLog()
        
        self.label?.text = " log1 = \(log1) \n log2 = \(log2) \n"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
