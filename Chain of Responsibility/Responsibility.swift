//
//  Responsibility.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/23.
//  Copyright © 2015年 zmj. All rights reserved.
//

import Foundation

enum MoneyKind:Int{
    
    case jiao = 1
    case yuan = 10
    case halfTen = 50
    case ten = 100
    case twenty = 200
    case fifty = 500
    case hundred = 1000
}

class Money {
    private var realMoney:Float?
    internal var totalMoney:Float?{
        
        didSet{
            realMoney = totalMoney!*10
        }
    }
    
    var nextMoney:Money?
    var kind:MoneyKind?
    
    init(moneyKind:MoneyKind,nextMoney:Money?){
        self.kind = moneyKind
        self.nextMoney = nextMoney
    }
    
    
    func exchange(){
        
        if let next = self.nextMoney {
            let nextTotal = self.realMoney! % Float(self.kind!.rawValue)
            next.totalMoney = nextTotal / Float(10)
            next.exchange()
            let number = Int( self.realMoney!) / self.kind!.rawValue
            print("币种 \(self.kind!.rawValue/10) 个数\(number)")
        }else{
            print("币种  \(self.kind!.rawValue) 角 个数 \(Int(self.totalMoney!*10))")
        }
    }
}



