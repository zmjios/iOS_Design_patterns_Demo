//
//  CalculateFactory.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/19.
//  Copyright © 2015年 zmj. All rights reserved.
//

import Foundation

class CalculateBaseObj:CalculateProtocol {
    var num1:Float = 10.0
    var num2:Float = 10.0
    
    enum CalculateType{
        case Add
        case Minus
        case Multiply
        case Divied
    }
    
    func calculate() -> Float {
        assert(false)
    }
    
    class func calculateBy(type:CalculateType) ->CalculateBaseObj? {
        
        var obj:CalculateBaseObj?
        switch(type)
        {
            case .Add:
                obj =  CalculateAdd()
            case .Minus:
                obj = CalculateMinus()
            case  .Multiply:
                obj = CalculateMultiply()
            case  .Divied:
                obj = CalculateDivied()
        }
        
        return obj
    }

}

class CalculateAdd:CalculateBaseObj {
    
    override func calculate() -> Float {
        return self.num1 + self.num2
    }
}


class CalculateMinus:CalculateBaseObj{
    
    override func calculate() -> Float {
        return self.num1 - self.num2
    }
}

class CalculateMultiply:CalculateBaseObj {
    override func calculate() -> Float {
        return self.num1 * self.num2
    }
}


class CalculateDivied:CalculateBaseObj {
    override func calculate() -> Float {
        if(self.num2 == 0)
        {
            assert(false)
        }
        
        return self.num1/self.num2
    }
}
