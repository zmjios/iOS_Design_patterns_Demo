//
//  CommandExmaple.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/23.
//  Copyright © 2015年 zmj. All rights reserved.
//

import Foundation

class Light {
    
    func turnOn(){
        print("the light is on")
    }
    

    func turnOff(){
        
        print("the light is off")
    }
}


class LightSwitch {
    var queue:Array<(Light) ->()> = []
    
    func addCommand(command:(Light)->()){
        queue.append(command)
    }
    
    
    func execute(light:Light){
        for command in queue{
            command(light)
        }
    }
    
}


class Client {
    
    static func pressSwitch() {
        
        let lamp = Light()
        
        let flipUp = { (light: Light) -> () in light.turnOn() }
        let flipDown = { (light: Light) -> () in light.turnOff() }
        
        let lightSwitchFP = LightSwitch()
        lightSwitchFP.addCommand(flipUp)
        lightSwitchFP.addCommand(flipDown)
        lightSwitchFP.addCommand(flipUp)
        lightSwitchFP.addCommand(flipDown)
        lightSwitchFP.execute(lamp)
    }

}
