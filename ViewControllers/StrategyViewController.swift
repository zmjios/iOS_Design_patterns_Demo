//
//  StrategyViewController.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/23.
//  Copyright © 2015年 zmj. All rights reserved.
//

import UIKit

class StrategyViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let qq:qqShare = qqShare()
        let qqsuccess =  qq.shareInfo("i love swift", image:nil)
        
        
        let facebook:FaceBookShare = FaceBookShare()
        let facebooksuccess = facebook.shareInfo("i love swift", image: nil)
        
        let text1:String = qqsuccess ? "QQ 分享成功":"QQ 分享失败"
        let text2:String = facebooksuccess ? "facebook 分享成功":"facebook 分享失败"
        
        self.label?.text = (text1 + text2)
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
