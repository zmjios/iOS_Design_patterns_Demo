//
//  AdapterExample.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/21.
//  Copyright © 2015年 zmj. All rights reserved.
//

import Foundation


protocol requestprotocol{
    
    func request()->String
}


class target:requestprotocol {
    func request() -> String {
        return "this is a normal request"
    }
}

class specialTarget {
    func speicalRequest()->String
    {
        return "this is a special request"
    }
}

class adapter:target {
    var adptee:specialTarget
    
    init(adaptee:specialTarget)
    {
        self.adptee = adaptee
    }
    
    override func request() -> String {
        return self.adptee.speicalRequest()
    }
}
