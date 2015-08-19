//
//  TCiPhoneBuilder.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/19.
//  Copyright © 2015年 zmj. All rights reserved.
//

import Foundation
import UIKit


class TCiPhoneBuilder {
    
    var name:String?
    var size:CGSize?
    var color:UIColor?
    var place:String?
    var price:Float?
    
    typealias block = (TCiPhoneBuilder) -> ()
    
    init(buildClosure: block) {
        
        buildClosure(self)
    }
    
    func build()->TCiPhone{
        // 可以在这里对 property 做检查
        let iPhone6 = TCiPhone(builder: self)
        
        return iPhone6;
    }
    
    
}

class TCiPhone {
    var name:String?
    var size:CGSize?
    var color:UIColor?
    var place:String?
    var price:Float?
    
    
    init(builder:TCiPhoneBuilder){
        
        self.name = builder.name
        self.size = builder.size
        self.color = builder.color
        self.place = builder.place
        self.price = builder.price
    }
    
    class func create(builderBlock:(TCiPhoneBuilder) -> ())->TCiPhone {
        
        let builder:TCiPhoneBuilder = TCiPhoneBuilder(buildClosure: builderBlock)
        
        return builder.build();
    }
}
