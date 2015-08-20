//
//  BridgeViewController.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/21.
//  Copyright © 2015年 zmj. All rights reserved.
//

import UIKit

class BridgeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let qq = QQ()
        let wechat = Wechat()
        let iphone = iPhone(soft: qq)
        let sum = Sumsung(soft: qq)

        
        let playQQIniPhone = iphone.playSoft()
        let playQQInSum = sum.playSoft()
        let playWechatIniPhone = iPhone(soft: wechat).playSoft()
        
        self.label?.text = "playQQIniPhone = \(playQQIniPhone) \n\rplayQQInSum = \(playQQInSum)\n\r playWechatIniPhone = \(playWechatIniPhone)"
        
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
