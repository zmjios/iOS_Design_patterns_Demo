//
//  NSObject_extensions.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/19.
//  Copyright © 2015年 zmj. All rights reserved.
//

import Foundation


extension NSObject{
    
    class func SwiftClassFromString(className: String) -> AnyClass! {
        if let appName: String? = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleName") as! String? {
            let fAppName = appName!.stringByReplacingOccurrencesOfString(" ", withString: "_", options: NSStringCompareOptions.LiteralSearch, range: nil)
            return NSClassFromString("\(fAppName).\(className)")
        }
        return nil;
    }
}
