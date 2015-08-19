//
//  SwiftRequest.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/19.
//  Copyright © 2015年 zmj. All rights reserved.
//

import Foundation

class SwiftRequest {
    
    static let sharedInstance = SwiftRequest()
    private init() {} // 这就阻止其他对象使用这个类的默认的'()'初始化方法
    
    func requestBeginLog()->String{
        let str = "\(self) begin request"
        return str
    }
}
