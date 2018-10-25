//
//  BaseballGame.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/20.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class BaseballGame {
    func calPoints(_ ops: [String]) -> Int {
        var newArray = ops
        var result = 0
        var i = 0
        while i+1 < newArray.count{
            if newArray[i+1] == "C"{
                newArray.remove(at: i+1)
                newArray.remove(at: i)
                i-=2
            }else if newArray[i+1] == "D"{
                newArray[i+1] = "\(Int(newArray[i])! * 2)"
            }else if newArray[i+1] == "+" && i-1 >= 0{
                newArray[i+1] = "\(Int(newArray[i])! + Int(newArray[i-1])!)"
            }
            i += 1
        }
        
        for i in newArray{
            result += Int(i)!
        }
        return result
    }
}
