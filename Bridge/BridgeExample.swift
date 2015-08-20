//
//  BridgeExample.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/21.
//  Copyright © 2015年 zmj. All rights reserved.
//

import Foundation


protocol PhoneProtocol{
    
    var phoneName:String{get set}
    
    func playSoft()->String
}

protocol SoftProtocol{
    
    var softName:String{get set}
    
    func play()->String
}


class iPhone:PhoneProtocol {
    
    var phoneName = "iPhone"
    
    var playingSoft:SoftProtocol
    
    init(soft:SoftProtocol){
        self.playingSoft = soft
    }
    
    func playSoft() -> String {
        
       let str = " 在 \(phoneName) 上"
        
        return str + self.playingSoft.play()
    }
    
}

class Sumsung {
    
    var phoneName = "Sumsung"
    
    var playingSoft:SoftProtocol
    
    init(soft:SoftProtocol){
        self.playingSoft = soft
    }
    
    func playSoft() -> String {
        
        let str = " 在 \(phoneName) 上"
        
        return str + self.playingSoft.play()
    }
}


class Wechat:SoftProtocol {
    
    var softName = "Wechat"
   
    
    func play() -> String {
        
        print("打开微信玩。。。")
        
        return "打开微信玩。。。"
    }
}


class QQ:SoftProtocol {
    var softName  = "QQ"
    func play() -> String {
        print("打开QQ玩。。。")
        
        return "打开QQ玩。。。"
    }
}



