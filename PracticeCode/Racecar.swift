//
//  Racecar.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/10/11.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class Racecar {
    func racecar(_ target: Int) -> Int {
        print(helper(target: 20, lastNum: 0, n: 0))
        return 1
    }
    
    func helper(target:Double, lastNum:Double, n:Int) -> Int{
        if target - (lastNum + pow(lastNum, 2)) < 0{
            return Int(target)
        }
        var temp = target
        temp = temp - (lastNum + pow(lastNum, 2) )
        return helper(target: temp, lastNum: lastNum + pow(lastNum, 2),n: n+1)
    }
}
