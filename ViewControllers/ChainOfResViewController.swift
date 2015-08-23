//
//  ChainOfResViewController.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/23.
//  Copyright © 2015年 zmj. All rights reserved.
//

import UIKit

class ChainOfResViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let jiao = Money(moneyKind:MoneyKind.jiao, nextMoney: nil)
        let yuan = Money(moneyKind:MoneyKind.yuan, nextMoney: jiao)
        let halfTen = Money(moneyKind:MoneyKind.halfTen, nextMoney: yuan)
        let ten = Money(moneyKind:MoneyKind.ten, nextMoney: halfTen)
        let twenty = Money(moneyKind: MoneyKind.twenty, nextMoney: ten)
        let fifty = Money(moneyKind: MoneyKind.fifty, nextMoney: twenty)
        let hundred = Money(moneyKind: MoneyKind.hundred, nextMoney: fifty)
        
        hundred.totalMoney = 2015.8
        
        hundred.exchange()
        
        self.label?.text = "见输出"
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
