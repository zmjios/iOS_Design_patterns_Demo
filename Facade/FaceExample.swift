//
//  FaceExample.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/23.
//  Copyright © 2015年 zmj. All rights reserved.
//

import Foundation


protocol drawProtocal{
    
    func draw()->Void
}

class cirlce:drawProtocal{
    
    func draw() {
        print("draw circle")
    }
}


class rectangle:drawProtocal {
    func draw(){
        
        print("draw rectangle")
    }
}

class line:drawProtocal {
    func draw() {
        print("draw line")
    }
}

class dot:drawProtocal {
    func draw() {
        print("draw dot")
    }
}

class shapMaker {
    
    class func drawLineAndRectanle() {
        
        print("---------begin drawLineAndRectanle-------------\n")
        
        let myline = line()
        let myrect = rectangle()
        
        myline.draw()
        myrect.draw()
        
        
         print("---------end drawLineAndRectanle-------------\n")
    }
    
    
    class func drawCircleAndRectanle(){
        
         print("---------begin drawCircleAndRectanle-------------\n")
        
        let mycircle = cirlce()
        let myrect = rectangle()
        
        mycircle.draw()
        myrect.draw()
        
        print("---------end drawCircleAndRectanle-------------\n")
    }
    
    
    class func drawDotAndLine() {
        
        print("---------begin drawDotAndLine-------------\n")
        
        let mydot = dot()
        let myline = line()
        
        mydot.draw()
        myline.draw()
        
        print("---------end drawDotAndLine-------------\n")
    }
    
}
