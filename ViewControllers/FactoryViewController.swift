//
//  FactoryViewController.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/19.
//  Copyright © 2015年 zmj. All rights reserved.
//

import UIKit

class FactoryViewController: BaseViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
        let add = CalculateBaseObj.calculateBy(.Add)
        let minus = CalculateBaseObj.calculateBy(.Minus)
        let multiply = CalculateBaseObj.calculateBy(.Multiply)
        let divied = CalculateBaseObj.calculateBy(.Divied)
        
        let result1 = add!.calculate()
        let result2 = minus!.calculate()
        let result3 = multiply!.calculate()
        let result4 = divied!.calculate()
        
        self.label?.text = " result1 = \(result1) \n result2 = \(result2) \n result3 = \(result3) \n result4 = \(result4)"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}
