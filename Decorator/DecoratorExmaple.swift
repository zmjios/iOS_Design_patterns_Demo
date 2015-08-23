//
//  DecoratorExmaple.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/23.
//  Copyright © 2015年 zmj. All rights reserved.
//

import Foundation


extension String {
    func contains(other: String) -> Bool{
        
        if self.rangeOfString(other) != nil{
            return true
        }
        
        return false
    }
    
    func containsIgnoreCase(other: String) -> Bool{
        
        if self.lowercaseString.rangeOfString(other) != nil{
            return true
        }
        
        return false
    }
}



