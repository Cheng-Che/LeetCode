//
//  FlogJump.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/10/19.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class FrogJump {
    func canCross(_ stones: [Int]) -> Bool {
        var jump:[Int:Set<Int>] = [0:[1], 1:[1,2]]
        for i in 0..<stones.count{
            if jump[stones[i]] == nil{
                continue
            }
            let steps = jump[stones[i]]!
            for step in steps{
                if stones[i] + step == stones.last{
                    return true
                }
                jump[stones[i]+step] = jump[stones[i]+step] ?? [step]
                if step-1 > 0{
                    jump[stones[i]+step]?.insert(step-1)
                }
                jump[stones[i]+step]?.insert(step)
                jump[stones[i]+step]?.insert(step+1)
                
            }
        }
        return false
    }
}

        
    

