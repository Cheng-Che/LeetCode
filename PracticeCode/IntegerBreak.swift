//
//  IntegerBreak.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/16.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class IntegerBreak {
    func integerBreak(_ n: Int) -> Int {
        var input = n
        var ans = 1
        while input-3 >= 2{
            input -= 3
            ans *= 3
        }
        ans *= input
        return (n<=3) ? n-1 : ans
    }
}
