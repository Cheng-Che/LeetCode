//
//  ClimbingStairs.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/7/27.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class ClimbStairs {
    func climbStairs(_ n: Int) -> Int {
        var res = 0
        var n1 = 3
        var n2 = 2
        if n <= 3{
            res = n
        }else{
            res = 5
            for _ in 3..<n{
                res = n1 + n2
                n2 = n1
                n1 = res
            }
        }
        return res
    }
}

 // return n <= 3 ? n : climbStairs(n-1) + climbStairs(n-2)  Time Limited

