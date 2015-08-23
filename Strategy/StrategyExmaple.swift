//
//  StrategyExmaple.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/23.
//  Copyright © 2015年 zmj. All rights reserved.
//

import Foundation
import UIKit


enum ShareType{
    case shareQQ
    case shareWechat
    case shareWeibo
    case shareFacebook
    case shareTwitter
}

protocol ShareProtocol{
    
    func isInstalledSoft()->Bool
    func shareInfo(text:String?,image:UIImage?)->Bool
    
}

class qqShare: ShareProtocol {
    func shareInfo(text: String?, image: UIImage?) -> Bool {
        //不同的算法可能有差异.，例如qq的text和image可以为空
        
        if  !self.isInstalledSoft() || !self.isHaveRegisterAppId(){
            return false
        }
        
        return true
    }
    
    func isInstalledSoft() -> Bool {
        return MyClient.HaveInstalledApp(ShareType.shareQQ)
    }
    
    func isHaveRegisterAppId()->Bool{
        
        return true
    }
}


class FaceBookShare: ShareProtocol {
    
    func shareInfo(text: String?, image: UIImage?) -> Bool {
        if  !self.isInstalledSoft() || !self.isHaveRegisterAppId(){
            return false
        }
        
        if text == nil || image == nil{
            
            print("分享的图片或消息不能够为空")
            return false
        }
        
        return true
    }
    
    
    func isInstalledSoft() -> Bool {
        return MyClient.HaveInstalledApp(ShareType.shareFacebook)
    }
    
    func isHaveRegisterAppId()->Bool{
        
        return true
    }
}


class MyClient {
    
    class func HaveInstalledApp(type:ShareType)->Bool{
        
        var have:Bool = false
        switch type{
        case .shareQQ:
            have = true
        case .shareWechat:
            have = true
        case .shareWeibo:
            have = true
        case .shareTwitter:
            have = false
        case .shareFacebook:
            have = false
        }
        
        return have
    }
    
    
}
