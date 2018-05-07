//
//  NumRabbits.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/4/23.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class NumRabbits {
    func numRabbits(_ answers: [Int]) -> Int {
        var rabbitSet : [Int:Int] = [:]
        var res = 0
        for i in answers{
            rabbitSet[i] = (rabbitSet[i] ?? 0) + 1
        }
        
        for key in rabbitSet.keys{
            res += helper(key: key, num: rabbitSet[key]!) * (key + 1)
        }
        return res
    }
    
    func helper(key:Int, num:Int) -> Int{
        var count = 0
        var num = num
        while num > 0 {
            num -= key+1
            count += 1
        }
        return count
    }
}
